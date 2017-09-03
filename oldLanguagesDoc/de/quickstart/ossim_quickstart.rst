:Author: OSGeo-Live
:Author: Massimo Di Stefano
:Author: Pirmin Kalberer
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-ossim.png
  :scale: 80 %
  :alt: project logo
  :align: right

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

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

* Öffne die Bilddatei über :menuselection:`File --> Open Image --> /home/user/data/landsat/clip10.tif`

* Wiederhole die vorherige Operation für die Dateien : `clip20.tif`
  und `clip30.tif`

  .. image:: /images/screenshots/ossim/ossim_imagelinker3.jpg
     :scale: 60 %
     :align: right

* die Dateien können auch über drag & drop ins Imagelinker Hauptfenster geladen werden

* gehe zu :menuselection:`menu bar --> window --> tile`

* Sie können die gesamten Satelliten Band Sichten synchron halten, indem Sie :guilabel:`Fit` in einem 
  der kleineren Fenster klicken anschließend wählen Sie :guilabel:`Propagate` im selben Fenster. Versuchen Sie diese Schritte in einem größeren Fenster.

* Stellen Sie im großen Fenster sicher, dass der Zoom-Button nicht ausgewählt ist.
  Klicken Sie in die Mitte der großen Straßenkreuzung. Klicken Sie bei vergrößerter Ansicht wiederum den :guilabel:`Propagate`
  Button im großen Fenster, um die Ansicht der anderen Fenster zu synchronisieren.
  In ähnlicher Weise können Sie den Pan-Button (Verschieben) verwenden. Bewegen Sie sich per klick entlang der Straße und klicken 
  anschließend :guilabel:`Propagate` zur Synchronisation.

Ein teifergehendes Tutorial finden Sie `Online`_.

.. _`Online`: http://www.geofemengineering.it/GeofemEngineering/Blog/Voci/2010/3/15_OSGEO_-_Live_-_DVD_-_%22running_imagelinker%22.html


OssimPlanet
================================================================================

* Starte OssimPlanet über sein Icon aus dem Menü "Desktop GIS" auf dem Desktop 

* Wähle :menuselection:`File --> Open Image --> /home/user/data/landsat/clip10.tif`, um die LANDSAT Daten zu laden (oder laden Sie die Daten per drag & drop in das Hauptfenster).

* Klicken Sie im Layerbaum auf das kleine Dreieck links *Image Layers*, um den Bereich zu vergrößern. 
  Doppelklicken Sie auf ``clip10``.

.. note:: Zur Deaktivierung des Tageslicht auto-shading, deaktivieren :menuselection:`File --> Preferences --> Environment --> Enable Ephemeris`

* Experimentieren Sie mit der Navigation mit Hilfe der Maus. Verschieben Sie die Ansicht über das Drücken der 
  linken Maustaste; rollen Sie über das Drücken der mittleren Maustaste; zoomen Sie rein und raus 
  über die rechte Maustaste.

.. commented * Try follow the Imagelinker tutorial, generate an RGB image from the original  single band images and load the result in ossimplanet.

* Wenn Sie sich verirren, doppelklicken Sie auf das Blue Marble Bild im Layerbaum auf auf die Ansicht des gesamten Globus zu gelangen.


Wie geht es weiter?
================================================================================

* Ossim Tutorials

.. _Tutorials: http://download.osgeo.org/ossim/tutorials/pdfs/

* Dokumentation auf der DVD

  Schauen Sie sich auch die Dokumentation_ an auf dieser DVD.

.. _Dokumentation: ../../ossim/

