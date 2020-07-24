# Updates Folders like Map

I've tested it only in Windows. I don't know if it runs in other OS.

## A. first time

### 1. copy icons to your icons folder

* download png files from GitHub folder `updatesFoldersLikeMap_files/icons/`

* open your **freeplane user directory**
  * you can open it from freeplane from the **`Tools`** menu

![open User Directory](updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20001.png)

* copy the downloaded icons into the **`Icons`**  folder in your **`User Directory`**  

![User directory](updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20002.png)

### 2. copy script to your scripts folder

* download the `updatesFoldersLikeMap.groovy` file and copy it into your *`<Freeplane User Directory>`* / `Scripts` folder

### 3. allow scripts to read and write files

* Open the preferences dialog in Freeplane
  * ( menu: `Tools / Preferences`)

![open Preferences](updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20003.png)

* In the **`Plugins`** tab, **`Scripting`** section, check the **allow file/read** and the **file/write operations** options, and click **OK**

![Freeplane scripts preferences](updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20004.png)

### 4. relaunch freeplane

* If Freeplane is open --> close it
* Open Freeplane again.

## B. importing the folder structure

* use this map as a template, because it has the **user defined styles** and **conditional styles** that are necesary for the script to run correctly

### 1. copy your base folder to freeplane as a node

* in the Folder Explorer aplication select the folder you want to use as base folder

![copy base folder](updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20006.png)

* copy it ( Ctrl+C )
* return to freeplane
* paste it as a node in the position you like
you can move it to any position in your map

![paste base folder](updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20007.png)

### 2. select it

* ehh, just that. select it

### 3. add the Bookmark icon to it

* add a bookmark icon to the " **base folder"**  node
  * you can also select the node and click the button in the " **Add Bookmark icon to selected node** " node in the left of the map (take care not to select this node when trying to click its button)

![click button in "action" node](updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20008.png)

### 4. import its folder structure

* go to `File` menu, `Import` , `Folder structure ...` to open the import dialog
  * you can also select the node and click the button in the " **open Import Folder Structure dialog** " node in the left of the map (take care not to select this node when trying to click its button)

![import folder structure 1](updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20005.png)

* select the folder to import (the same "**Base folder**" as before) and click **Open**

![import folder structure 2](updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20009.png)

## C. organizing it

### 1. creating new folders

* create new node (no . (dot) in its text)
* format it as **'file_folder' style**
  * menu ´Format´ / ´Apply Style´ / ´file_folder´

![assign 'file_folder' style 3](updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20012.png)

* this can be also applied this way:

![assign 'file_folder' style 1](updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20010.png)

### 2. moving the files nodes to the new folders

* take them with the mouse and move it to their new position

![move 'files' nodes into new 'folders'](updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20013.png)

### 3. adding other nodes / notes / details

* you can add other nodes. and use them to classify or add information
* the script just looks after
  * nodes having links to files or folders
  * or nodes having the 'file_folder' style.
* all other nodes are ignored
* notes, details and attributes are also ignored

![adding nodes, notes, details](updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20014.png)

### 4. changing files names

* you can also change files names: you just need to change its node text.
* beware not to change its file extension

![renaming files](updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20015.png)

## D. update the files and folders in your disk

* select a node inside the **base folder**  tree
* run the script in the menu **Scripts Edo**  / **Organizar Mapa**  / **Updates Folders Like Map**
  * you can also select a node inside the **base folder**  tree and then click the button in the " **update Folders** " node in the left of the map (take care not to select this node when trying to click its button)
