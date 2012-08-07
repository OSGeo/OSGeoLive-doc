:Author: Hamish Bowman
:Author: Frank Gasdorf
:Version: osgeo-live6.0
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
 
#. Nehmen Sie Sich Daten von Ihrem GPS Gerät. Haben Sie keines zur Verfügung, können Sie einfach 
   vorab eingerichtete Daten der OSGeo-Live DVD verwenden. Diese sind unter 
   :file:`~/data/vector/R/test_trk2.gpx` zu finden.

#. Öffnen Sie Viking und laden Sie die GPX Datei über :menuselection:`File --> Open`. Viking wird
   den Ausschnitt der Karte auf die Mitte der Datensätze (GPX) zentrieren. Es kann jedoch möglich sein, dass 
   Wegpunkte und Tracks so weit voneinander entfernt sind, dass Sie keine Daten sehen werden. In diesem 
   Fall expandieren Sie den Layer (in der Layer-Ansicht auf der linken Seite), klappen Sie "Waypoints" 
   auf, wählen Sie einen aus und mit der rechten Maustaste wählen Sie :guilabel:`Goto`.

#. Fügen Sie nun einen neuen Layer hinzu (:menuselection:`Layers --> New Map Layer`), wählen Sie ein
   passendes Verzeichnis für die Speicherung Ihrer Tracks und klicken Sie :guilabel:`OK`. Zoomen Sie 
   zu einem entsprechenden Bereich (wir empfehlen 4 mpp) indem Sie mit der linken und rechten Maustaste
   in dem Bereich klicken, wo Ihre Tracks sind.  Wähen Sie nun :menuselection:`Tools --> Maps Download`, 
   Klicken Sie da, wo Sie Kartendaten laden möchten. 

   Sie können in den Einstellungen (rechte Maustaste auf dem Kartenlayer, anschließend :guilabel:`Properties`) 
   das automatische Herunterladen der Daten aktivieren, die Option `Autodownload maps` sollte dafür 
   aktiviert werden.

   Unabhängig vom aktivierten Tool können Sie mit gedrückter mittlerer Maustaste den Kartenausschnitt verschieben.

#. Sie werden feststellen, dass der Kartenlayer über dem Layer der Tracks dargestellt wird. Sehen 
   Sie sich die Layeransicht auf der linken Seite an. Hier ist der Layer mit dem Namen "Map" über dem 
   TrackWaypoint Layer, der von den GPX Datensatz oder Ihrem GPS Gerät erzeugt wurde. Wählen Sie den obersten 
   Layer und klicken Sie anschließend den Button mit dem Pfeil nach unten (unterhalb der Layerliste). Nun 
   werden die Tracks über dem Kartenlayer dargestellt.

.. TODO: some explanation of the layers, etc. is required.

.. Geocoding: available in version 1.3 and newer


