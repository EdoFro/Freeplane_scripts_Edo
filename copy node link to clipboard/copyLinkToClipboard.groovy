// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/Edit"})

/*
script para copiar texto de link a file 
 - para poder pegarlo en formularios "Abrir" o "navegador de carpetas"

Script to easy copy the link to a file of a node into the clipboard to paste it in other program
 -for example to paste it into an "Open file" form from an other program
*/


def texto // defining variable texto 

texto = getLink(node) //obtaining the link text from the selected node

if(texto!=''){
	textUtils.copyToClipboard(texto)
	c.statusInfo = 'link copied to clipboard:   ' + texto // info in bottom bar of Freeplane's window
} else {
	c.statusInfo = 'node had no link to be copied'
}

def getLink(n){
	if(n.link){
		switch (n.link.uri.scheme){
			case 'file':
				return n.link.file.path
				break
			case ~/^https?/:
				return n.link.uri.scheme + ':' + n.link.uri.schemeSpecificPart
				break
			default:
				return n.link.text
				break
		}
	} else {
		return ''
	}
}



/* My older way to get the link to a file
	//looks if the text starts with 'file:/'
	if (texto[0..5]=='file:/'){
		texto = texto.drop(6).replace('/','\\') //replaces slashes with backslashes
	}

	// ui.informationMessage('b ' + texto)

	textUtils.copyToClipboard(texto) // copying to clipboard

	c.statusInfo = 'link copied to the clipboard' // info in bottom bar of Freeplane's window
*/