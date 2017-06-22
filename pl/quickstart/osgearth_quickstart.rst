:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Translator: Milena Nowotarska, OSGeo
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-osgearth.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
Wprowadzenie do osgEarth 
********************************************************************************

osgEarth jest skalowalnym zestawem narzędzi do renderowania terenu dla OpenSceneGraph_.

.. _OpenSceneGraph: http://www.openscenegraph.org/

To wprowadzenie opisuje jak uruchomić 3D globe z różnymi nakładkami.


Praca z osgearth_viewer
================================================================================

* Otwórz konsolę i uruchom osgearth viewer::

   export OSG_FILE_PATH=/usr/share/osgearth
   osgearth_viewer --window 50 50 900 700 /usr/share/osgearth/maps/srtm.earth

Powinieneś zobaczyć glob ze scenami satelitarnymi.

* Kliknij, aby nawigować globem; prawoklik lub kółko myszy operuje zbliżeniami.
* Przeciągnij mysz z wciśniętymi oboma klawiszami by skręcić.
* Naciśnij :kbd:`h` by uzyskać pomoc.
* Naciśnij klawisz :kbd:`ESCAPE` aby wyjść. 


Praca z osgviewer i nakładką OpenStreetMap
================================================================================

* Wpisz w konsoli::

   osgviewer /usr/share/osgearth/maps/openstreetmap.earth

*  Wciśnij :kbd:`h` by wyświetlić pomoc. Więcej pomocy znajdziesz na openscenegraph.org_.

.. _openscenegraph.org: http://www.openscenegraph.org/projects/osg/wiki/Support/UserGuides/osgviewer


Co dalej?
================================================================================

Aby dowiedzieć się więcej na temat osgEarth, zacznij od `Documentation page`_ na Wiki.

.. _`Documentation page`: http://osgearth.org/wiki/Documentation
