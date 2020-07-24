# Open with Notepad++

## Description

Script for Freeplane to open files or node's notes as files in Notepad++

## it works this way

* if node
  * has a link to a file -->
    * it opens the file in N++
  * has a note -->
    * saves it as a textfile and opens it in N++
    * if it's a groovy script
      * it saves it in the user's scripts folder
    * if not
      * it saves it in a default folder
  * has no link nor note -->
    * takes text from last groovy script tempFile and brings it as a note

## more information

more information in the OpenWithNotepad++.mm Freeplane file
