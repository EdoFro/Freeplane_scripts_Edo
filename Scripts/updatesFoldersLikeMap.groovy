// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/OrganizarMapa"})


def nodo = node

// correctFolderName(nodo)
// ui.informationMessage(correctFolderName(nodo))

baseFolderNode = obtainBaseFolder(nodo)
baseFolderPath = linkPath(baseFolderNode)

// ui.informationMessage(isPositionOK(nodo).toString())
// ui.informationMessage(hasCloneWhithPositionOK(nodo).toString())

def fileList = baseFolderNode.find{it.link.text && isLinkToFile(it.link.text) && !it.hasStyle('file_folder')}
def folderList = baseFolderNode.find{it.hasStyle('file_folder')}.reverse()


ui.informationMessage(" checking ${fileList.size().toString()} files amd ${folderList.size().toString()} folders in: \n\n ${baseFolderPath} \n\n\n")

moveFiles(fileList)
//moveFiles(nodo)
updateFolders(folderList)

//*

def moveFiles(files){
	def notMoved = 0
	def moved = 0
	def unexistent = 0
	def updated = 0
	files.each{ n ->
		switch(moveThisFile(n)) {
			case 'notMoved':
				notMoved++
				break
			case 'moved':
			 moved++
				break
			case 'noExiste':
				unexistent++
				break
			case 'updated':
				updated++
				break
		}
	}
	def Texto=""
	if(moved>0){Texto = Texto << "${moved} files were moved \n"}
	if(notMoved>0){Texto = Texto << "${notMoved} files didn't need to be moved \n"}
	if(updated>0){Texto = Texto << "${updated} files didn't need to be moved but their links were corrected \n"}
	if(unexistent>0){Texto = Texto << "${unexistent} files coudn't be found \n"}
	//Texto = Texto << "Posible diferencia por nodos clones \n"
	ui.informationMessage(Texto.toString())
}
/* */

//*
def updateFolders(files){
	def notMoved = 0
	def unexistent = 0
	def deleted = 0
	def keeped = 0
	def created = 0
	files.each{ n ->
		switch(updateThisFolder(n)) {
			case 'notMoved':
				notMoved++
				break
			case 'noExiste':
				unexistent++
				break
			case 'previousDeleted':
				deleted++
				break
			case 'previousKeeped':
				keeped++
				break
			case 'new':
				created++
				break
		}
	}
	def Texto=""
	if(created>0){Texto = Texto << "${created} new folders created \n"}
	if(notMoved>0){Texto = Texto << "${notMoved} folders didn't need to be moved \n"}
	if(deleted>0){Texto = Texto << "${deleted} folders were created in new position and deleted in old one \n"}
	if(keeped>0){Texto = Texto << "${keeped} folders were created in new position and keeped in old one because they were not empty \n"}
	if(unexistent>0){Texto = Texto << "${unexistent} folders were not found \n"}
	ui.informationMessage(Texto.toString())
}
/* */

//*
def updateThisFolder(nodo) {
	def newFullPath = obtainPath(nodo).toString()
	if(nodo.link.text){
		def previousFullPath = linkPath(nodo)		//Toma nombre Inicial "previousFullPath" de link actual del nodo
		if (previousFullPath != newFullPath)		// �ruta y nombre nuevo y antiguo son diferentes?
		{ 
			// ui.informationMessage('Nombre inicial: ' + previousFullPath.toString())
			// ui.informationMessage('Nombre final: ' + newFullPath)
			nodo.link.text = linkEncod(newFullPath) // cambiarle a nuevo link
			def file = new File(previousFullPath)
			if (file.isDirectory()) 		//	�existe en el lugar que indica su link (y es folderName)?
			{ 
				if(isDirEmpty(previousFullPath)) // revisar si directorio est� vac�o
				{
					file.delete() //eliminar folderName en disco
					return 'previousDeleted'
				} else {
					return 'previousKeeped'				
				}
			} else {
				return 'noExiste'
			}
		} else { 
			return 'notMoved'
		}
	}else {	// si no tiene link --> ponerle link
		nodo.link.text = linkEncod(newFullPath)
		if(nodo.style.name=='file_folder'){
			nodo.style.name = null
		}
		return 'new'
	}
}

/* */

//*

def moveThisFile(nodo) {
	def previousFullPath = linkPath(nodo)		//Toma nombre Inicial "previousFullPath" de link actual del nodo
	
	// dos opciones para definir el nuevo nombre del archivo:
	// def nombre = previousFullPath.reverse().takeBefore('/').reverse() // 1. mantiene nombre seg�n link
	def nombre = nodo.text // 2. toma nombre del texto del nodo. as� le podr�a cambiar de nombre tambi�n

	// armar path de estructura de rama
	def path = obtainPath(nodo)
	def newFullPath = path + nombre

	def file = new File(previousFullPath)
	if (file.isFile()) 		//	�existe en el lugar que indica su link (y no es folderName)?
	{
		if (previousFullPath != newFullPath)		// �ruta y nombre nuevo y antiguo son diferentes?
		{
			if(!hasCloneWhithPositionOK(nodo)){			
				createPath(path.toString())
				// TODO: agregar try catch???
				// ui.informationMessage('Nombre inicial: ' + previousFullPath)
				// ui.informationMessage('Nombre final: ' + newFullPath)
				file.renameTo( new File(newFullPath) )
				nodo.link.text = linkEncod(newFullPath)  // cambia link del nodo para que apunte a nueva ubicaci�n
				// ui.informationMessage( "el archivo ${file.name} fue reubicado")
				if(nodo.icons.contains('messagebox_warning')){nodo.icons.remove('messagebox_warning')}
				return 'moved'
			} else {
				if(nodo.icons.contains('messagebox_warning')){nodo.icons.remove('messagebox_warning')}			
			}
		} else {
		//ui.informationMessage( "el archivo ${file.name} no necesit� ser movido")
		if(nodo.icons.contains('messagebox_warning')){nodo.icons.remove('messagebox_warning')}
		return 'notMoved'
		}
	} else {
		file = new File(newFullPath)
		if (file.isFile()) 		//	�existe ya en el lugar donde lo iba a mover (y no es folderName)?
		{
			nodo.link.text = linkEncod(newFullPath)  // cambia link del nodo para que apunte a nueva ubicaci�n
			if(nodo.icons.contains('messagebox_warning')){nodo.icons.remove('messagebox_warning')}
			return 'updated'
		} else {
			ui.informationMessage( "the file ${previousFullPath} doesn't exist")
			if(!nodo.icons.contains('messagebox_warning')){nodo.icons.add('messagebox_warning')}
			return 'noExiste'
		}
	}
}

def hasCloneWhithPositionOK(n){
	return n.countNodesSharingContent>0 && n.nodesSharingContent.any{h -> linkPath(h) == (obtainPath(h) + h.text) }
}

def isPositionOK(h){
	return linkPath(h) == (obtainPath(h) + h.text)
}

/* */

def linkEncod(texto){
	return 'file:/' << texto.replace(' ','%20')
}

/* */
def linkPath(n) {
	def texto = n.link.text
	if(texto){
		texto = URLDecoder.decode(texto)
		if (isLinkToFile(texto)){
			texto = texto.drop(6) //.replace('/','\\')
		}
	} else {
	texto = ''
	}
	return texto.toString()
}

def isLinkToFile(t){
	def txt = t.toString()
	return txt.size()>6 && txt[0..5]=='file:/'
}

def obtainPath(n) {
	def texto ='' // = n.text
	while(!n.equals(baseFolderNode)){
		if(n.hasStyle('file_folder')){
			texto = correctFolderName(n) << '/' << texto
		}
		n = n.parent
	}
	texto = baseFolderPath << texto
	return texto.toString()
}

def correctFolderName(n){
	def texto = n.text.trim().replace('/','-').replace('\\','-').replace('.','-')
	n.text = texto
	return texto.toString()
}

def obtainBaseFolder(n) {
	return n.pathToRoot.find{it.icons.contains('bookmark')}
}

def createPath(String p) {
	def folders = p.split('/')
	def path =''
	folders.each{ String f ->
		path = path << f  << '/'
		createFolder(path.toString())
	}	
}

def createFolder(String folderName) {
	def folder = new File(folderName)
	if (!folder.isDirectory()){
		folder.mkdir()
	}
}

def isDirEmpty(dirName) {
    def dir = new File(dirName)
    dir.exists() && dir.directory && (dir.list() as List).empty
}

/* */
//ui.informationMessage( newFullPath)


