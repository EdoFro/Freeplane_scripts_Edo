<map version="freeplane 1.8.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Example MAP" FOLDED="false" ID="ID_819943156" CREATED="1590784750245" MODIFIED="1590784858050">
<edge DASH="SOLID"/>
<hook NAME="MapStyle" zoom="1.1">
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
<node TEXT="Instructions" STYLE_REF="Organizador" FOLDED="true" POSITION="right" ID="ID_1687633798" CREATED="1590789587612" MODIFIED="1590791056779"><richcontent TYPE="NOTE">

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
<node TEXT="testFolder" POSITION="right" ID="ID_1185882537" CREATED="1590793502579" MODIFIED="1591060876046" LINK="file:/C:/Temp/testFolder/">
<icon BUILTIN="bookmark"/>
<node TEXT="Manual_freeplane.pdf" ID="ID_323868643" CREATED="1591064075958" MODIFIED="1591064075960" LINK="file:/C:/Temp/testFolder/Manual_freeplane.pdf"/>
<node TEXT="20200403_COVID-19 Response_vSHARED.pdf" ID="ID_1507114017" CREATED="1591064075879" MODIFIED="1591064075882" LINK="file:/C:/Temp/testFolder/20200403_COVID-19%20Response_vSHARED.pdf"/>
<node TEXT="Audiobooks" ID="ID_176030905" CREATED="1591064219501" MODIFIED="1591064711399">
<node TEXT="La isla del tesoro.mp3" ID="ID_1037841027" CREATED="1591064075955" MODIFIED="1591064723101" LINK="file:/C:/Temp/testFolder/La%20isla%20del%20tesoro.mp3"/>
<node TEXT="Blade runner.mp3" ID="ID_19882897" CREATED="1591064075891" MODIFIED="1591064723109" LINK="file:/C:/Temp/testFolder/Blade%20runner.mp3"/>
</node>
<node TEXT="boletos de bus" ID="ID_1109485483" CREATED="1591064138281" MODIFIED="1591064707043">
<node TEXT="boleto bus de Stgo a Valpo.pdf" STYLE_REF="Siguiente tarea" ID="ID_362644090" CREATED="1591064075895" MODIFIED="1591064723125" LINK="file:/C:/Temp/testFolder/boleto%20bus%20de%20Stgo%20a%20Valpo.pdf"/>
<node TEXT="" ID="ID_887576594" CREATED="1591064384111" MODIFIED="1591064384111">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="boletos (1).pdf" ID="ID_1408178904" CREATED="1591064075898" MODIFIED="1591064723140" LINK="file:/C:/Temp/testFolder/boletos%20(1).pdf"/>
<node TEXT="boletos (2).pdf" ID="ID_1369358815" CREATED="1591064075903" MODIFIED="1591064723158" LINK="file:/C:/Temp/testFolder/boletos%20(2).pdf"/>
<node TEXT="" ID="ID_277296520" CREATED="1591064384111" MODIFIED="1591064384111">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="revisar" STYLE_REF="Tarea pendiente" ID="ID_1971815500" CREATED="1591064384111" MODIFIED="1591064407464"/>
</node>
<node TEXT="to Stgo" STYLE_REF="Organizador" ID="ID_36919308" CREATED="1591064333980" MODIFIED="1591064347517">
<node TEXT="boletos-g1 (1).pdf" ID="ID_521016296" CREATED="1591064075907" MODIFIED="1591064723169" LINK="file:/C:/Temp/testFolder/boletos-g1%20(1).pdf"/>
<node TEXT="boletos-g1.pdf" ID="ID_89956166" CREATED="1591064075910" MODIFIED="1591064723179" LINK="file:/C:/Temp/testFolder/boletos-g1.pdf"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      jgsdfkgyds siudsa dsilsldgds
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="boletos-g1x.pdf" ID="ID_672737844" CREATED="1591064075914" MODIFIED="1591064723189" LINK="file:/C:/Temp/testFolder/boletos-g1x.pdf"/>
<node TEXT="boletos.pdf" ID="ID_1554252355" CREATED="1591064075917" MODIFIED="1591064723199" LINK="file:/C:/Temp/testFolder/boletos.pdf"/>
</node>
</node>
<node TEXT="BPM" ID="ID_843119914" CREATED="1591064168431" MODIFIED="1591064703746">
<node TEXT="BPMN-2.0-Poster-DE.pdf" ID="ID_1358453227" CREATED="1591064075920" MODIFIED="1591064723207" LINK="file:/C:/Temp/testFolder/BPMN-2.0-Poster-DE.pdf"/>
<node TEXT="SCCC2017-TrackBPM-paper-ID-64pdf.pdf" ID="ID_1996230535" CREATED="1591064075961" MODIFIED="1591064723227" LINK="file:/C:/Temp/testFolder/SCCC2017-TrackBPM-paper-ID-64pdf.pdf"/>
<node TEXT="Business Process Management For Dummies.pdf" ID="ID_43271473" CREATED="1591064075923" MODIFIED="1591064723239" LINK="file:/C:/Temp/testFolder/Business%20Process%20Management%20For%20Dummies.pdf"/>
<node TEXT="Business_Process_Management_Report_from_IT_Central_Station_2019-03-09.pdf" ID="ID_960516705" CREATED="1591064075929" MODIFIED="1591064723249" LINK="file:/C:/Temp/testFolder/Business_Process_Management_Report_from_IT_Central_Station_2019-03-09.pdf"/>
<node TEXT="Business_Process_Management_Shortlist_from_IT_Central_Station_2019-04-09.pdf" ID="ID_407906763" CREATED="1591064075937" MODIFIED="1591064723267" LINK="file:/C:/Temp/testFolder/Business_Process_Management_Shortlist_from_IT_Central_Station_2019-04-09.pdf"/>
<node TEXT="Industry4.0ChallengesforBusinessProcessManagement.pdf" ID="ID_1816996201" CREATED="1591064075944" MODIFIED="1591064723279" LINK="file:/C:/Temp/testFolder/Industry4.0ChallengesforBusinessProcessManagement.pdf"/>
<node TEXT="Signavio-Kochbuch-WEB.pdf" ID="ID_509058399" CREATED="1591064075968" MODIFIED="1591064723289" LINK="file:/C:/Temp/testFolder/Signavio-Kochbuch-WEB.pdf"/>
<node TEXT="BDM-Poster-DE.pdf" ID="ID_313521498" CREATED="1591064075888" MODIFIED="1591064723299" LINK="file:/C:/Temp/testFolder/BDM-Poster-DE.pdf"/>
</node>
<node TEXT="SQL" ID="ID_892090574" CREATED="1591064123454" MODIFIED="1591064697547">
<node TEXT="SQL Joins.jpeg" ID="ID_1954774408" CREATED="1591064075972" MODIFIED="1591064723310" LINK="file:/C:/Temp/testFolder/SQL%20Joins.jpeg"/>
<node TEXT="SQL logical order.png" ID="ID_1991670431" CREATED="1591064075975" MODIFIED="1591064723320" LINK="file:/C:/Temp/testFolder/SQL%20logical%20order.png"/>
<node TEXT="SQL Server 2019 Editions Datasheet.pdf" ID="ID_966256339" CREATED="1591064075977" MODIFIED="1591064723330" LINK="file:/C:/Temp/testFolder/SQL%20Server%202019%20Editions%20Datasheet.pdf"/>
<node TEXT="SQL Union_Except_Intersect.png" ID="ID_1407977488" CREATED="1591064075979" MODIFIED="1591064723348" LINK="file:/C:/Temp/testFolder/SQL%20Union_Except_Intersect.png"/>
<node TEXT="sql-cheat-sheet (otra).pdf" ID="ID_150248400" CREATED="1591064075983" MODIFIED="1591064723350" LINK="file:/C:/Temp/testFolder/sql-cheat-sheet%20(otra).pdf"/>
<node TEXT="SQL-cheat-sheet.pdf" ID="ID_332020226" CREATED="1591064075986" MODIFIED="1591064723360" LINK="file:/C:/Temp/testFolder/SQL-cheat-sheet.pdf"/>
<node TEXT="SQL-Commands-Cheat-Sheet.pdf" ID="ID_3053818" CREATED="1591064075989" MODIFIED="1591064723370" LINK="file:/C:/Temp/testFolder/SQL-Commands-Cheat-Sheet.pdf"/>
<node TEXT="sql-data-type.pdf" ID="ID_1010596026" CREATED="1591064075991" MODIFIED="1591064723380" LINK="file:/C:/Temp/testFolder/sql-data-type.pdf"/>
<node TEXT="sql.png" ID="ID_576677762" CREATED="1591064075994" MODIFIED="1591064723390" LINK="file:/C:/Temp/testFolder/sql.png"/>
<node TEXT="TSQL-STRING-FUNCTIONS-CHEAT-SHEET.pdf" ID="ID_1448611593" CREATED="1591064075997" MODIFIED="1591064723400" LINK="file:/C:/Temp/testFolder/TSQL-STRING-FUNCTIONS-CHEAT-SHEET.pdf"/>
<node TEXT="joincheatsheet.pdf" ID="ID_415972925" CREATED="1591064075952" MODIFIED="1591064723408" LINK="file:/C:/Temp/testFolder/joincheatsheet.pdf"/>
<node TEXT="ShortcutsCheatSheet_18.1.pdf" ID="ID_627175959" CREATED="1591064075965" MODIFIED="1591064723418" LINK="file:/C:/Temp/testFolder/ShortcutsCheatSheet_18.1.pdf"/>
</node>
</node>
<node TEXT="actions" STYLE_REF="Proyecto" POSITION="left" ID="ID_285782579" CREATED="1590792196474" MODIFIED="1591034484798">
<node TEXT="Add Bookmark icon to selected node" ID="ID_535403633" CREATED="1590792227680" MODIFIED="1590792326177" LINK="menuitem:_IconAction.bookmark" MAX_WIDTH="250.0 px" MIN_WIDTH="250.0 px"/>
<node TEXT="open Import Folder Structure dialog" ID="ID_515440681" CREATED="1590792432657" MODIFIED="1590792468101" LINK="menuitem:_ImportFolderStructureAction" MAX_WIDTH="250.0 px" MIN_WIDTH="250.0 px"/>
<node TEXT="give node &apos;file_folder&apos; style" ID="ID_1141821658" CREATED="1590806506996" MODIFIED="1590806590678" LINK="menuitem:_AssignStyleAction.file_folder" MAX_WIDTH="250.0 px" MIN_WIDTH="250.0 px"/>
<node TEXT="update Folders" ID="ID_1825013198" CREATED="1590789533275" MODIFIED="1590792326181" LINK="menuitem:_UpdatesFoldersLikeMap2_on_single_node" MAX_WIDTH="250.0 px" MIN_WIDTH="250.0 px"/>
</node>
</node>
</map>
