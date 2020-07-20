// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/OrganizarMapa"})

/*
 conditional style for Folder 'file_folder':
 Script filter :
	{node.link?.uri?.scheme == 'file' && (node.link.file?.exists()? node.link.file.directory : node.link.uri.path?.reverse()[0] == '/')}
*/

//REVISE Y NO ES NECESARIO: utilizar función isLinkToMapNode(mylink) para que se salte ese tipo de nodos (nodos con link a nodos de otros mindmaps)
/*
TODO: tener la posibilidad de marcar nodos que no se quiera se considerne en el update:
	- por ejemplo cuando se trae el link de un archivo como referencia pero no se quiere que se cambie de su ubicación original en el disco
	-inclusive podría ser todos los nodos que estan dentro de un tipo especial de nodo
		algo así como:
		noConsiderar = baseFolderNode.find(false,true,{it.hasStyle('locked')})
		fileList = fileList - noConsiderar
*/

//region: ----------------------------------------------main script----------------------------------
def nodo = node
// ui.informationMessage(correctFolderName(nodo))
// ui.informationMessage(hasCloneWhithPositionOK(nodo).toString())

baseFolderNode = obtainBaseFolder(nodo)
// ui.informationMessage(baseFolderNode.toString())

if(baseFolderNode){
	baseFolderPath = getLink(baseFolderNode).toString()//.replace('\\','/')
	// ui.informationMessage(baseFolderPath.toString())
	def	nodesToExclude = baseFolderNode.find(false,true,{it.hasStyle('locked')})
	// ui.informationMessage(nodesToExclude.size().toString())

	def fileList = baseFolderNode.find{it.link.file && it.link.uri.scheme =='file' && !it.hasStyle('file_folder')}  - nodesToExclude
	// ui.informationMessage(fileList.size().toString())

	def folderList = baseFolderNode.find{it.hasStyle('file_folder')}.reverse()

	foldersToDelete =[]
	ui.informationMessage(" checking ${fileList.size().toString()} files amd ${folderList.size().toString()} folders in: \n\n ${baseFolderPath} \n\n\n")
	moveFiles(fileList)
	updateFolders(folderList)
} else {
	ui.informationMessage("No 'base folder' found between Rootnode and selected node")
}

// end

//region: ---------------------------------------level 01 methods/functions ------------------------------------------

//region: FILES:
// loops all the files and moves and renames them
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
	// informationMessage about files operations
	def Texto=""
	if(moved>0){Texto = Texto << "${moved} files were moved/renamed \n"}
	if(notMoved>0){Texto = Texto << "${notMoved} files didn't need to be moved \n"}
	if(updated>0){Texto = Texto << "${updated} files didn't need to be moved but their links were corrected \n"}
	if(unexistent>0){Texto = Texto << "${unexistent} files coudn't be found \n"}
	//Texto = Texto << "Posible diferencia por nodos clones \n"
	ui.informationMessage(Texto.toString())
}

//moves and renames file in the drive
def moveThisFile(nodo) {
	def previousFullPath = getLink(nodo)		//Toma nombre Inicial "previousFullPath" de link actual del nodo
	
	// dos opciones para definir el nuevo nombre del archivo:
	// def nombre = previousFullPath.reverse().takeBefore('/').reverse() // 1. mantiene nombre seg�n link
	def nombre = nodo.text // 2. toma nombre del texto del nodo. as� le podr�a cambiar de nombre tambi�n

	// armar path de estructura de rama
	def path = obtainPathFromMap(nodo)
	def newFullPath = path + nombre
	
	def file = new File(previousFullPath)
	if (file.isFile()) 		//	�existe en el lugar que indica su link (y no es folderName)?
	{
		if (previousFullPath != newFullPath)		// �ruta y nombre nuevo y antiguo son diferentes?
		{
			if(!hasCloneWhithPositionOK(nodo)){			
				createPath(path.toString())
				// TODO: agregar try catch???
				//ui.informationMessage("Nombre inicial:  ${previousFullPath} \n Nombre final  :  ${newFullPath}")
				file.renameTo( new File(newFullPath) )
				//nodo.link.text = linkEncode(newFullPath)   // cambia link del nodo para que apunte a nueva ubicaci�n
				setLinkImage(nodo, newFullPath)
				setLink(nodo, newFullPath) // cambia link del nodo para que apunte a nueva ubicaci�n
				// ui.informationMessage( "el archivo ${file.name} fue reubicado")
				if(nodo.icons.contains('broken-line')){nodo.icons.remove('broken-line')}
				return 'moved'
			} else {
				if(nodo.icons.contains('broken-line')){nodo.icons.remove('broken-line')}			
			}
		} else {
		//ui.informationMessage( "el archivo ${file.name} no necesit� ser movido")
		if(nodo.icons.contains('broken-line')){nodo.icons.remove('broken-line')}
		return 'notMoved'
		}
	} else {
		file = new File(newFullPath)
		if (file.isFile()) 		//	�existe ya en el lugar donde lo iba a mover (y no es folderName)?
		{
			// nodo.link.text = linkEncode(newFullPath)  // cambia link del nodo para que apunte a nueva ubicaci�n
			setLinkImage(nodo, newFullPath)
			setLink(nodo, newFullPath) // cambia link del nodo para que apunte a nueva ubicaci�n
			if(nodo.icons.contains('broken-line')){nodo.icons.remove('broken-line')}
			return 'updated'
		} else {
			// ui.informationMessage( "the file ${previousFullPath} doesn't exist")
			if(!nodo.icons.contains('broken-line')){nodo.icons.add('broken-line')}
			return 'noExiste'
		}
	}
}

//end

//region: FOLDERS:
// loops all the folders and update them
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
	//delete folders that couldn't be deleted before
	if (foldersToDelete.size()>0){
			if (foldersToDelete.size()>1){
				def ftdr = foldersToDelete.reverse()
				ftdr.remove(0)
				foldersToDelete.add(ftdr)
				foldersToDelete = foldersToDelete.flatten()
			}
		foldersToDelete.each{
			def a = deleteFolder(it)
			deleted += a
			keeped -= a
		}
	}
	// informationMessage about folder operations
	def Texto=""
	if(created>0){Texto = Texto << "${created} new folders created \n"}
	if(notMoved>0){Texto = Texto << "${notMoved} folders didn't need to be moved \n"}
	if(deleted>0){Texto = Texto << "${deleted} folders were created in new position and deleted in old one \n"}
	if(keeped>0){Texto = Texto << "${keeped} folders were created in new position and keeped in old one because they were not empty \n"}
	if(unexistent>0){Texto = Texto << "${unexistent} folders were not found \n"}
	ui.informationMessage(Texto.toString())
}

// updates the position of folder in the drive
def updateThisFolder(nodo) {
	def newFullPath = obtainPathFromMap(nodo).toString()
	if(nodo.link.file){
		def previousFullPath = getLink(nodo) + '\\'		//Toma nombre Inicial "previousFullPath" de link actual del nodo
		if (previousFullPath != newFullPath)		// �ruta y nombre nuevo y antiguo son diferentes?
		{ 
			// ui.informationMessage('Nombre inicial: ' + previousFullPath +'\n Nombre final : ' + newFullPath)
			// nodo.link.text = linkEncode(newFullPath)  // cambiarle a nuevo link
			setLink(nodo, newFullPath)  // cambiarle a nuevo link
			def file = new File(previousFullPath)
			if (file.isDirectory()) 		//	�existe en el lugar que indica su link (y es folderName)?
			{ 
				if(nodo.icons.contains('broken-line')){nodo.icons.remove('broken-line')}
				if (deleteFolder(previousFullPath)==1)
				{
					return 'previousDeleted'
				} else {
					foldersToDelete << previousFullPath
					return 'previousKeeped'				
				}
			} else {
				if(!nodo.icons.contains('broken-line')){nodo.icons.add('broken-line')}
				return 'noExiste'
			}
		} else { 
			if(nodo.icons.contains('broken-line')){nodo.icons.remove('broken-line')}
			return 'notMoved'
		}
	}else {	// si no tiene link --> ponerle link
		// nodo.link.text = linkEncode(newFullPath)  
		setLink(nodo, newFullPath)
		if(nodo.style.name=='file_folder'){nodo.style.name = null}
		if(nodo.icons.contains('broken-line')){nodo.icons.remove('broken-line')}
		return 'new'
	}
}

//deletes folder
def deleteFolder(folderPath){
	if(isDirEmpty(folderPath)) // revisar si directorio est� vac�o
	{
		def file = new File(folderPath)
		if(!file.delete()){
			sleep(100)
		} //eliminar folderName en disco
		return 1
	} else {
		return 0
	}
}

// end
// end

//region: -------------------------------------level 02 methods/functions -------------------------------------------------- 
//region: functions initial setup
// function, returns Node ("Base folder") under the selected node
	// the first node which has a link to a file directory and has style 'file_folder' + 'baseFolder'
def obtainBaseFolder(n) {
	return n.pathToRoot.find{it.link?.file?.directory && it.hasStyle('file_folder') && it.hasStyle('baseFolder')}
}
//end

//region: información desde nodos

// function, returns string, returns path to the file linked in the node
def getLink(n){
	if(n.link.file){
		return n.link.file.path
	} else {
		return ''
	}
}


//function, returns string, builds the new path string by looking at the position of the node in the mindmap
//it uses all the file-folder styled nodes till the base node
def obtainPathFromMap(n) {
	def texto =''
	while(!n.equals(baseFolderNode)){
		if(n.hasStyle('file_folder')){
			texto = correctFolderName(n) << '\\' << texto
		}
		n = n.parent
	}
	texto = baseFolderPath << '\\'  << texto
	return texto.toString()
}

// function Boolean - is this link a link to a node in an other map?
//it seems it is not needed, cause a node mitha a link to a node in another map has following charachteristics:
	// assert node.link.uri.scheme == 'file'
	// assert !node.link.file // --> its not selected when defining fileList 
def isLinkToMapNode(mylink){
	(mylink.uri.scheme == 'file' && mylink.uri.path?.reverse().take(3).reverse().toLowerCase() == '.mm' && mylink.uri.fragment?.take(3) =='ID_') 
}

//function, boolean, it returns true if the node has a clone which position in disk is equivalent as its position in the map
// when a node linked to a file is cloned in multiple places, not all position in the map will be consistent with its position in the drive.
// Only one of them must be in the right place to consider that all the clones are placed OK
def hasCloneWhithPositionOK(n){
	return n.countNodesSharingContent>0 && n.nodesSharingContent.any{h -> getLink(h) == (obtainPathFromMap(h) + h.text) }
}

//end

//region: funciones strings



//function, returns string, looks at text in node and correct it if it can't be used as a foldername
def correctFolderName(n){
	def texto = n.text.trim().replace('/','-').replace('\\','-').replace('.','-') //replaces chars not usefull in an Folder name
	n.text = texto //corrects text in node too
	return texto.toString() // returns the corrected text
}

//end

//region: modificando nodos
//adds a [link to a file] to the node
def setLink(n, addr){
	// ui.informationMessage(addr.toString())
	n.link.file = new File(addr.toString())
}

//corrects link to image in node which is also a file in the project
def setLinkImage(n, addr){
	if(n.externalObject && n.link.file && n.link.text == n.externalObject.uri){
		n.externalObject.file = new File(addr.toString())
	}
}

//end

//region: manipulando drive

// create all folders of a path (if they doesn't exist)
def createPath(String p) {
	//ui.informationMessage('createPath ' + p)
	def folders = p.replace('\\','/').split('/')
	//ui.informationMessage(folders.toString())
	def path =''
	folders.each{ String f ->
		path = path << f  << '/'
		createFolder(path.toString())
	}	
}

// create new folder if it doesn't exist
def createFolder(String folderName) {
	def folder = new File(folderName)
	if (!folder.isDirectory()){
		folder.mkdir()
	}
}

// function boolean - is directory empty?? 
def isDirEmpty(dirName) {
    def dir = new File(dirName)
    dir.exists() && dir.directory && (dir.list() as List).empty
}

/// function Boolean - does the link points to an existent file?
def existsInDrive( mylink){
	(mylink.uri?.scheme == 'file' && mylink.file.exists())
}
//end

//end
