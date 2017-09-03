:Author: activityworkshop
:Version: osgeo-live8.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-gpsprune.png
  :alt: project logo
  :align: right
  :target: http://gpsprune.activityworkshop.net/

********************************************************************************
GpsPrune Quickstart 
********************************************************************************

GpsPrune ist eine Java Anwendung für die Visualisierung und das Editieren von Koordinatendaten.

In diesem Quickstart werden wir Daten die sich lokal auf OSGeo-Live befinden laden und anzeigen. Außerdem werden wir online auf Informationen zugreifen. Daher ist es sinnvoll eine Internetverbindung vorliegen zu haben.

Erste Schritte 
================================================================================

Um GpsPrune auf OSGeo-Live laufen zu lassen, wählen Sie "GpsPrune" im Menü "Navigation und Karten" aus. Sie erhalten ein leeren Fenster wie im folgenden Bild.

.. image:: /images/screenshots/gpsprune/gpsprune_emptywindow.png
   :scale: 55

Nun werden wir eine Datei über den Menüeintrag :menuselection:`Datei --> Datei öffnen` laden.
Wählen Sie eine Datei. Die Datei kann entweder eine GPX-, KML- oder KMZ-Datei sein
Darüberhinaus können kommaseparierte oder tab-separierte Dateien geladen werden.
Eine geeignete GPX-Datei mit einigen Tracks findet sich unter :file:`~/data/vector/R/test_trk2.gpx`. Laden Sie diese Datei.

.. image:: /images/screenshots/gpsprune/gpsprune_trackselect.png

Da die Datei zwei Tracks enthält, werden wir aufgefordert welche geladen werden soll/en.
Wählen Sie nur den ersten Track aus und klicken Sie ok.

Jetzt sollten Sie den Track in blau auf einem weißen Hintergrund sehen.
Sofern dieser Track über Wegpunkte verfügen würde (die er nicht hat), würden diese
ebenfalls mit ihren Namen angezeigt. Unter Hauptkarte wird ein Höhendiagramm angezeigt, sofern der Track über Höhenangaben verfügt.

.. image:: /images/screenshots/gpsprune/gpsprune_test_trk2.png
   :scale: 55

Falls eine Netzwerkverbindung vorliegt, können Sie Karten über den Globus Button oder über die Menüoption :menuselection:`Ansicht --> Karte zeigen` hinzuschalten.

.. image:: /images/screenshots/gpsprune/gpsprune_mapnik.png
   :scale: 55

Jetzt können Sie die Karte mit der Maus rumschieben und ein- und auszoomen. Das Zoomen kann per Mausrad oder über Doppelklick erfolgen. Über den gedrückten rechten Mausbutton kann ein Rechteck aufgezogen werden. Über das Kontextmenü stehen weitere Optionen zur Auswahl.

Beim Klicken auf einem Punkt sieht man die Details, inklusive Höhe und Zeitstempeln falls vorhanden.
Unterhalb der Karte findet man das Höhenprofildiagramm, das den Profil zeigt falls die Daten Höheninformation enthalten.
Wenn man darauf klickt, wird der entsprechender Datenpunkt ausgewählt.

Anpassen der Ansicht
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Andere Kartendarstellungen sind unter der Menüoption :menuselection:`Einstellungen --> Kartenhintergrund setzen`. Schauen Sie sich 
einmal eine alternative Karte an wie beispielsweise die "Cyclemap" (Radkarte).
Diese verwendet Karten von OpenCycleMap, um für das Wandern und Rad fahren zusätzliche nützliche Information 
wie Höhenlinien und Radwege anzuzeigen.

.. image:: /images/screenshots/gpsprune/gpsprune_cyclemap.png
   :scale: 55

Wikipedia
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Lassen Sie uns nun ein paar mehr Informationen
über die Lage des Tracks finden.
Wir können dies indem wir einen Punkt auswählen und anschließend den 
Menüeintrag :menuselection:`Track --> Get nearby Wikipedia articles` auswählen.
Diese Aktion zeigt eine Liste von Artikeln, deren Koordinaten am nächsten 
zum ausgewählten Punkt liegen. Per Klick auf einen Eintrag werden
weitere Informationen in der unteren Box angezeigt.

.. image:: /images/screenshots/gpsprune/gpsprune_wikipedialist.png

Sie können über den Button `Laden` diesen Punkt in GpsPrune laden, oder
 über `Webseite anzeigen` die Wikipedia-Seite im Browser öffnen.

Gpsies
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Lassen Sie uns abschließend einen anderen Track der selben Region runterladen.
Wir können dazu den Menüeintrag :menuselection:`Track --> Get Gpsies tracks` 
verwenden und auf der Webseite gpsies.com nach Tracks suchen.  
Wieder erhalten wir eine Liste von passenden Einträgen. Bei Auswahl eines Tracks 
wird eine Beschreibung zum Track angezeigt.

.. image:: /images/screenshots/gpsprune/gpsprune_gpsieslist.png

Klicken Sie auf `Laden`, um den Track zu den bereits vorhandenen Daten zu laden.  
Nun sehen Sie beide Tracks in einer Ansicht.

Distanzmessungen
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Um herauszufinden wie lang der Anstieg ist, klicken wir auf den Start
nördlich von Dunedin und wählen :menuselection:`Range --> Set range start`.
Anschließend wählen wir den höchsten Punkt des Tracks am höchsten Punkt des 
Höhendiagramms und wählen :menuselection:`Range --> Set range end`. Nun können 
wir im "Range details" Bereich sehen, dass dieser Teil des Tracks 8.55 km 
lang ist, Aufstieg 346 m und Abstieg lediglich 10 m.

.. image:: /images/screenshots/gpsprune/gpsprune_rangedetails.png
   :scale: 55

GpsPrune auf anderen Systemen verwenden
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Nachdem Sie GpsPrune ausprobiert haben, kann es sein dass Sie GpsPrune auf einem anderen System
benutzen wollen, egal ob das System Linux oder Mac OSX oder Windows ist.  Manche Linuxdistributionen enthalten
GpsPrune in den normalen Software Tools, Sie müssen nur nach "Prune" oder "Gpsprune" suchen.  Anderenfalls können
Sie die aktuelle Version als Jardatei von der Webseite herunterladen.

GpsPrune muss normalerweise nicht installiert werden Es braucht einen Java-Laufzeitumgebung in der Version 1.5 oder höher.  Die Funktionalität kann erweitert werden, indem Sie zusätzlich andere freie Software installieren, wie zum Beispiel *Gpsbabel*, *Gnuplot*, *Exiftool* oder *Java3d* installieren.

Sobald Sie GpsPrune auf Ihrem System installiert haben, können Sie Ihre Einstellungen über
den Menüeintrag :menuselection:`Einstellungen --> Einstellungen speichern` speichern.
Ihrem Einstellungen sind liegen beim nächsten Start von GpsPrune weiterhin vor. 

Weiterführende Literatur
================================================================================

* GpsPrune Homeseite (englisch): http://gpsprune.activityworkshop.net/
* Bildschirmfotos: http://gpsprune.activityworkshop.net/screenshots.html
* Benutzeranleitung: http://gpsprune.activityworkshop.net/how-tos_de.html

