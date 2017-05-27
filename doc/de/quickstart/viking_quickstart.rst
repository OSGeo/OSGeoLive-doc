:Author: Hamish Bowman
:Author: Frank Gasdorf
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-viking.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://sourceforge.net/apps/mediawiki/viking/

********************************************************************************
Viking Quickstart 
********************************************************************************

Running
================================================================================

Los geht's
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. from /usr/share/doc/viking/GETTING_STARTED


Um schnell einen Eindruck von Viking zu bekommen, gehen Sie die einzelnen Schritte durch.
 
1) Nehmen Sie Sich Daten von Ihrem GPS Gerät. Haben Sie keines zur Verfügung, können Sie einfach vorab eingerichtete Daten der OSGeo-Live DVD verwenden. Diese sind unter :file:`~/data/vector/R/test_trk2.gpx` zu finden.

2) Öffnen Sie Viking und laden Sie die GPX Datei über :menuselection:`File --> Open`. Viking wird den Ausschnitt der Karte auf die Mitte der Datensätze (GPX) zentrieren. Es kann jedoch möglich sein, dass Wegpunkte und Tracks so weit voneinander entfernt sind, dass Sie keine Daten sehen werden. In diesem Fall expandieren Sie den Layer (in der Layer-Ansicht auf der linken Seite), klappen Sie "Waypoints" auf, wählen Sie einen aus und mit der rechten Maustaste wählen Sie :guilabel:`Goto`. Sie können die Karte über den linken oder mittleren Mausbutton verschieben. Über das Mausrad können Sie zoomen.

3) Fügen Sie nun einen neuen Layer hinzu (:menuselection:`Layers --> New Map Layer`). 
Beginnen Sie mit *OpenStreetMap (Mapnik)*, da sie über gute Coverages für einen Großteil des Planeten verfügen. Wählen Sie ein passendes cache Verzeichnis für die Speicherung Ihrer Download-Karten, der default ist ok. Verwende Sie den alpha-Schieber, sofern Sie die Transparenz anpassen möchten und wählen Sie die `Autodownload map` Checkbox. 
Sie können auch später Karten manuell über das Menü :menuselection:`Tools --> Maps Download` herunterladen, wenn Sie derzeit nicht online sind. Abschließend setzen Sie `Zoom level` auf *Use Viking Zoom Level*.

4) Sie werden feststellen, dass der Kartenkacheln über dem Layer der Tracks dargestellt wird. Sehen Sie sich die Layeransicht auf der linken Seite an. Hier ist der Layer mit dem Namen "Map" ÜBER dem Track/Waypoint Layer, der von den GPX Datensatz oder Ihrem GPS Gerät erzeugt wurde. Wählen Sie den obersten *Karten*-Layer und klicken Sie anschließend den Button mit dem Pfeil nach unten (unterhalb der Layerliste). Nun werden die Tracks über dem Kartenlayer dargestellt.

.. TODO: some explanation of the layers, etc. is required.

.. Geocoding: available in version 1.3 and newer


