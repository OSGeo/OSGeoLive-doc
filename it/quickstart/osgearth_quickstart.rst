:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-osgearth.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
Guida rapida su osgEarth 
********************************************************************************

osgEarth è uno strumento scalabile per rendering di terreno da utilizzare in OpenSceneGraph_.

.. _OpenSceneGraph: http://www.openscenegraph.org/

Questa guida rapida descrive come incominciare un globo 3D con diversi layer di 
sovrapposizione.


Eseguire osgearth_viewer
================================================================================

* Aprire una console e avviare il viewer osgearth::

   export OSG_FILE_PATH=/usr/share/osgearth
   osgearth_viewer --window 50 50 900 700 /usr/share/osgearth/maps/srtm.earth

Dovreste vedere un globo con immagini satellitari.

* Clicca per navigare; tastro destro o rotella di scorrimento per fare zoom in e out.
* Trascinare il mouse cliccando il tasto sinistro e il tasto destro per l'inclinazione.
* Premere :kbd:`h` per l'aiuto.
* Premere il tasto :kbd:`ESCAPE` per uscire


Eseguire osgviewer con OpenStreetMap
================================================================================

* In una console, digitare::

   osgviewer /usr/share/osgearth/maps/openstreetmap.earth

*  Premere :kbd:`h` per l'aiuto. Vedere openscenegraph.org_ per maggiori informazioni.

.. _openscenegraph.org: http://www.openscenegraph.org/projects/osg/wiki/Support/UserGuides/osgviewer


Ed ora?
================================================================================

Per imparare di più su osgEarth, un punto di partenza è la `pagina di documentazione`_ nel Wiki.

.. _`pagina di documentazione`: http://osgearth.org/wiki/Documentation
