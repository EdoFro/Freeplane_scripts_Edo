// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/OrganizarMapa"})


def nodo = node

// limpiarTexto(nodo)
// ui.informationMessage(limpiarTexto(nodo))

nodoCarpetaRaiz = obtainCarpetaRaiz(nodo)
carpetaRaiz = linkPath(nodoCarpetaRaiz)

// ui.informationMessage(estaBienUbicado(nodo).toString())
// ui.informationMessage(tieneClonBienUbicado(nodo).toString())

def listaArchivos = nodoCarpetaRaiz.find{it.link.text && isLinkToFile(it.link.text) && !it.hasStyle('file_folder')}
def listaCarpetas = nodoCarpetaRaiz.find{it.hasStyle('file_folder')}.reverse()


ui.informationMessage("Se revisará la ubicación de ${listaArchivos.size().toString()} archivos y ${listaCarpetas.size().toString()} carpetas dentro de: \n\n ${carpetaRaiz} \n\n\n")

moverArchivos(listaArchivos)
//moverArchivos(nodo)
revisarCarpetas(listaCarpetas)

//*

def moverArchivos(archivos){
	def quietos = 0
	def movidos = 0
	def inexistentes = 0
	def actualizados = 0
	archivos.each{ n ->
		switch(moverArchivoDeNodo(n)) {
			case 'sinMov':
				quietos++
				break
			case 'movido':
				movidos++
				break
			case 'noExiste':
				inexistentes++
				break
			case 'actualizado':
				actualizados++
				break
				
				
		}
	}
	def Texto=""
	if(movidos>0){Texto = Texto << "${movidos} archivos fueron movidos \n"}
	if(quietos>0){Texto = Texto << "${quietos} archivos no necesitaron ser movidos \n"}
	if(actualizados>0){Texto = Texto << "${actualizados} links de nodos de archivos que ya estaban en el lugar correcto fueron corregidos en el mapa\n"}
	if(inexistentes>0){Texto = Texto << "${inexistentes} archivos no fueron encontrados \n"}
	Texto = Texto << "Posible diferencia por nodos clones \n"
	ui.informationMessage(Texto.toString())
}
/* */

//*
def revisarCarpetas(archivos){
	def quietos = 0
	def inexistentes = 0
	def eliminados = 0
	def mantenidos = 0
	def creadas = 0
	archivos.each{ n ->
		switch(revisarCarpetaDeNodo(n)) {
			case 'sinMov':
				quietos++
				break
			case 'noExiste':
				inexistentes++
				break
			case 'viejoEliminado':
				eliminados++
				break
			case 'viejoMantenido':
				mantenidos++
				break
			case 'nueva':
				creadas++
				break
		}
	}
	def Texto=""
	if(creadas>0){Texto = Texto << "${creadas} carpetas nuevas fueron creadas \n"}
	if(quietos>0){Texto = Texto << "${quietos} carpetas no necesitaron ser movidas \n"}
	if(eliminados>0){Texto = Texto << "${eliminados} carpetas fueron creadas en su nueva posicion y eliminadas en su antigua\n"}
	if(mantenidos>0){Texto = Texto << "${mantenidos} carpetas fueron creadas en su nueva posicion y mantenidas en su antigua por no estar vacias\n"}
	if(inexistentes>0){Texto = Texto << "${inexistentes} carpetas no fueron encontradas \n"}
	ui.informationMessage(Texto.toString())
}
/* */

//*
def revisarCarpetaDeNodo(nodo) {
	def nuevoNombre = obtainPath(nodo).toString()
	if(nodo.link.text){
		def nomIni = linkPath(nodo)		//Toma nombre Inicial "nomIni" de link actual del nodo
		if (nomIni != nuevoNombre)		// ¿ruta y nombre nuevo y antiguo son diferentes?
		{ 
			// ui.informationMessage('Nombre inicial: ' + nomIni.toString())
			// ui.informationMessage('Nombre final: ' + nuevoNombre)
			nodo.link.text = linkEncod(nuevoNombre) // cambiarle a nuevo link
			def file = new File(nomIni)
			if (file.isDirectory()) 		//	¿existe en el lugar que indica su link (y es carpeta)?
			{ 
				if(isDirEmpty(nomIni)) // revisar si directorio está vacío
				{
					file.delete() //eliminar carpeta en disco
					return 'viejoEliminado'
				} else {
					return 'viejoMantenido'				
				}
			} else {
				return 'noExiste'
			}
		} else { 
			return 'sinMov'
		}
	}else {	// si no tiene link --> ponerle link
		nodo.link.text = linkEncod(nuevoNombre)
		if(nodo.style.name=='file_folder'){
			nodo.style.name = null
		}
		return 'nueva'
	}
}

/* */

//*

def moverArchivoDeNodo(nodo) {
	def nomIni = linkPath(nodo)		//Toma nombre Inicial "nomIni" de link actual del nodo
	
	// dos opciones para definir el nuevo nombre del archivo:
	// def nombre = nomIni.reverse().takeBefore('/').reverse() // 1. mantiene nombre según link
	def nombre = nodo.text // 2. toma nombre del texto del nodo. así le podría cambiar de nombre también

	// armar path de estructura de rama
	def path = obtainPath(nodo)
	def nuevoNombre = path + nombre

	def file = new File(nomIni)
	if (file.isFile()) 		//	¿existe en el lugar que indica su link (y no es carpeta)?
	{
		if (nomIni != nuevoNombre)		// ¿ruta y nombre nuevo y antiguo son diferentes?
		{
			if(!tieneClonBienUbicado(nodo)){			
				AseguraPath(path.toString())
				// TODO: agregar try catch???
				// ui.informationMessage('Nombre inicial: ' + nomIni)
				// ui.informationMessage('Nombre final: ' + nuevoNombre)
				file.renameTo( new File(nuevoNombre) )
				nodo.link.text = linkEncod(nuevoNombre)  // cambia link del nodo para que apunte a nueva ubicación
				// ui.informationMessage( "el archivo ${file.name} fue reubicado")
				if(nodo.icons.contains('messagebox_warning')){nodo.icons.remove('messagebox_warning')}
				return 'movido'
			} else {
				if(nodo.icons.contains('messagebox_warning')){nodo.icons.remove('messagebox_warning')}			
			}
		} else {
		//ui.informationMessage( "el archivo ${file.name} no necesitó ser movido")
		if(nodo.icons.contains('messagebox_warning')){nodo.icons.remove('messagebox_warning')}
		return 'sinMov'
		}
	} else {
		file = new File(nuevoNombre)
		if (file.isFile()) 		//	¿existe ya en el lugar donde lo iba a mover (y no es carpeta)?
		{
			nodo.link.text = linkEncod(nuevoNombre)  // cambia link del nodo para que apunte a nueva ubicación
			if(nodo.icons.contains('messagebox_warning')){nodo.icons.remove('messagebox_warning')}
			return 'actualizado'
		} else {
			ui.informationMessage( "el archivo ${nomIni} no existe")
			if(!nodo.icons.contains('messagebox_warning')){nodo.icons.add('messagebox_warning')}
			return 'noExiste'
		}
	}
}

def tieneClonBienUbicado(n){
	return n.countNodesSharingContent>0 && n.nodesSharingContent.any{h -> linkPath(h) == (obtainPath(h) + h.text) }
}

def estaBienUbicado(h){
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
	txt=t.toString()
	return txt.size()>6 && txt[0..5]=='file:/'
}

def obtainPath(n) {
	def texto ='' // = n.text
	while(!n.equals(nodoCarpetaRaiz)){
		if(n.hasStyle('file_folder')){
			texto = limpiarTexto(n) << '/' << texto
		}
		n = n.parent
	}
	texto = carpetaRaiz << texto
	return texto.toString()
}

def limpiarTexto(n){
	def texto = n.text.trim().replace('/','-').replace('\\','-')
	n.text = texto
	return texto.toString()
}

def obtainCarpetaRaiz(n) {
	return n.pathToRoot.find{it.icons.contains('bookmark')}
}


def AseguraPath(String p) {
	def carpetas = p.split('/')
	def pathi =''
	carpetas.each{ String ca ->
		pathi = pathi << ca  << '/'
		creaCarpeta(pathi.toString())
	}	
}

def creaCarpeta(String carpeta) {
	def folder = new File(carpeta)
	if (!folder.isDirectory()){
		folder.mkdir()
	}
}

/*
def isDirEmpty = { File dir ->
    dir.exists() && dir.directory && (dir.list() as List).empty
}
*/

def isDirEmpty(dirName) {
    def dir = new File(dirName)
    dir.exists() && dir.directory && (dir.list() as List).empty
}

/* */
//ui.informationMessage( nuevoNombre)


