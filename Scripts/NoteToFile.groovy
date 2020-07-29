// @ExecutionModes({ON_SELECTED_NODE="/main_menu/ScriptsEdo/GroovyTempScript"})

attributeForExtensions = 'OWN_ext'
mapFolders = [
	xDefault : 'C:/Temp/'
]
mapFolders['groovy'] = c.userDirectory.path + '\\scripts\\'
fileName = 'myTempFile'

def ext = extensionFromNode(node)
if (node.note && ext && ui.showConfirmDialog(null, "Overwrite temp file with node's note?", "export text to ${ext} file", 2, 2)==0) // does node have a note and defined extension?
{
	def texto = node.note
	ext = ext.toString().toLowerCase()
	setExtension(node, ext)
	// is it a groovy type note? --> save it in scripts folder and add ExecutionModes line
	if(ext =='groovy'){
		texto = '// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/GroovyTempScript"})\n\n' + texto
	}
	File myFile = new File(getFolderAndName(ext) + ext)
	myFile.text = texto
	c.statusInfo = " ---> Note text saved as temp file"
} else {
	c.statusInfo = " aborted or no Note or no extension defined in selected node"
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