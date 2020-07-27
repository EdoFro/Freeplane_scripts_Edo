// @ExecutionModes({ON_SELECTED_NODE="/main_menu/ScriptsEdo/GroovyTempScript"})


// this script opens files or nodes notes in Notepad++

/* script's logic:
	- it works on selected node(s)
(1) - if node has a link to a file and its extension is 'listed as accepted' by the user --> opens file in Notepad ++
	else
(2) - if the node has a note
		- if the note begins with "//."	-->  the first word after that is the extension of the temp file to createChild
			else extension ='txt'
		- if the extension == 'groovy' --> 	- tempfile should be created in scripts folder
											- add a first line to the text indicating ExecutionModes
		- take the note text and create (or overwrite) the tempfile appending the extension to the file's name
		- open it in Notepad ++
	else
(3) (case node has no link or a note) (**)
	- add a child to the node
	- take the text of the last saved tempFile.groovy and put it in the new node's note (without the first line where the executionmode is indicated)


(**) I did it this way to not accidentaly overwrite a note that has a script with an other text. This way I can edit the script in N++ and load the last version as a new child.

*/
attributeForExtensions = 'OWN_ext'

mapFolders = [
	xDefault : 'C:/Temp/'
]
mapFolders['groovy'] = c.userDirectory.path + '\\scripts\\'

fileName = 'tempOWNfile'

//def fileAddressTemp = "C:/Temp/notaTemp." //file name and path (but without extension) where temp files are going to be saved. this directory must exist (in my case 'C:/Temp/').
//def fileAddressScript = c.userDirectory.path + '\\scripts\\groovyTemp.' //file name and path (but without extension) where GROOVY SCRIPTS temp files are going to be saved (a place where Freeplane can "see it")


def addressNpp = 'C:\\Program Files\\Notepad++\\notepad++.exe' // there is Notepad++ executable instaled
def acceptedFileExtensions = ['groovy', 'sql', 'txt', 'ini', 'cfg'] // list of file extension I decided that can be opened with Notepad ++ (it is only to avoid opening pdf or excel files in N++ accidentally)



if (node.link || node.note){
	def myUri = node.link.uri
	if(myUri != null && myUri.scheme == 'file' && extensionFromFilePath(myUri.path) in acceptedFileExtensions) //is it a link to a text file?
	{
		def cmd = [addressNpp, myUri.path.drop(1)]
		def proc = cmd.execute()
		c.statusInfo = " ---> opening file in Notepad++"
	} 
	else if (node.note) // does node have a note?
	{
		//getExtension:
		def ext = extensionFromNode(node)
		def texto = node.note
		if(!ext){
			ext = 'txt' //default extension is 'txt'
			// get defined extension if it exist //this is only for backwards compability with my own maps. Eventually will be dismissed:
			if( texto.take(3)== '//.' ) {
				def regx = "(?<=\\/\\/\\.).*?(?=(\\s|\\/\\/))"
				ext = (texto =~ regx)
				while (ext[0].size()>1) {ext = ext[0]}
				ext = ext.toString()
			}
			if( texto.take(3)== '--.' ) {
				def regx = "(?<=--\\.).*?(?=(\\s|\\/\\/))"
				ext = (texto =~ regx)
				while (ext[0].size()>1) {ext = ext[0]}
				ext = ext.toString()
			}
		}
		ext = ext.toString().toLowerCase()
		setExtension(node, ext)
		
		// is it a groovy type note? --> save it in scripts folder and add ExecutionModes line
		if(ext =='groovy'){
			texto = '// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/GroovyTempScript"})\n\n' + texto
		}

		fileAddress = getFolderAndName(ext) + ext
		File myFile = new File(fileAddress)
		myFile.text = texto

		def cmd = [addressNpp, fileAddress]
		def proc = cmd.execute()
		c.statusInfo = " ---> opening Note in Notepad++"
	} else {
		c.statusInfo = " ---> nothing to open in Notepad++"
	}
} else {
	def ext = extensionFromNode(node)?:'txt'
	File myFile = new File(getFolderAndName(ext) + ext)
	if (!myFile.exists()){
		myFile.text='/* no previous file in drive */'
	}
	def texto = myFile.text
	if(ext == 'groovy'){
		i=texto.indexOf('\n')+1
		texto = texto.drop(i)
	}
	def nhijo = node.createChild('Temp Script')
	nhijo.noteText = texto
	setExtension(nhijo, ext)
	c.select(nhijo)
	c.statusInfo = "script copied into node's note"
}

def getFolderAndName(txt){
	return (mapFolders[txt]?:mapFolders.xDefault) + fileName + '.'
}

def extensionFromFilePath(filepath){
    return filepath.reverse().split("\\.")[0].reverse().toLowerCase()
}

def extensionFromNode(n){
	extensionFromAttribute(n)?:extensionFromDetails(n)?:extensionFromText(n)?:null
}
def extensionFromAttribute(n){
	n[attributeForExtensions]?:null
}
def extensionFromDetails(n){
	n.details?[0]=='.'?n.details.drop(1).takeBefore(' ').takeBefore('\n')?:n.details.drop(1).takeBefore('\n')?:n.details.drop(1).takeBefore(' ')?:n.details.drop(1):null
}
def extensionFromText(n){
	n.text.reverse().takeBefore('.').reverse()
}

def setExtension(n, ext){
	// If it's allready defined --> do nothing
	if(extensionFromAttribute(n)==ext || extensionFromDetails(n)==ext) return
	//I prefer it in this order:
		// only details
		// if details are beeing Used --> attribute	
	if(!n.details){
		n.details = '.' + ext
	} else {
		n[attributeForExtensions] = ext
	}
}
