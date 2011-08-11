:Author: OSGeo-Live
:Author: Massimo Di Stefano
:Author: Pirmin Kalberer
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _ossim-quickstart:
 
.. image:: ../../images/project_logos/logo-ossim.gif
  :scale: 80 %
  :alt: project logo
  :align: right

****************
Ossim Quickstart 
****************

Open Source Software Image Map (OSSIM) ist eine Hochleistungs-Software für Fernerkundung,
Bildverarbeitung, geographische Analysen und Photogrammetrie.

Dieser Quickstart beschreibt das:

  * Anzeigen von Rasterdaten mit Imagelinker
  * Starten von ossimPlanet

Imagelinker
===========

* Starte Imagelinker über sein Icon aus dem Menü "Spatial Tools" auf dem Desktop 
* Wähle die Projektdatei über :menuselection:`File --> Open Project --> /home/user/ossim/landsatrgb.prj`
* gehe zu :menuselection:`menu bar --> window --> tile`
* Wähle ein :menuselection:`image window --> wähle das pan Icon --> Klicke auf das Bild --> drücke den knopf "propagate"`
* Sie sehen nun 3 graustufen Satellitenbilder. 

  .. image:: ../../images/screenshots/800x600/ossim_imagelinker2.jpg
     :scale: 100 %

Für das gesamte Tutorial sehen Sie diesen `blog article`_.

.. _`blog article`: http://www.geofemengineering.it/GeofemEngineering/Blog/Voci/2010/3/15_OSGEO_-_Live_-_DVD_-_%22running_imagelinker%22.html


OssimPlanet
===========

* Starte OssimPlanet über sein Icon aus dem Menü "Desktop GIS" auf dem Desktop 

* Wähle :menuselection:`File --> Open Image --> /home/user/data/raster/band1.tiff`

* Gehe zu :menuselection:`menu --> Open kml --> /home/user/data/raster/*.kml`

* Gehe zu :menuselection:`legend tree --> Image Layers --> open the trees --> Doppelklick auf das band1 image`, 
  Sie sollten nun sehen, wie die Szene zur Bild Location zoomt 

* Navigiere die Szene.


`Note`: um das daylight auto-shading abzustellen, deaktivieren Sie :menuselection:`Preferences --> Environment --> Enable Ephemeris`


Weiterführende Links
====================

* Ossim Tutorials

  Folgen Sie den Tutorials_ um mehr über OSSIM zu lernen.

.. _tutorials: http://download.osgeo.org/ossim/tutorials/pdfs/

* Dokumentation auf der DVD

  Schauen Sie sich auch die Dokumentation_ an auf dieser DVD.

.. _Dokumentation: ../../ossim/

