// @ExecutionModes({ON_SELECTED_NODE="/main_menu/ScriptsEdo/GroovyTempScript"})

attributeForExtensions = 'OWN_ext'
mapFolders = [
	xDefault : 'C:/Temp/'
]
mapFolders['groovy'] = c.userDirectory.path + '\\scripts\\'
fileName = 'myTempFile'


def ext = extensionFromNode(node)
if(ext){
	if(!node.note || (node.note && ui.showConfirmDialog(null, "Replace current node's note?", "import text from ${ext} file", 2, 2)==0)){
		File myFile = new File(getFolderAndName(ext) + ext)
		if (!myFile.exists()){
			myFile.text='/* no previous file in drive */'
		}
		def texto = myFile.text
		if(ext == 'groovy'){
			i=texto.indexOf('\n')+1
			texto = texto.drop(i)
		}
		node.noteText = texto
		setExtension(node, ext)
		c.statusInfo = " ${ext} text copied into node's note"	
	}
}else {
	c.statusInfo = "no file extension defined in the node"
}	
	
def getFolderAndName(txt){
	return (mapFolders[txt]?:mapFolders.xDefault) + fileName + '.'
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

	