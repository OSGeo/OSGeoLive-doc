:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Author: Frank Gasdorf
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-osgearth.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
osgEarth Quickstart 
********************************************************************************

osgEarth ist eine skalierbares Terrain-Rendering-Toolkit für `OpenSceneGraph <http://www.openscenegraph.org/>`_.
Diese Kurzanleitung beschreibt, wie ein 3D-Globus mit verschiedenen Overlays gestartet werden kann.


Running osgearth_viewer
================================================================================

* Öffnen Sie die Konsole und starten Sie den osgearth Viewer::

   export OSG_FILE_PATH=/usr/share/osgearth
   osgearth_viewer --window 50 50 900 700 /usr/share/osgearth/maps/srtm.earth

Sie sollten im Anschluss einen Globus mit Satellitenbildern sehen.

* Drücken Sie die Tasten :kbd:`1` - :kbd:`5` für die vorgegebenen Winkel
* Durch klick mit der linken Maustaste, für ``Zoom In``
* Verwenden Sie die rechte Maustaste, für ``Zoom Out``, 
* mit dem Mausrad können sie ebenso hinein- bzw. herauszuzoomen.
* Kippen : Ziehen Sie die Maus, wenn Sie die rechte und linke Maustaste gedrückt halten.
* Drücken Sie :kbd:`h` für die Hilfe.
* Drücken Sie :kbd:`ESCAPE`, um die Anwendung zu beenden.

osgviewer mit einem OpenStreetMap Overlay starten
================================================================================

* Geben Sie in der Konsole Folgendes ein::

   osgviewer /usr/share/osgearth/maps/openstreetmap.earth

*  Drücken Sie :kbd:`h` für die Hilfe. Weiter Hilfeinformationen finden Sie unter openscenegraph.org_.

.. _openscenegraph.org: http://www.openscenegraph.org/projects/osg/wiki/Support/UserGuides/osgviewer


Wie geht es weiter?
================================================================================
Um mehr über osgEarth zu erfahren, empfielht sich die Dokumentationsseite_ im Wiki.

.. _`Dokumentationsseite`: http://osgearth.org/wiki/Documentation
