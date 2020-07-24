<map version="freeplane 1.8.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="OpenWithNotepad++" FOLDED="false" ID="ID_889872586" CREATED="1595532534890" MODIFIED="1595532583067" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
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
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
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
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="7" RULE="ON_BRANCH_CREATION"/>
<node TEXT="description" LOCALIZED_STYLE_REF="styles.topic" POSITION="right" ID="ID_496019362" CREATED="1595538933740" MODIFIED="1595540635328">
<edge COLOR="#0000ff"/>
<node TEXT="Script to open files or node&apos;s notes as files in Notepad++" ID="ID_672112149" CREATED="1595538948717" MODIFIED="1595539006095"/>
<node TEXT="general idea:" ID="ID_1158237344" CREATED="1595540970979" MODIFIED="1595541022359"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      simplified for clarity
    </p>
  </body>
</html>

</richcontent>
<node TEXT="if node" ID="ID_1353490900" CREATED="1595540698836" MODIFIED="1595540731402">
<node TEXT="has a link to a file" ID="ID_187460760" CREATED="1595540731408" MODIFIED="1595540742150">
<node TEXT="--&gt;" ID="ID_201884451" CREATED="1595540742160" MODIFIED="1595540745982">
<node TEXT="it opens the file in N++" ID="ID_987102454" CREATED="1595540745988" MODIFIED="1595540760471"/>
</node>
</node>
<node TEXT="has a note" ID="ID_776425221" CREATED="1595540763684" MODIFIED="1595540774541">
<node TEXT="--&gt;" ID="ID_220116147" CREATED="1595540774548" MODIFIED="1595540789913">
<node TEXT="saves it as a textfile and opens it in N++" ID="ID_717675618" CREATED="1595540794586" MODIFIED="1595540819934"/>
</node>
</node>
<node TEXT="has no link nor note" ID="ID_1084538243" CREATED="1595540823126" MODIFIED="1595540850287">
<node TEXT="--&gt;" ID="ID_1598674139" CREATED="1595540852393" MODIFIED="1595540857640">
<node TEXT="takes text from tempFile and brings it as a note" ID="ID_709575493" CREATED="1595540863690" MODIFIED="1595540892395"/>
</node>
</node>
</node>
</node>
<node TEXT="more detailed:" FOLDED="true" ID="ID_1000893871" CREATED="1595540970979" MODIFIED="1595541108514"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      this is really what it does
    </p>
  </body>
</html>

</richcontent>
<node TEXT="if node" ID="ID_756444367" CREATED="1595540698836" MODIFIED="1595540731402">
<node TEXT="has a link to a file" ID="ID_911475778" CREATED="1595540731408" MODIFIED="1595540742150">
<node TEXT="--&gt;" ID="ID_278781565" CREATED="1595540742160" MODIFIED="1595540745982">
<node TEXT="it opens the file in N++" ID="ID_316514421" CREATED="1595540745988" MODIFIED="1595541184771"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      only if extension is listed as accepted by the user in the script
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node TEXT="has a note" ID="ID_1387994166" CREATED="1595540763684" MODIFIED="1595541737277"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      and has no link
    </p>
  </body>
</html>

</richcontent>
<node TEXT="--&gt;" ID="ID_931832867" CREATED="1595540774548" MODIFIED="1595540789913">
<node TEXT="saves it as a textfile and opens it in N++" ID="ID_1194509406" CREATED="1595540794586" MODIFIED="1595540819934">
<node TEXT="if it&apos;s a groovy script" ID="ID_1578354392" CREATED="1595541218993" MODIFIED="1595541274914">
<node TEXT="it saves it in the user&apos;s scripts folder" ID="ID_1687636439" CREATED="1595541274919" MODIFIED="1595541274921"/>
</node>
<node TEXT="if not" ID="ID_1748074945" CREATED="1595541291909" MODIFIED="1595541296054">
<node TEXT="it saves it in a default folder" ID="ID_624553843" CREATED="1595541297954" MODIFIED="1595541384136"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      defined by the user in the script
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="has no link nor note" ID="ID_706329662" CREATED="1595540823126" MODIFIED="1595540850287">
<node TEXT="--&gt;" ID="ID_1179727127" CREATED="1595540852393" MODIFIED="1595540857640">
<node TEXT="takes text from last tempFile and brings it as a note" ID="ID_872217065" CREATED="1595540863690" MODIFIED="1595541583738"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      brings the groovy script text
    </p>
  </body>
</html>

</richcontent>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      it looks at the groovyTemp.groovy file created in the user's scripts folder
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="more more detailed" FOLDED="true" ID="ID_92849586" CREATED="1595541599546" MODIFIED="1595541620768">
<node TEXT="look at the script logic" ID="ID_490321295" CREATED="1595541622227" MODIFIED="1595541654703" LINK="#ID_555265321"/>
</node>
<node TEXT="more more more detailed" FOLDED="true" ID="ID_1038108371" CREATED="1595541664992" MODIFIED="1595541673292">
<node TEXT="look at the groovy file" ID="ID_411352942" CREATED="1595541673301" MODIFIED="1595541688941"/>
</node>
</node>
<node TEXT="script logic" LOCALIZED_STYLE_REF="styles.topic" FOLDED="true" POSITION="right" ID="ID_555265321" CREATED="1595539015561" MODIFIED="1595540635327">
<edge COLOR="#0000ff"/>
<node TEXT="- it works on the selected node(s)" ID="ID_1604346896" CREATED="1595539029727" MODIFIED="1595539923565"/>
<node TEXT="(1) - if node has" ID="ID_653154403" CREATED="1595539029727" MODIFIED="1595539192510">
<node TEXT="" ID="ID_1608332519" CREATED="1595539206644" MODIFIED="1595539206646">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="a link to a file" ID="ID_957059637" CREATED="1595539192515" MODIFIED="1595539254382"/>
<node TEXT="and" ID="ID_100934665" CREATED="1595539192514" MODIFIED="1595539265481"/>
<node TEXT="its extension is &apos;listed as accepted&apos; by the user" ID="ID_1624494507" CREATED="1595539265483" MODIFIED="1595539942226"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      look inside the script
    </p>
    <p>
      
    </p>
    <p>
      there is a list of strings with the extensions you 'accept' to be opened by notepad++
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;(it is only to avoid opening binary, jpg, pdf,excel, etc&nbsp;&nbsp;files in N++ accidentally)
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="" ID="ID_690373046" CREATED="1595539206639" MODIFIED="1595539206644">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="--&gt; opens file in Notepad ++" ID="ID_747382340" CREATED="1595539192512" MODIFIED="1595539192513"/>
</node>
</node>
<node TEXT="else" ID="ID_1719755852" CREATED="1595539029730" MODIFIED="1595539029730">
<node TEXT="(2) - if the node has a note" ID="ID_1733739007" CREATED="1595539029730" MODIFIED="1595539029730">
<node TEXT="- if the note begins with &quot;//.&quot;" ID="ID_1824371215" CREATED="1595539029734" MODIFIED="1595539727555">
<node TEXT="--&gt;  the first word after that is the extension of the temp file to createChild" ID="ID_405744788" CREATED="1595539727561" MODIFIED="1595539727565"/>
<node TEXT="else extension =&apos;txt&apos;" ID="ID_158613085" CREATED="1595539029734" MODIFIED="1595539029734"/>
</node>
<node TEXT="- if the extension == &apos;groovy&apos;" ID="ID_1730431207" CREATED="1595539029734" MODIFIED="1595539774339">
<node TEXT="--&gt;" ID="ID_1844404510" CREATED="1595539774343" MODIFIED="1595539799843">
<node TEXT="- tempfile should be created in /userDirectory/scripts folder" ID="ID_860489083" CREATED="1595539799846" MODIFIED="1595540000042"/>
<node TEXT="- add a first line to the text indicating ExecutionMode" ID="ID_1549004961" CREATED="1595539029734" MODIFIED="1595540009289"/>
</node>
</node>
<node TEXT="- take the note text and create (or overwrite) the tempfile appending the extension to the file&apos;s name" ID="ID_1695799053" CREATED="1595539029735" MODIFIED="1595539029735"/>
<node TEXT="- open it in Notepad ++" ID="ID_1531927186" CREATED="1595539029735" MODIFIED="1595539029735"/>
</node>
</node>
<node TEXT="else" ID="ID_1891080716" CREATED="1595539029735" MODIFIED="1595539029735">
<node TEXT="(3) case node has" ID="ID_1016994575" CREATED="1595539029735" MODIFIED="1595540134003">
<node TEXT="" ID="ID_1266013017" CREATED="1595540087954" MODIFIED="1595540087955">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT=" no link" ID="ID_880372124" CREATED="1595540078126" MODIFIED="1595540078128"/>
<node TEXT="and" ID="ID_179171637" CREATED="1595540078123" MODIFIED="1595540078125"/>
<node TEXT="no note" ID="ID_1013138817" CREATED="1595540078120" MODIFIED="1595540140836"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      no note) (**)
    </p>
    <p>
      
    </p>
    <p>
      (**) I did it this way to not accidentaly overwrite a note that has a script with an other text. This way I can edit the script in N++ and load the last version as a new child.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="" ID="ID_1629094572" CREATED="1595540087952" MODIFIED="1595540087954">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="--&gt;" ID="ID_669535441" CREATED="1595540087956" MODIFIED="1595540094031">
<node TEXT="- add a child to the node" ID="ID_1972483938" CREATED="1595539029736" MODIFIED="1595539029736"/>
<node TEXT="- take the text of the last saved groovyTemp.groovy and put it in the new node&apos;s note&#xa;(without the first line where the executionmode is indicated)" ID="ID_1167585906" CREATED="1595539029736" MODIFIED="1595540200016"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="install" LOCALIZED_STYLE_REF="styles.topic" FOLDED="true" POSITION="right" ID="ID_1460052182" CREATED="1595540236094" MODIFIED="1595540635324">
<edge COLOR="#0000ff"/>
<node TEXT="copy the script into your scripts folder" ID="ID_808915544" CREATED="1595540247235" MODIFIED="1595540553580" NUMBERED="true">
<node TEXT="open your user directory" ID="ID_607663106" CREATED="1595540288110" MODIFIED="1595540379802" LINK="menuitem:_OpenUserDirAction" NUMBERED="true"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      click the icon of this node
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="in there you can see your &apos;scripts&apos; folder" ID="ID_1573664807" CREATED="1595540390955" MODIFIED="1595540452348" NUMBERED="true"/>
<node TEXT="copy the file &apos;OpenWithNotepad++.groovy&apos; in there" ID="ID_1326603284" CREATED="1595540462824" MODIFIED="1595540534308" NUMBERED="true"/>
</node>
<node TEXT="modify the script for your use" ID="ID_655711305" CREATED="1595542807019" MODIFIED="1595542915806" NUMBERED="true"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      define some variables for your system
    </p>
  </body>
</html>

</richcontent>
<node TEXT="variables" ID="ID_1029684309" CREATED="1595542924547" MODIFIED="1595542930815">
<node TEXT="fileAddressTemp" ID="ID_718454581" CREATED="1595542939615" MODIFIED="1595542975079"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      //file name and path (but without extension) where temp files are going to be saved. this directory must exist (in my case 'C:/Temp/').
    </p>
  </body>
</html>

</richcontent>
<node TEXT="def fileAddressTemp = &quot;C:/Temp/notaTemp.&quot;" ID="ID_1865025916" CREATED="1595543042818" MODIFIED="1595543358356"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      in my case
    </p>
  </body>
</html>

</richcontent>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      the strings is the concatenation of two parts:
    </p>
    <p>
      
    </p>
    <p>
      the folder where I wan`t my tempfiles to be created.
    </p>
    <p>
      in my case:
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;C:/Temp/&quot;
    </p>
    <p>
      
    </p>
    <p>
      and the name of the tempfile without the extension but with the dot at the end
    </p>
    <p>
      in my case:
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;notaTemp.&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      ----&gt;
    </p>
    <p>
      
    </p>
    <p>
      concatenated : &quot;C:/Temp/notaTemp.&quot;
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="addressNpp" ID="ID_1162221139" CREATED="1595542948347" MODIFIED="1595543013091"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      // its the location where the Notepad++ executable is instaled
    </p>
  </body>
</html>

</richcontent>
<node TEXT="def addressNpp = &apos;C:\\Program Files\\Notepad++\\notepad++.exe&apos;" ID="ID_1181116457" CREATED="1595543372047" MODIFIED="1595543390083"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      in my case
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="acceptedFileExtensions" ID="ID_1565157321" CREATED="1595542953438" MODIFIED="1595543030343"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      // list of file extension I decided that can be opened with Notepad ++ (it is only to avoid opening pdf or excel files in N++ accidentally)
    </p>
  </body>
</html>

</richcontent>
<node TEXT="def acceptedFileExtensions = [&apos;groovy&apos;, &apos;sql&apos;, &apos;txt&apos;, &apos;ini&apos;, &apos;cfg&apos;]" ID="ID_928801239" CREATED="1595543410789" MODIFIED="1595543473211"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      in my case
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="close and reopen Freeplane" ID="ID_1598293444" CREATED="1595540646267" MODIFIED="1595540661642" NUMBERED="true"/>
<node TEXT="the script appears in the menu" ID="ID_1360122568" CREATED="1595541799349" MODIFIED="1595541869879" NUMBERED="true">
<node TEXT="/main_menu/ScriptsEdo/GroovyTempScript" ID="ID_1450021654" CREATED="1595541922165" MODIFIED="1595541922165"/>
</node>
</node>
<node TEXT="first time" LOCALIZED_STYLE_REF="styles.topic" FOLDED="true" POSITION="right" ID="ID_1642018419" CREATED="1595542003322" MODIFIED="1595542009303">
<edge COLOR="#0000ff"/>
<node TEXT="select this node --&gt;" ID="ID_1899471111" CREATED="1595542028993" MODIFIED="1595544369229" NUMBERED="true">
<font BOLD="true"/>
<node TEXT="Groovy Temp Script" ID="ID_1689576679" CREATED="1595542383852" MODIFIED="1595544493256"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      //.groovy
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      ui.informationMessage('selected node text = ' + node.text)
    </p>
    <p>
      
    </p>
    <p>
      def userDir = c.userDirectory.path
    </p>
    <p>
      
    </p>
    <p>
      def nodoResult = node.createChild(&quot;resultado de script&quot;)
    </p>
    <p>
      nodoResult.noteText = 'the path to your user directory is :&nbsp;&nbsp;\n\n' + userDir
    </p>
    <p>
      c.select(nodoResult)
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
      for the next step it must stay selected
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="and execute the &quot;open with Notepad++&quot; script" ID="ID_1565046122" CREATED="1595542428149" MODIFIED="1595544438942" NUMBERED="true"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      select it from the menu or ...
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Open with Notepad++ on selected node" ID="ID_1747272277" CREATED="1595542528786" MODIFIED="1595542766517" ICON_SIZE="40.0 pt" LINK="menuitem:_OpenWithNotepad++_on_selected_node"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      click this button
    </p>
  </body>
</html>

</richcontent>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      the node you want to open in Notepad++ must stay selected!!!
    </p>
    <p>
      
    </p>
    <p>
      take care to click this button without selecting this node
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="it opens in Freeplane, but just close it this time" ID="ID_143875946" CREATED="1595545961773" MODIFIED="1595545983942" NUMBERED="true"/>
<node TEXT="close and reopen Freeplane" ID="ID_1553385728" CREATED="1595540646267" MODIFIED="1595540661642" NUMBERED="true"/>
<node TEXT="the second script appears in the menu" ID="ID_168268620" CREATED="1595541799349" MODIFIED="1595544522235" NUMBERED="true"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      this is going to be the menu option you can use to execute your temp scripts from now on
    </p>
  </body>
</html>

</richcontent>
<node TEXT="/main_menu/ScriptsEdo/GroovyTempScript" ID="ID_412220651" CREATED="1595541922165" MODIFIED="1595541922165"/>
</node>
<node TEXT="execute this second script" ID="ID_1892086067" CREATED="1595544043360" MODIFIED="1595544535624" NUMBERED="true"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      select it from the menu or ...
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Apply Groovy Temp script on selected node" ID="ID_1945824812" CREATED="1595542528786" MODIFIED="1595544179803" ICON_SIZE="40.0 pt" LINK="menuitem:_GroovyTemp_on_single_node"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      click this button
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      the node you want to be processed by your temp script must stay selected!!!
    </p>
    <p>
      
    </p>
    <p>
      take care to click this button without selecting this node
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="the script that was just a Note in a node has been executed!!" ID="ID_633471097" CREATED="1595546021286" MODIFIED="1595546063284" NUMBERED="true"/>
</node>
<node TEXT="how I use it" LOCALIZED_STYLE_REF="styles.topic" FOLDED="true" POSITION="right" ID="ID_1749816036" CREATED="1595540672716" MODIFIED="1595544583618">
<edge COLOR="#0000ff"/>
<node TEXT="I use this scripts to have in one map my little scripts and sql test and not have a lot of files in the disk where I forget them and have problems to find them again" ID="ID_1802883405" CREATED="1595544587046" MODIFIED="1595544687583"/>
<node TEXT="use case Groovy scripts:" FOLDED="true" ID="ID_1608862163" CREATED="1595544734437" MODIFIED="1595544752203">
<node TEXT="tutorial" ID="ID_153739707" CREATED="1595544786379" MODIFIED="1595545065241">
<node TEXT="let&apos;s imagine you wan´t to make a test" ID="ID_1518168576" CREATED="1595544814255" MODIFIED="1595545285547"/>
<node TEXT="1. select this node and apply Open with Notepad ++" ID="ID_1654560672" CREATED="1595544895438" MODIFIED="1595544952653"/>
<node TEXT="it inserted a child node with the actual text of the groovy file" ID="ID_732354952" CREATED="1595544968267" MODIFIED="1595545157418"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      because the node you selected had no Link and no Note
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="2. select it (if it isn&apos;t allready selected)" ID="ID_253755407" CREATED="1595545022842" MODIFIED="1595546096832"/>
<node TEXT="3. apply Open with Notepad ++ on it" ID="ID_1807396228" CREATED="1595545096061" MODIFIED="1595545109791"/>
<node TEXT="now it opens it in N++" ID="ID_1119645915" CREATED="1595545186035" MODIFIED="1595545841335"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      because the node had a Note
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="4. modify it to your needs (in N++)&#xa;and saved it" ID="ID_1149477409" CREATED="1595545203124" MODIFIED="1595545238944">
<node TEXT="if you don&apos;t know what to do now, here is an idea:" ID="ID_1429434286" CREATED="1595545312729" MODIFIED="1595545385514">
<node TEXT="delete the content after the line 3" ID="ID_110547482" CREATED="1595545385517" MODIFIED="1595545398531"/>
<node TEXT="copy the text from the note of this node in the file in Notepad++ at the end of it" ID="ID_1259420332" CREATED="1595545405044" MODIFIED="1595547431318"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      def suma(a,b)= {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;a+b
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      ui.informationMessage('13+23 = ' + suma(13,23).toString())
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="save it" ID="ID_600409995" CREATED="1595545606026" MODIFIED="1595545608957"/>
</node>
<node TEXT="5. execute the script if it works" ID="ID_308295420" CREATED="1595545630558" MODIFIED="1595545701538"/>
<node TEXT="6 import it as a note" ID="ID_1810267914" CREATED="1595545703662" MODIFIED="1595545728317">
<node TEXT="select this node --&gt;" ID="ID_1221568427" CREATED="1595545748872" MODIFIED="1595545759442">
<node TEXT="my test:" ID="ID_1877002037" CREATED="1595545765785" MODIFIED="1595545774649"/>
</node>
<node TEXT="apply Open with Notepad ++ on it" ID="ID_231084240" CREATED="1595545096061" MODIFIED="1595545807791"/>
</node>
<node TEXT="And that&apos;s how I manage my little scrpts collection" ID="ID_1214726140" CREATED="1595545859618" MODIFIED="1595545907806"/>
</node>
</node>
<node TEXT="I added keyboard&apos;s shortcuts to this two menus" ID="ID_845973626" CREATED="1595546163258" MODIFIED="1595546299872"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      this way going to N++ back and forth is very agile
    </p>
  </body>
</html>

</richcontent>
<node TEXT="ctrl +shft + +" ID="ID_159350497" CREATED="1595546302958" MODIFIED="1595546359259"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      open with notepad ++
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="ctrl + shft + n" ID="ID_1623627792" CREATED="1595546322198" MODIFIED="1595546383195"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      groovy temp script
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="use case SQL" FOLDED="true" ID="ID_660534745" CREATED="1595546409354" MODIFIED="1595546418329">
<node TEXT="this is less interactive, but also helpfull" ID="ID_1132756112" CREATED="1595546426480" MODIFIED="1595546449352"/>
<node TEXT="my example" ID="ID_211248029" CREATED="1595546537777" MODIFIED="1595546542595">
<node TEXT="Temp tables in SQL" ID="ID_709232908" CREATED="1595546545551" MODIFIED="1595546612497"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      --.sql
    </p>
    <p>
      
    </p>
    <p>
      -- elimina tabla temporal si ya existe
    </p>
    <p>
      IF(OBJECT_ID('tempdb..#MiTablaTemporal') IS NOT NULL) BEGIN DROP TABLE #MiTablaTemporal END
    </p>
    <p>
      
    </p>
    <p>
      -- crea tabla temporal y la carga con datos filtrados desde la tabla &quot;TablePruebaExist&quot;
    </p>
    <p>
      SELECT *
    </p>
    <p>
      INTO #MiTablaTemporal
    </p>
    <p>
      FROM TablePruebaExist
    </p>
    <p>
      WHERE VAL IN (1,3)
    </p>
    <p>
      
    </p>
    <p>
      -- muestra datos de tabla temporal
    </p>
    <p>
      SELECT *
    </p>
    <p>
      FROM #MiTablaTemporal
    </p>
    <p>
      
    </p>
    <p>
      -- finalmente elimina la tabla temporal&nbsp;
    </p>
    <p>
      DROP TABLE #MiTablaTemporal
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="apply Open with Notepad ++ on it" ID="ID_936090371" CREATED="1595545096061" MODIFIED="1595546849867"/>
</node>
<node TEXT="Ijust copy manually from notepad++ to the nodes note in this cases" ID="ID_954035862" CREATED="1595546936339" MODIFIED="1595546981174"/>
</node>
<node TEXT="use case file with links" FOLDED="true" ID="ID_1752583887" CREATED="1595547008550" MODIFIED="1595547021246">
<node TEXT="when you have a node with a link to a file like this one" ID="ID_941263064" CREATED="1595547267189" MODIFIED="1595547297063">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_441532487" STARTINCLINATION="215;0;" ENDINCLINATION="215;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
<node TEXT="notaTemp.txt" ID="ID_441532487" CREATED="1595547243548" MODIFIED="1595547243549" LINK="file:/C:/Temp/notaTemp.txt"/>
<node TEXT="you can select it and open it with notepad++" ID="ID_1566922055" CREATED="1595547300533" MODIFIED="1595547333517"/>
<node TEXT="in this cas it won&apos;t wor cause this file is in my computer, not in yours, but you can test it with your owns." ID="ID_1594428052" CREATED="1595547335854" MODIFIED="1595547377857"/>
</node>
</node>
<node TEXT="What&apos;s next?" LOCALIZED_STYLE_REF="styles.topic" FOLDED="true" POSITION="right" ID="ID_1271082464" CREATED="1595547576123" MODIFIED="1595547582871">
<edge COLOR="#0000ff"/>
<node TEXT="I&apos;m going to add another map to this repository where I´m going to copy mi groovy scripts collection and test" ID="ID_43758681" CREATED="1595547585211" MODIFIED="1595547659727"/>
<node TEXT="Maybe you can add somes too" ID="ID_1232973814" CREATED="1595547660695" MODIFIED="1595547707743"/>
<node TEXT="and we can create a reference map for little groovy scripts for freeplane" ID="ID_1725613685" CREATED="1595547708917" MODIFIED="1595547768406"/>
</node>
</node>
</map>
