:Author: OSGeo-Live
:Author: Massimo Di Stefano
:Author: Pirmin Kalberer
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-ossim.png
  :scale: 80 %
  :alt: project logo
  :align: right

********************************************************************************
Ossim Quickstart 
********************************************************************************

Open Source Software Image Map (OSSIM) ist eine Hochleistungs-Software für Fernerkundung,
Bildverarbeitung, geographische (GIS) Analysen und Photogrammetrie.

Dieser Quickstart beschreibt das:

  * Multi-Anzeige von Multiband Raster Satellitenbildern mit Imagelinker
  * Drapieren von georeferenzierten Rasterdaten auf einem 3D Globus mit ossimPlanet

Imagelinker
================================================================================

* Starte Imagelinker über sein Icon aus dem Menü "Spatial Tools" auf dem Desktop 

* Öffne die Bilddatei über :menuselection:`File --> Open Image --> /home/user/data/raster/cape_cod/p011r031_7t19990918_z19_nn10.tif`

* Wieder hole die vorherige Operation für die Dateien : `p011r031_7t19990918_z19_nn20.tif`
  und `p011r031_7t19990918_z19_nn30.tif`

  .. image:: ../../images/screenshots/1024x768/ossim_imagelinker3.jpg
     :scale: 60 %
     :align: right

* die Dateien können auch über drag & drop ins Imagelinker Hauptfenster geladen werden

* gehe zu :menuselection:`menu bar --> window --> tile`

* Sie können die gesamten Satelliten Band Sichten synchron halten, indem Sie :guilabel:`Fit` in einem 
  der kleineren Fenster klicken anschließend wählen Sie :guilabel:`Propagate` im selben Fenster. Versuchen Sie diese Schritte in einem größeren Fenster.

* Stellen Sie im großen Fenster sicher, dass der Zoom-Button nicht ausgewählt ist und klicken Sie in die Mitte des Kaps (Wellfleet Harbor). 
  Klicken Sie dann nochmals für eine nähere Ansicht. Klicken Sie wiederum den :guilabel:`Propagate`
  Button im großen Fenster, um die Ansicht der anderen Fenster zu synchronisieren.
  In ähnlicher Weise können Sie den Pan-Button (Verschieben) verwenden. Klicken Sie auf die Spitze des Kaps und klicken 
  anschließend :guilabel:`Propagate` zur Synchronisation.

Ein teifergehendes Tutorial finden Sie `Online`_.

.. _`Online`: http://www.geofemengineering.it/GeofemEngineering/Blog/Voci/2010/3/15_OSGEO_-_Live_-_DVD_-_%22running_imagelinker%22.html


OssimPlanet
================================================================================

* Starte OssimPlanet über sein Icon aus dem Menü "Desktop GIS" auf dem Desktop 

* Wähle :menuselection:`File --> Open Image --> /home/user/data/raster/cape_cod/cape_cod/p011r031_7t19990918_z19_nn10.tif`

* Klicken Sie im Layerbaum auf das kleine Dreieck links *Image Layers*, um den Bereich zu vergrößern. 
  Doppelklicken Sie auf ``p011r031_7t19990918_z19_nn10.tif``.

.. note:: Zur Deaktivierung des Tageslicht auto-shading, deaktivieren :menuselection:`File --> Preferences --> Environment --> Enable Ephemeris`

* Experimentieren Sie mit der Navigation mit Hilfe der Maus. Verschieben Sie die Ansicht über das Drücken der 
  linken Maustaste; rollen Sie über das Drücken der mittleren Maustaste; zoomen Sie rein und raus 
  über die rechte Maustaste.

* Laden Sie die North Carolina LANDSAT Bilder von ``/home/user/data/north_carolina/rast_geotiff/lsat7_2002_10.tif``.
  Doppelklicken Sie aberals auf den Namen im Layerbaum, um zu dem Bereich zu zoomen.

* Wenn Sie sich verirren, doppelklicken Sie auf das Blue Marble Bild im Layerbaum auf auf die Ansicht des gesamten Globus zu gelangen.


Wie geht es weiter?
================================================================================

* Ossim Tutorials

  Folgen Sie den Tutorials_ um mehr über OSSIM zu lernen.

.. _tutorials: http://download.osgeo.org/ossim/tutorials/pdfs/

* Dokumentation auf der DVD

  Schauen Sie sich auch die Dokumentation_ an auf dieser DVD.

.. _Dokumentation: ../../ossim/

