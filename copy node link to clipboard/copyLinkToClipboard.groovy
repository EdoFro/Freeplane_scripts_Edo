// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/Edit"})

/*
script para copiar texto de link a file 
 - para poder pegarlo en formularios "Abrir" o "navegador de carpetas"

Script to easy copy the link to a file of a node into the clipboard to paste it in other program
 -for example to paste it into an "Open file" form from an other program
*/


def texto // defining variable texto 

/* forma anterior
texto = node.link.text.replace('%20',' ')
*/
texto = node.link.text //obtaining the link text from the selected node
texto = URLDecoder.decode(texto) // decoding it to be "windows readable"
/* forma anterior (other way I used before. didn't notice any diference)
texto = node.link.text.replace('%20',' ')
*/

//looks if the text satarts with 'file:/'
if (texto[0..5]=='file:/'){
    texto = texto.drop(6).replace('/','\\') //replaces slashes with backslashes
}

// ui.informationMessage('b ' + texto)

textUtils.copyToClipboard(texto) // copying to clipboard

c.statusInfo = 'link copied to the clipboard' // info in bottom bar of Freeplane's window
