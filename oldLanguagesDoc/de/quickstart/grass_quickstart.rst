:Author: Hamish Bowman
:Reviewer: Markus Neteler
:Version: osgeo-live8.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
:Copyright: 2011-2015 by The OSGeo Foundation

.. image:: /images/project_logos/logo-GRASS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://grass.osgeo.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
GRASS GIS 7 Quickstart 
********************************************************************************

Ablauf
================================================================================

Um GRASS auf der Live DVD zu starten, klicken Sie auf den GRASS Link im Menü unter 
:menuselection:`Geospatial --> Desktop GIS`. 
Im "Welcome to GRASS GIS" Fenster wählen Sie den North Carolina Datensatz als Location 
und "user1" als Mapset. Klicken Sie dann auf [*Start GRASS*].

.. image:: /images/screenshots/800x600/grass-startup.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Dies started GRASS mit der `grafischen Benutzeroberfläche (geschrieben in wxPython) <../../grass/wxGUI.html>`_.

.. tip::  Wenn Sie auf einem Netbook mit kleinem Display (800x600 Auflösung) arbeiten, 

kann der Startbildschirm zu groß und der [*Start GRASS*] Knopf eventuell 
versteckt sein. In diesem Fall sollten Sie das Fenster an einer Ecke etwas 
größer ziehen. Oder Sie können das gesamte Fenster weiter nach oben schieben, 
in dem Sie die Alt-Taste gedrückt halten und dann das Fenster mit der 
linken Maustaste verschieben.

Regardless of the dataset you choose
it is recommended that you always use a `user` mapset for your everyday work
instead of the special PERMANENT Mapset, das die Projektions-Metadaten und Basiskartographie enthält.

Karten anzeigen
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/screenshots/800x600/grass-layerman.png
  :scale: 50 %
  :alt: screenshot
  :align: left

Einmal drinnen, laden Sie eine Rasterkarte, z.B.: "`elevation`" aus der 
PERMANENT Mapset. Dazu klicken Sie in der Werkzeugleiste auf das erste 
Icon mit einem "+", um eine Rasterkarte zu öffnen. Dann wählen Sie eine 
Karte in dem "*Name der Rasterkarte, die angezeigt werden soll*" Pulldown 
Menü aus und klicken auf :guilabel:`Ok`.

Auf ähnliche Weise laden Sie die Vektorkarte "`roadsmajor`" aus der PERMANENT 
Mapset, indem Sie in der Werkzeugleite auf das zweite Icon mit einem "+" 
und einer Linie, die wie ein "V" aussieht, klicken, um eine Vektorkarte zu öffnen.

Die Schaltflächen verfügen über Tooltipps, die beim Mouseover-Ereignis erscheinen. Diese werden Ihnen weiterhelfen.

Es kann sein, dass Sie auf den Rasterlayer klicken müssen und über 
"Zoom to selected map(s)" in den Bereich der Daten navigieren. 

Sie sollten nun die beiden Karten im Kartenfenster sehen.

Ein Höhenprofil erstellen
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/screenshots/800x600/grass-profile.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Zurück im `GIS Ebenen-Manager` klicken Sie auf den Namen `elevation` der 
Rasterkarte, um sie auszuwählen. Im `Map Display` Fenster klicken Sie dann 
rechts neben den Zoom Icons auf das Symbol mit der roten Profillinie und 
wählen die Funktion **Zu profilierende Oberflächenkarte** aus. Das `@PERMANENT` Mapset 
wird automatisch gesucht. Falls die Karte `elevation` nicht direkt in dem Fenster Profilanalyse angezeigt 
wird, wählen Sie sie bitte aus und klicken auf :guilabel:`Ok`. 
Das zweite Icon von 
Links ermöglicht das Erstellen eines Profils. Wählen Sie es aus, und 
klicken Sie ein paar Punkte auf die Karte im Map Display. Danach gehen Sie 
zurück in das Fenster der Profilanalyse und klicken dort auf das Augen 
Icon, um das Profil anzuzeigen. Um die Analyse zu beenden, klicken Sie 
den `Beenden` Knopf ganz rechts.

Erstellen einer zufälligen Oberfläche
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Nun erstellen wir eine neue Karte. Wählen Sie :menuselection:`Raster --> 
Erzeuge Oberflächen --> Fraktale Oberfläche` aus dem Menü (fast ganz unten);
geben Sie der neuen Karte einen Namen; passen Sie Parameter im Optionen 
Reiter an, wenn Sie wollen (die Standards sind aber bereits ok), und klicken 
Sie dann auf [*Run*]. Sie können nun das Fenster des *r.surf.fractal* Moduls 
schließen mit dem Knopf [Schließen].

.. image:: /images/screenshots/800x600/grass-fractal.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Farben von Rasterkarten anpassen
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Nun fügen Sie die neue Rasterkarte zur Kartenliste hinzu, wie Sie es 
bereits mit der Karte `elevation` gemacht haben. Die Karte liegt nun aber 
in der Mapset "user1". Sie können nun auch die Anzeige der Karte `elevation` 
über das Kontrollkästchen deaktivieren. Klicken Sie wieder auf das Augen 
Icon, um die neue Rasterkarte anzuzeigen.
Die Farben sind vielleicht nicht so, wie sie wollen, also ändern wir sie. 
Wählen Sie die neu erstellte Rasterkarte wieder aus und öffnen dann im 
Menü `Raster` den Eintrag :menuselection:`Farben verwalten --> Farbtabellen` aus. 
Im Reiter 'Definition' wählen Sie aus der Auswahl "Farbname" 
und wählen Sie einen Eintrag aus. Klicken Sie auf den [Los] Knopf und schließen Sie den 
*r.colors* Dialog. Die Farben sollten dann automatisch aktualisiert werden.

Erstellen einer Reliefschattierung
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/screenshots/800x600/grass-shadedrelief.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Als nächstes wollen wir aus der Karte "elevation" eine Karte mit 
Reliefschattierung erstellen. Als erstes stellen wir sicher, dass 
die "region" auf die Rasterkarte "`elevation`" in der PERMANENT 
Mapset gesetzt ist. Dazu wählen wir die Karte in der Layerliste aus,
drücken mit der rechten Maustaste auf den Namen und wählen dann 
"Arbeitsbereich auf Grundlage selektierter Karte setzen". 

Im Menü `Raster` wählen wir nun :menuselection:`Reliefanalyse --> 
Reliefschattierung` und starten den Dialog. Mit der Karte "elevation" *@PERMANENT* 
als Eingabe, als Ausgabe können Sie beispielweise `schattiertes_relief` 
angeben und klicken Sie anschließend bitte auf [Los]. 
Die neue Karte `schattiertes_relief` *@user1* wurde in die Layerliste eingefügt.
Deaktivieren Sie die Kontrollkästchen der anderen Karten, um lediglich die neu erzeugte 
Rasterebene anzuzeigen.

Wassereinzugsgebiete und Flüsse
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Wieder selektieren wir die Karte `elevation` *@PERMANENT*. Wenn Sie den Ausschnitt
verändert haben sollten, klicken Sie mit der rechten Maustaste auf den Layernamen 
wählen Sie :menuselection:`Set computational region from selected map(s)`
aus dem Kontextmenü um die volle Ausdehnung für die Berechnung der Wassereinzugsgebiete zu erhalten.

.. note:: Die wxGUI Karte Anzeige und Zoom ist unabhängig 
    und hat keinen Effekt auf die Berechnung. Prüfen Sie die Berechnungsregion über 
    :menuselection:`Settings --> Region --> Display Region`; 
    dies ist äußerst wichtig für jede Raster Grid Operation.
    Raster Karten mit verschiedenen Begrenzungen und Auflösungen werden  
    on-the-fly auf die Berechnungsregion angepasst.

Wählen Sie nun im Menü `Raster` :menuselection:`Hydrologische Modellierung --> 
Wassereinzugsgebiet Analyse`. Der ``r.watershed`` Dialog öffnet sich. 
Wählen Sie die `elevation` Karte als Eingabe, im Reiter 'Eingabe 
Optionen' setzen sie *threshold* Wert auf 10000 Zellen, dann im 
Reiter 'Ausgabe Optionen' geben Sie "elev.basins" als basin Option 
und "streams" für die "Name for output stream segments raster map"-Option 
direkt darunter an. Dann klicken Sie auf [Los].

Zurück im Ebenen-Manager fügen Sie die zwei neuen Karten wieder in die 
Layerliste ein. Stellen sicher, dass nur diese für die Anzeige 
ausgewählt sind. Klicken Sie mit der rechten Maustaste auf "`elev.basins`" 
und wählen Sie "Deckkraft ändern". Setzen Sie den Wert auf 50% 
und rendern Sie 
die Karte nochmal.

.. image:: /images/screenshots/800x600/grass-watersheds.png
  :scale: 50 %
  :alt: screenshot
  :align: left

Im Ebenen-Manager klicken Sie auf den fünften Knopf von rechts, um 
eine Ebene mit Gitternetz hinzuzufügen. Als size Wert geben Sie 0:03 
für 0 Grad und 3 Minuten an. Das Format ist D:M:S. Im Reiter 
"Optional" aktivieren Sie "Zeichnen Sie geographisches Gitter 
basierend auf dem aktuellen Ellipsoid", klicken Sie auf [Los] und 
rendern Sie die Karten nochmal.

Um eine Maßstabsleiste anzuzeigen, klicken Sie im Map Display Fenster 
auf das Icon "Kartenelemente hinzufügen" und klicken auf Nordpfeil und 
Maßstab hinzufügen. Lesen Sie die Instruktionen und klicken dann auf 
[Ok]. Eine Maßstabsleiste erscheint oben links, ziehen Sie sie in die 
linke untere Ecke. Aus demselben Menü wählen Sie nun "Legende 
hinzufügen", wählen die Rasterkarte aus, für die eine Legende erstellt 
werden soll. Danach klicken Sie [Ok] und dann nochmal [Ok]. Ziehen Sie 
nun die Legende auf die rechte Seite des Map Displays.

Wenn Ihnen die Schriftarten nicht gefallen, können Sie im GIS 
Ebenen-Manager das Menü :menuselection:`Einstellungen  --> 
Einstellungen` öffnen und im Reiter Fenster Schriftarten auswählen 
und auf den Knopf [Anwenden] klicken. Sie müssen wieder auf den Knopf 
"Karte neu anzeigen" rechts neben dem Augen Icon klicken, damit die 
Veränderung sichtbar wird.

Vektor Module
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Die Aufgaben haben nur einige Rasteranalysen vorgestellt. GRASS GIS bietet 
aber auch eine Vielzahl von Vektor Modulen, die genauso umfangreich 
sind wie für die Rasteranalyse. GRASS bietet eine topologische 
Vektorumgebung.

3D Visualisierung
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/screenshots/1024x768/grass-nviz.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Starten Sie die 3D Visualisierung über das Menü :menuselection:`Datei 
--> NVIZ (erfordert TclTk)`. Wählen Sie die Karte `elevation` als 
Raster Höhenkarte. Sobald die 3D Ansicht gestartet wird, vergrößern Sie 
das Fenster. Nun wählen Sie im Menü `Visualize --> Raster Oberflächen`, 
setzen die fein Auflösung auf "1" und spielen Sie ein wenig mit den 
Schiebereglern und dem Positionspfeil, um unterschiedliche Ansichten 
zu erzeugen.

Um Satelliten- oder Luftbilder über das Höhenmodell zu legen, klicken 
Sie auf den Knopf **Oberflächenattribute** und wählen dort color aus. 
Klicken Sie in dem neuen Dialog auf "Neue Karte" und wählen dann eine 
Karte aus, die für die Farbdarstellung verwendet werden soll. Im 
Spearfish Datensatz ist "`spot.image`" und im North Carolina Datensatz 
"`lsat7_2002_50`" eine gute Wahl. Klicken Sie nun auf "Annehmen" und 
zurück im Hauptfenster auf den Knopf "Zeichne" in der oberen linken 
Ecke.

Beenden und die Kommandozeile
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Wenn Sie GRASS beenden möchten, wählen Sie im GRASS GUI 
:menuselection:`Datei --> GUI Schließen`. Bevor Sie auch das GRASS 
Kommandofenster schliessen, versuchen Sie mal ein Modul über die 
Kommandozeile zu starten, in dem Sie eingeben "``g.manual --help``". 
Sie bekommen nun eine Liste von Optionen angezeigt. In der Kommandozeile 
hat GRASS seine wahren Stärken. All Kommandos können in Skripten zu 
umfangreichen Prozessketten zusammengefasst werden. Populäre Sprachen 
sind Bourne Shell and Python, die einige nette Tricks parat haben, um 
das Skripten zu vereinfachen. Damit können Sie in weniger als 5 Minuten 
ein neues GRASS Modul schreiben, inklusive Parser, GUI und Hilfeseiten 
Template.

"``g.manual -i``" startet einen Webbrowser mit den Modul Hilfeseiten. 
Am Ende schliessen Sie den Browser und tippen "exit" in das GRASS 
Terminal, um die GRASS GIS Umgebung zu verlassen.

Weiterführende Links
================================================================================

* Besuchen Sie die GRASS GIS Webseite unter `http://grass.osgeo.org <http://grass.osgeo.org>`_
* Besuchen Sie die GRASS GIS Wiki Hilfeseiten unter `http://grasswiki.osgeo.org/wiki/ <http://grasswiki.osgeo.org/wiki/>`_
* Mehr Tutorials und Übersichten finden Sie unter <http://grasswiki.osgeo.org/wiki/GRASS_Help#Getting_Started>`_.
* Eine `Synopsis der GRASS GIS Module' <http://grass.osgeo.org/gdp/grassmanuals/grass64_module_list.pdf>`_, inklusive
  GUI Menü Position. (`HTML version <http://grass.osgeo.org/grass70/manuals/full_index.html>`_)
* Wenn die 400 GIS Module in GRASS nicht ausreichen, werfen Sie mal einen Blick auf die vielen Add-ons 
  unter `http://grass.osgeo.org/grass70/manuals/addons/ <http://grass.osgeo.org/grass70/manuals/addons/>`_
