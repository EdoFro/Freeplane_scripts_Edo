<map version="freeplane 1.8.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Example MAP" FOLDED="false" ID="ID_819943156" CREATED="1590784750245" MODIFIED="1590784858050">
<edge DASH="SOLID"/>
<hook NAME="MapStyle">
    <conditional_styles>
        <conditional_style ACTIVE="true" STYLE_REF="file_ppt" LAST="true">
            <hyper_link_contains TEXT=".ppt"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="file_xls" LAST="true">
            <hyper_link_contains TEXT=".xl"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="file_pdf" LAST="true">
            <hyper_link_contains TEXT=".pdf"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="file_mindmap" LAST="true">
            <hyper_link_contains TEXT=".mm"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="file_docx" LAST="true">
            <hyper_link_contains TEXT=".doc"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="file_xlsm" LAST="true">
            <hyper_link_contains TEXT=".xlsm"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="file_SQL" LAST="true">
            <hyper_link_contains TEXT=".sql"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="BotonMenu" LAST="true">
            <hyper_link_contains TEXT="menuitem:"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="file_folder" LAST="true">
            <conjunct_condition>
                <hyper_link_contains TEXT="file:/"/>
                <negate_condition>
                    <node_contains_condition VALUE="." ITEM="filter_node"/>
                </negate_condition>
            </conjunct_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="file_unknow" LAST="false">
            <hyper_link_contains TEXT="file:/"/>
        </conditional_style>
    </conditional_styles>
    <properties show_icon_for_attributes="true" fit_to_viewport="false;" show_note_icons="true" show_notes_in_map="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="300.0 px" COLOR="#000000" BACKGROUND_COLOR="#ffffff" STYLE="as_parent">
<font NAME="Gisha" SIZE="10" BOLD="false" ITALIC="false"/>
<edge STYLE="bezier" COLOR="#808080" WIDTH="thin"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details" COLOR="#006666">
<font NAME="Tahoma" SIZE="7" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
<stylenode TEXT="Siguiente tarea" BACKGROUND_COLOR="#ffff33">
<icon BUILTIN="yes"/>
<icon BUILTIN="unchecked"/>
</stylenode>
<stylenode TEXT="Tarea pendiente" BACKGROUND_COLOR="#99ffff">
<icon BUILTIN="unchecked"/>
<attribute NAME="Resp." VALUE="EF"/>
</stylenode>
<stylenode TEXT="Tarea finalizada" COLOR="#333333" BACKGROUND_COLOR="#cccccc">
<icon BUILTIN="checked"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="Proyecto" COLOR="#003399">
<font NAME="SansSerif" SIZE="12" BOLD="true" ITALIC="false"/>
<edge COLOR="#003399" WIDTH="6"/>
</stylenode>
<stylenode TEXT="Grupito">
<cloud COLOR="#e4e6ff" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode TEXT="Iniciativa">
<icon BUILTIN="attach"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="Organizador">
<icon BUILTIN="folder"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="file_docx">
<icon BUILTIN="Doc"/>
</stylenode>
<stylenode TEXT="file_xlsm">
<icon BUILTIN="XLSM"/>
</stylenode>
<stylenode TEXT="file_ppt">
<icon BUILTIN="Ppt"/>
</stylenode>
<stylenode TEXT="file_pdf">
<icon BUILTIN="PDF"/>
</stylenode>
<stylenode TEXT="file_xls">
<icon BUILTIN="XLSX"/>
</stylenode>
<stylenode TEXT="file_folder">
<icon BUILTIN="Folder"/>
</stylenode>
<stylenode TEXT="file_unknow">
<icon BUILTIN="File_unknown"/>
</stylenode>
<stylenode TEXT="file_mindmap">
<icon BUILTIN="bee"/>
</stylenode>
<stylenode TEXT="file_SQL">
<icon BUILTIN="SQL"/>
</stylenode>
<stylenode TEXT="BotonMenu" COLOR="#ffffff" BACKGROUND_COLOR="#34739d" STYLE="bubble" BORDER_WIDTH="3.0 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#0097ff"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<node TEXT="Instructions" STYLE_REF="Organizador" POSITION="right" ID="ID_1687633798" CREATED="1590789587612" MODIFIED="1590791056779"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      I've tested only in windows. I do`'t know if it runs in other OS.
    </p>
  </body>
</html>

</richcontent>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      windows
    </p>
  </body>
</html>

</richcontent>
<node TEXT="first time:" STYLE_REF="Organizador" ID="ID_242771435" CREATED="1590789610801" MODIFIED="1590789623249">
<node TEXT="copy icons to your icons folder" ID="ID_193515439" CREATED="1590789627717" MODIFIED="1590809823764"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        download png files from folder `updatesFoldersLikeMap_files / icons / `
      </li>
      <li>
        open your *freeplane user directory*

        <ul>
          <li>
            you can open it from freeplane from the '´Tools´ menu
          </li>
        </ul>
      </li>
      <li>
        copy the downloaded icons into the <b>Icons</b>&nbsp;folder in your <b>User Directory</b>&nbsp;
      </li>
    </ul>
  </body>
</html>

</richcontent>
<node TEXT="open User Directory" ID="ID_1766225359" CREATED="1590804727552" MODIFIED="1590813814068" TEXT_SHORTENED="true">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_scripts_Edo/Scripts/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20001.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
<node TEXT="User directory" ID="ID_1644487721" CREATED="1590804727577" MODIFIED="1590805757930" TEXT_SHORTENED="true">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_scripts_Edo/Scripts/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20002.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="copy script to your scripts folder" ID="ID_1083806285" CREATED="1590789697917" MODIFIED="1590805904589"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        download the ´updatesFoldersLikeMap.groovy´ file and copy it into your ´User Directory´ / Scripts folder
      </li>
    </ul>
  </body>
</html>

</richcontent>
</node>
<node TEXT="allow scripts to read and write files" ID="ID_1427365019" CREATED="1590790718419" MODIFIED="1590805931661"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Open the preferences dialog in Freeplane

        <ul>
          <li>
            ( menu: Tools / Preferences)
          </li>
        </ul>
      </li>
      <li>
        In the Plugins tab, Scripting section, check the allow file read and the file/write operations options, and OK
      </li>
    </ul>
  </body>
</html>

</richcontent>
<node TEXT="open Preferences" ID="ID_1408247914" CREATED="1590804727596" MODIFIED="1590805268883" TEXT_SHORTENED="true">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_scripts_Edo/Scripts/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20003.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
<node TEXT="Freeplane scriptspreferences" ID="ID_698032929" CREATED="1590804727613" MODIFIED="1590805323713" TEXT_SHORTENED="true">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_scripts_Edo/Scripts/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20004.png" SIZE="0.62434965" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="relaunch freeplane" ID="ID_982912135" CREATED="1590789734867" MODIFIED="1590805944229"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        If Freeplane is open --&gt; close it
      </li>
      <li>
        Open Freeplane again.
      </li>
    </ul>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="importing the folder structure" STYLE_REF="Organizador" ID="ID_1374265871" CREATED="1590792021431" MODIFIED="1590805985539"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      use this map as a template, because it has the <b>user defined styles </b>and <b>conditional styles </b>that are necesary for the script to run correctly
    </p>
  </body>
</html>

</richcontent>
<node TEXT="copy your base folder to freeplane as a node" ID="ID_1394265874" CREATED="1590792061344" MODIFIED="1590806013157"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        in the Folder Explorer aplication select the folder you want to use as base folder

        <ul>
          <li>
            copy it (Ctrl + c)
          </li>
        </ul>
      </li>
      <li>
        return to freeplane
      </li>
      <li>
        paste it as a node in the position you like
      </li>
      <li>
        you can move it to any position in your map
      </li>
    </ul>
    <p>
      
    </p>
  </body>
</html>

</richcontent>
<node TEXT="copy base folder" ID="ID_966651652" CREATED="1590804727650" MODIFIED="1590805448165" TEXT_SHORTENED="true">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_scripts_Edo/Scripts/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20006.png" SIZE="0.90361446" NAME="ExternalObject"/>
</node>
<node TEXT="paste base folder" ID="ID_359931643" CREATED="1590804727670" MODIFIED="1590805476151" TEXT_SHORTENED="true">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_scripts_Edo/Scripts/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20007.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="select it" ID="ID_123446570" CREATED="1590792160606" MODIFIED="1590806021353"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        &nbsp;ehh, just that. select it
      </li>
    </ul>
  </body>
</html>

</richcontent>
</node>
<node TEXT="add the Bookmark icon to it" ID="ID_1151854581" CREATED="1590792131633" MODIFIED="1590806033383">
<icon BUILTIN="bookmark"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        add a bookmark icon to the &quot;<b>base folder&quot;</b>&nbsp;node
      </li>
      <li>
        you can also select the node and click the button in the &quot;<b>Add Bookmark icon to selected node</b>&quot; node in the left of the map (take care not to select this node when trying to click its button)
      </li>
    </ul>
  </body>
</html>

</richcontent>
<node TEXT="click button in &quot;action&quot; node" ID="ID_1103583411" CREATED="1590804727691" MODIFIED="1590805523243" TEXT_SHORTENED="true">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_scripts_Edo/Scripts/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20008.png" SIZE="0.66225165" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="import its folder structure" ID="ID_894246420" CREATED="1590792381519" MODIFIED="1590806103222"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        go to ´File´ menu, ´Import´ , ´Folder structure ...´ to open the import dialog
      </li>
      <li>
        you can also select the node and click the button in the &quot;<b>open Import Folder Structure dialog</b>&quot; node in the left of the map (take care not to select this node when trying to click its button)
      </li>
    </ul>
  </body>
</html>

</richcontent>
<node TEXT="import folder structure 1" ID="ID_1502538317" CREATED="1590804727632" MODIFIED="1590805427008" TEXT_SHORTENED="true">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_scripts_Edo/Scripts/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20005.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
<node TEXT="import folder structure 2" ID="ID_150705038" CREATED="1590804727479" MODIFIED="1590805647849" TEXT_SHORTENED="true">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_scripts_Edo/Scripts/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20009.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
</node>
<node TEXT="organizing it" STYLE_REF="Organizador" ID="ID_1011171624" CREATED="1590792542264" MODIFIED="1590792589833">
<node TEXT="creating new folders" ID="ID_958877563" CREATED="1590794551926" MODIFIED="1590807536831"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        create new node (no . (dot) in its text)
      </li>
      <li>
        format it as 'file_folder' style

        <ul>
          <li>
            menu ´Format´ / ´Apply Style´ / ´file_folder´
          </li>
        </ul>
      </li>
    </ul>
  </body>
</html>

</richcontent>
<node TEXT="assign &apos;file_folder&apos; style 1" ID="ID_1270988197" CREATED="1590807331427" MODIFIED="1590807376478" TEXT_SHORTENED="true">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_scripts_Edo/Scripts/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20012.png" SIZE="0.9433962" NAME="ExternalObject"/>
</node>
<node TEXT="assign &apos;file_folder&apos; style 2" ID="ID_1481858456" CREATED="1590807331454" MODIFIED="1590807386419" TEXT_SHORTENED="true">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_scripts_Edo/Scripts/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20010.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
<node TEXT="assign &apos;file_folder&apos; style 3" ID="ID_1814807565" CREATED="1590807331481" MODIFIED="1590807411339" TEXT_SHORTENED="true">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_scripts_Edo/Scripts/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20011.png" SIZE="0.7444169" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="moving the files nodes to the new folders" ID="ID_1158196008" CREATED="1590794576394" MODIFIED="1590806145410"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        take it with the mouse and move it to their new position
      </li>
    </ul>
  </body>
</html>

</richcontent>
<node TEXT="move &apos;files&apos; nodes into new &apos;folders&apos;" ID="ID_778559080" CREATED="1590807678966" MODIFIED="1590807739249" TEXT_SHORTENED="true">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_scripts_Edo/Scripts/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20013.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="adding other nodes / notes / details" ID="ID_1625194663" CREATED="1590794561668" MODIFIED="1590806309424"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        you can add other nodes. and use them to classify or add information
      </li>
      <li>
        the script just looks after

        <ul>
          <li>
            nodes having links to files or folders
          </li>
          <li>
            or nodes having the 'file_folder' style.
          </li>
        </ul>
      </li>
      <li>
        all other nodes are ignored
      </li>
      <li>
        notes and details are also ignored
      </li>
    </ul>
  </body>
</html>

</richcontent>
<node TEXT="adding nodes, notes, details" ID="ID_1090104357" CREATED="1590808387849" MODIFIED="1590808432665" TEXT_SHORTENED="true">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_scripts_Edo/Scripts/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20014.png" SIZE="0.9118541" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="changing files names" ID="ID_231729277" CREATED="1590794639542" MODIFIED="1590806455878"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        you can also change files names: you just need to change its node text.
      </li>
      <li>
        beware not to change its file extension
      </li>
    </ul>
  </body>
</html>

</richcontent>
<node TEXT="renaming files" ID="ID_1420984609" CREATED="1590808632297" MODIFIED="1590808667374" TEXT_SHORTENED="true">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_scripts_Edo/Scripts/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20015.png" SIZE="0.9917355" NAME="ExternalObject"/>
</node>
</node>
</node>
<node TEXT="update the files and folders in your disk" STYLE_REF="Organizador" ID="ID_1182392227" CREATED="1590794661092" MODIFIED="1590806439420"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        select a node inside the <b>base folder</b>&nbsp;tree
      </li>
      <li>
        run the script in the menu <b>Scripts Edo</b>&nbsp;/ <b>Organizar Mapa</b>&nbsp;/ <b>Updates Folders Like Map</b>

        <ul>
          <li>
            you can also&nbsp;select a node inside the <b>base folder</b>&nbsp;tree and then click the button in the &quot;<b>update Folders</b>&quot; node in the left of the map (take care not to select this node when trying to click its button)
          </li>
        </ul>
      </li>
    </ul>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="actions" LOCALIZED_STYLE_REF="default" POSITION="left" ID="ID_285782579" CREATED="1590792196474" MODIFIED="1590806643247">
<node TEXT="Add Bookmark icon to selected node" ID="ID_535403633" CREATED="1590792227680" MODIFIED="1590792326177" LINK="menuitem:_IconAction.bookmark" MAX_WIDTH="250.0 px" MIN_WIDTH="250.0 px"/>
<node TEXT="open Import Folder Structure dialog" ID="ID_515440681" CREATED="1590792432657" MODIFIED="1590792468101" LINK="menuitem:_ImportFolderStructureAction" MAX_WIDTH="250.0 px" MIN_WIDTH="250.0 px"/>
<node TEXT="give node &apos;file_folder&apos; style" ID="ID_1141821658" CREATED="1590806506996" MODIFIED="1590806590678" LINK="menuitem:_AssignStyleAction.file_folder" MAX_WIDTH="250.0 px" MIN_WIDTH="250.0 px"/>
<node TEXT="update Folders" ID="ID_1825013198" CREATED="1590789533275" MODIFIED="1590792326181" LINK="menuitem:_UpdatesFoldersLikeMap2_on_single_node" MAX_WIDTH="250.0 px" MIN_WIDTH="250.0 px"/>
</node>
<node TEXT="testFolder" FOLDED="true" POSITION="right" ID="ID_1185882537" CREATED="1590793502579" MODIFIED="1590794176769" LINK="file:/C:/Temp/testFolder/">
<icon BUILTIN="bookmark"/>
<node TEXT="122-32335-Shield-Bot-web-v1.1.pdf" ID="ID_1829309519" CREATED="1590794496534" MODIFIED="1590794496537" LINK="file:/C:/Temp/testFolder/122-32335-Shield-Bot-web-v1.1.pdf"/>
<node TEXT="20200403_COVID-19 Response_vSHARED.pdf" ID="ID_323425924" CREATED="1590794496541" MODIFIED="1590794496543" LINK="file:/C:/Temp/testFolder/20200403_COVID-19%20Response_vSHARED.pdf"/>
<node TEXT="35000-BOE-Shield-Documentation-v1.2.pdf" ID="ID_1159667765" CREATED="1590794496548" MODIFIED="1590794496550" LINK="file:/C:/Temp/testFolder/35000-BOE-Shield-Documentation-v1.2.pdf"/>
<node TEXT="35000-BOE-Shield-Schematic-RevB.pdf" ID="ID_393524264" CREATED="1590794496551" MODIFIED="1590794496554" LINK="file:/C:/Temp/testFolder/35000-BOE-Shield-Schematic-RevB.pdf"/>
<node TEXT="3DSystems-RapidPrototyping_eBook_EN-FINAL.pdf" ID="ID_1102782033" CREATED="1590794496556" MODIFIED="1590794496561" LINK="file:/C:/Temp/testFolder/3DSystems-RapidPrototyping_eBook_EN-FINAL.pdf"/>
<node TEXT="Arduino + Blockly.pdf" ID="ID_1396493028" CREATED="1590794496565" MODIFIED="1590794961792" LINK="file:/C:/Temp/testFolder/Arduino%20+%20Blockly.pdf"/>
<node TEXT="BAGCorfo2018_Guia,4.pdf" ID="ID_1840614114" CREATED="1590794496568" MODIFIED="1590794496570" LINK="file:/C:/Temp/testFolder/BAGCorfo2018_Guia,4.pdf"/>
<node TEXT="Bases+Administrativas+Generales+InnovaChile.pdf" ID="ID_1834550036" CREATED="1590794496571" MODIFIED="1590794961831" LINK="file:/C:/Temp/testFolder/Bases+Administrativas+Generales+InnovaChile.pdf"/>
<node TEXT="Bases+Técnicas+Innova+Región.PDF" ID="ID_137909788" CREATED="1590794496580" MODIFIED="1590794961859" LINK="file:/C:/Temp/testFolder/Bases+Técnicas+Innova+Región.PDF"/>
<node TEXT="Bases+Técnicas+Súmate+a+Innovar.PDF" ID="ID_13098029" CREATED="1590794496584" MODIFIED="1590794961889" LINK="file:/C:/Temp/testFolder/Bases+Técnicas+Súmate+a+Innovar.PDF"/>
<node TEXT="BDM-Poster-DE.pdf" ID="ID_1278803970" CREATED="1590794496587" MODIFIED="1590794496589" LINK="file:/C:/Temp/testFolder/BDM-Poster-DE.pdf"/>
<node TEXT="Blade runner.mp3" ID="ID_361937657" CREATED="1590794496590" MODIFIED="1590794496593" LINK="file:/C:/Temp/testFolder/Blade%20runner.mp3"/>
<node TEXT="board-of-innovation-low-touch-economy.pdf" ID="ID_762699385" CREATED="1590794496595" MODIFIED="1590794496597" LINK="file:/C:/Temp/testFolder/board-of-innovation-low-touch-economy.pdf"/>
<node TEXT="BPMN-2.0-Poster-DE.pdf" ID="ID_583098290" CREATED="1590794496620" MODIFIED="1590794496622" LINK="file:/C:/Temp/testFolder/BPMN-2.0-Poster-DE.pdf"/>
<node TEXT="Business Process Management For Dummies.pdf" ID="ID_155036975" CREATED="1590794496623" MODIFIED="1590794496627" LINK="file:/C:/Temp/testFolder/Business%20Process%20Management%20For%20Dummies.pdf"/>
<node TEXT="Business_Process_Management_Report_from_IT_Central_Station_2019-03-09.pdf" ID="ID_1293299262" CREATED="1590794496630" MODIFIED="1590794496634" LINK="file:/C:/Temp/testFolder/Business_Process_Management_Report_from_IT_Central_Station_2019-03-09.pdf"/>
<node TEXT="Business_Process_Management_Shortlist_from_IT_Central_Station_2019-04-09.pdf" ID="ID_1958032538" CREATED="1590794496637" MODIFIED="1590794496643" LINK="file:/C:/Temp/testFolder/Business_Process_Management_Shortlist_from_IT_Central_Station_2019-04-09.pdf"/>
<node TEXT="Comprobante de Reserva de Horas - Clínica Alemana ·[__www.alemana.cl_]·.pdf" ID="ID_795451577" CREATED="1590794496647" MODIFIED="1590794496651" LINK="file:/C:/Temp/testFolder/Comprobante%20de%20Reserva%20de%20Horas%20-%20Clínica%20Alemana%20·%5B__www.alemana.cl_%5D·.pdf"/>
<node TEXT="ComprobantePago - 012592256-2 (2).pdf" ID="ID_1523150764" CREATED="1590794496656" MODIFIED="1590794496659" LINK="file:/C:/Temp/testFolder/ComprobantePago%20-%20012592256-2%20(2).pdf"/>
<node TEXT="ComprobantePago - 012592256-2.pdf" ID="ID_1433427248" CREATED="1590794496660" MODIFIED="1590794496662" LINK="file:/C:/Temp/testFolder/ComprobantePago%20-%20012592256-2.pdf"/>
<node TEXT="Boletas" STYLE_REF="file_folder" ID="ID_1032951278" CREATED="1590806681790" MODIFIED="1590807559647">
<node TEXT="" ID="ID_812963797" CREATED="1590807940126" MODIFIED="1590807940130">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="boletos (1).pdf" ID="ID_1992466828" CREATED="1590794496598" MODIFIED="1590794496600" LINK="file:/C:/Temp/testFolder/boletos%20(1).pdf"/>
<node TEXT="boletos (2).pdf" ID="ID_1037721454" CREATED="1590794496601" MODIFIED="1590794496603" LINK="file:/C:/Temp/testFolder/boletos%20(2).pdf"/>
<node TEXT="boleto bus de Stgo a Valpo.pdf" ID="ID_83039464" CREATED="1590794496604" MODIFIED="1590808618908" LINK="file:/C:/Temp/testFolder/boletos(8).pdf"/>
<node TEXT="" ID="ID_1416111934" CREATED="1590807940119" MODIFIED="1590807940125">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="Bus Ticket" ID="ID_375137294" CREATED="1590807940135" MODIFIED="1590808208626" BACKGROUND_COLOR="#99ff99"/>
</node>
<node TEXT="boletos-g1 (1).pdf" ID="ID_787463800" CREATED="1590794496608" MODIFIED="1590808108050" LINK="file:/C:/Temp/testFolder/boletos-g1%20(1).pdf"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ¿who took this?
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="ToDo: OK???" STYLE_REF="Tarea pendiente" ID="ID_481302914" CREATED="1590807767677" MODIFIED="1590807873259">
<node TEXT="boletos-g1.pdf" ID="ID_1061258709" CREATED="1590794496612" MODIFIED="1590808182822" LINK="file:/C:/Temp/testFolder/boletos-g1.pdf"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Válido para la fecha y hora señalada. La devolución o cambio se aceptará hasta 4 horas antes del viaje (art. 67. D. S.
    </p>
    <p>
      212/92MT). Si canceló en efectivo, con tarjeta de crédito, débito u otra, se devolverá el 85% del valor, si canceló con cheque,
    </p>
    <p>
      se devolverá 85% del valor 10 días después que se haya cobrado y percibido, previa anulación del boleto antes del viaje, en
    </p>
    <p>
      oficinas con venta en línea. Si el valor de su equipaje excede 5 UTM es su obligación declararlo previamente en la oficina de
    </p>
    <p>
      origen (art. 70 D.S 212/92 MT). La empresa no se hace responsable por pérdidas que puedan ocurrir al interior del bus. El
    </p>
    <p>
      horario de llegada es estimado. Los boletos no confirmados tendrán una vigencia de 3 meses desde la fecha de venta. No se
    </p>
    <p>
      aceptarán boletos rotos o con adulteración.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="boletos-g1x.pdf" ID="ID_272221188" CREATED="1590794496614" MODIFIED="1590794496616" LINK="file:/C:/Temp/testFolder/boletos-g1x.pdf">
<node TEXT="boletos.pdf" ID="ID_831007218" CREATED="1590794496617" MODIFIED="1590808263921" LINK="file:/C:/Temp/testFolder/boletos.pdf"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      it's the same
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="Estado de Cuenta CMR_052019_0203954.pdf" ID="ID_548522737" CREATED="1590794496663" MODIFIED="1590794496665" LINK="file:/C:/Temp/testFolder/Estado%20de%20Cuenta%20CMR_052019_0203954.pdf"/>
<node TEXT="IM_Design_Essentials_WP_18.pdf" ID="ID_1186944254" CREATED="1590794496669" MODIFIED="1590794496672" LINK="file:/C:/Temp/testFolder/IM_Design_Essentials_WP_18.pdf"/>
<node TEXT="Industry4.0ChallengesforBusinessProcessManagement.pdf" ID="ID_530367744" CREATED="1590794496674" MODIFIED="1590794496680" LINK="file:/C:/Temp/testFolder/Industry4.0ChallengesforBusinessProcessManagement.pdf"/>
<node TEXT="InstruccionCargo_012592256-2.pdf" ID="ID_7286963" CREATED="1590794496683" MODIFIED="1590794496685" LINK="file:/C:/Temp/testFolder/InstruccionCargo_012592256-2.pdf"/>
<node TEXT="joincheatsheet.pdf" ID="ID_204231113" CREATED="1590794496687" MODIFIED="1590794496689" LINK="file:/C:/Temp/testFolder/joincheatsheet.pdf"/>
<node TEXT="La isla del tesoro.mp3" ID="ID_1960873489" CREATED="1590794496691" MODIFIED="1590794496695" LINK="file:/C:/Temp/testFolder/La%20isla%20del%20tesoro.mp3"/>
<node TEXT="Manual EasyArduino.pdf" ID="ID_644475012" CREATED="1590794496697" MODIFIED="1590794496701" LINK="file:/C:/Temp/testFolder/Manual%20EasyArduino.pdf"/>
<node TEXT="Manual_freeplane.pdf" ID="ID_1906002498" CREATED="1590794496702" MODIFIED="1590794496705" LINK="file:/C:/Temp/testFolder/Manual_freeplane.pdf"/>
<node TEXT="Parallax-Small-Robot-Comparison-Chart-v2.0.pdf" ID="ID_824792449" CREATED="1590794496707" MODIFIED="1590794496711" LINK="file:/C:/Temp/testFolder/Parallax-Small-Robot-Comparison-Chart-v2.0.pdf"/>
<node TEXT="Petzold_et_al-2019-Creativity_and_Innovation_Management.pdf" ID="ID_749738254" CREATED="1590794496716" MODIFIED="1590794496722" LINK="file:/C:/Temp/testFolder/Petzold_et_al-2019-Creativity_and_Innovation_Management.pdf"/>
<node TEXT="PreguntasFrecuentesProgramasDeInnovacion.pdf" ID="ID_1862115700" CREATED="1590794496728" MODIFIED="1590794496731" LINK="file:/C:/Temp/testFolder/PreguntasFrecuentesProgramasDeInnovacion.pdf"/>
<node TEXT="RTP-Part-Design-Guidelines-for-Injection-Molded-Thermoplastics.pdf" ID="ID_1106061478" CREATED="1590794496735" MODIFIED="1590794496739" LINK="file:/C:/Temp/testFolder/RTP-Part-Design-Guidelines-for-Injection-Molded-Thermoplastics.pdf"/>
<node TEXT="SCCC2017-TrackBPM-paper-ID-64pdf.pdf" ID="ID_282093215" CREATED="1590794496743" MODIFIED="1590794496745" LINK="file:/C:/Temp/testFolder/SCCC2017-TrackBPM-paper-ID-64pdf.pdf"/>
<node TEXT="Sergeeva_et_al-2018-Creativity_and_Innovation_Management.pdf" ID="ID_758687254" CREATED="1590794496746" MODIFIED="1590794496751" LINK="file:/C:/Temp/testFolder/Sergeeva_et_al-2018-Creativity_and_Innovation_Management.pdf"/>
<node TEXT="ShortcutsCheatSheet_18.1.pdf" ID="ID_1277743037" CREATED="1590794496755" MODIFIED="1590794496758" LINK="file:/C:/Temp/testFolder/ShortcutsCheatSheet_18.1.pdf"/>
<node TEXT="Signavio-Kochbuch-WEB.pdf" ID="ID_748115401" CREATED="1590794496760" MODIFIED="1590794496763" LINK="file:/C:/Temp/testFolder/Signavio-Kochbuch-WEB.pdf"/>
<node TEXT="SQL Joins.jpeg" ID="ID_1491722221" CREATED="1590794496764" MODIFIED="1590794496766" LINK="file:/C:/Temp/testFolder/SQL%20Joins.jpeg"/>
<node TEXT="SQL logical order.png" ID="ID_592652772" CREATED="1590794496767" MODIFIED="1590794496769" LINK="file:/C:/Temp/testFolder/SQL%20logical%20order.png"/>
<node TEXT="SQL Server 2019 Editions Datasheet.pdf" ID="ID_538479610" CREATED="1590794496771" MODIFIED="1590794496773" LINK="file:/C:/Temp/testFolder/SQL%20Server%202019%20Editions%20Datasheet.pdf"/>
<node TEXT="SQL Union_Except_Intersect.png" ID="ID_1107935469" CREATED="1590794496775" MODIFIED="1590794496778" LINK="file:/C:/Temp/testFolder/SQL%20Union_Except_Intersect.png"/>
<node TEXT="sql-cheat-sheet (otra).pdf" ID="ID_1267732926" CREATED="1590794496779" MODIFIED="1590794496780" LINK="file:/C:/Temp/testFolder/sql-cheat-sheet%20(otra).pdf"/>
<node TEXT="SQL-cheat-sheet.pdf" ID="ID_166063076" CREATED="1590794496782" MODIFIED="1590794496784" LINK="file:/C:/Temp/testFolder/SQL-cheat-sheet.pdf"/>
<node TEXT="SQL-Commands-Cheat-Sheet.pdf" ID="ID_1020207632" CREATED="1590794496785" MODIFIED="1590794496788" LINK="file:/C:/Temp/testFolder/SQL-Commands-Cheat-Sheet.pdf"/>
<node TEXT="sql-data-type.pdf" ID="ID_802864638" CREATED="1590794496789" MODIFIED="1590794496792" LINK="file:/C:/Temp/testFolder/sql-data-type.pdf"/>
<node TEXT="sql.png" ID="ID_388958750" CREATED="1590794496793" MODIFIED="1590794496796" LINK="file:/C:/Temp/testFolder/sql.png"/>
<node TEXT="TenThingsWeveLearnedFromBlockly.pdf" ID="ID_1027572709" CREATED="1590794496797" MODIFIED="1590794496799" LINK="file:/C:/Temp/testFolder/TenThingsWeveLearnedFromBlockly.pdf"/>
<node TEXT="TipsForCreatingABlockLanguage.pdf" ID="ID_920760680" CREATED="1590794496801" MODIFIED="1590794496803" LINK="file:/C:/Temp/testFolder/TipsForCreatingABlockLanguage.pdf"/>
<node TEXT="TSQL-STRING-FUNCTIONS-CHEAT-SHEET.pdf" ID="ID_908454014" CREATED="1590794496805" MODIFIED="1590794496808" LINK="file:/C:/Temp/testFolder/TSQL-STRING-FUNCTIONS-CHEAT-SHEET.pdf"/>
</node>
</node>
</map>
