:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Translator: Milena Nowotarska, OSGeo
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-osgearth.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
Wprowadzenie do osgEarth 
********************************************************************************

osgEarth is a scalable terrain rendering toolkit for OpenSceneGraph_.

.. _OpenSceneGraph: http://www.openscenegraph.org/

To wprowadzenie opisuje jak uruchomiæ 3D globe z ró¿nymi overlays.


Praca z osgearth_viewer
================================================================================

* Otwórz konsolê i uruchom osgearth viewer::

   export OSG_FILE_PATH=/usr/share/osgearth
   osgearth_viewer --window 50 50 900 700 /usr/share/osgearth/maps/srtm.earth

Powinieneœ zobaczyæ glob ze scenami satelitarnymi.

* Kliknij, aby nawigowaæ globem; prawoklik lub kó³ko myszyoperuje zbli¿eniami.
* Przeci¹gnij mysz z wciœniêtymi oboma klawiszami by skrêciæ.
* Naciœnij :kbd:`h` by uzyskaæ pomoc.
* Naciœnij klawisz :kbd:`ESCAPE` aby wyjœæ. 


Praca z osgviewer i nak³adk¹ OpenStreetMap
================================================================================

* Wpisz w konsoli::

   osgviewer /usr/share/osgearth/maps/openstreetmap.earth

*  Wciœnij :kbd:`h` by wyœwietliæ pomoc. Wiêcej pomocy znajdziesz na openscenegraph.org_.

.. _openscenegraph.org: http://www.openscenegraph.org/projects/osg/wiki/Support/UserGuides/osgviewer


Co dalej?
================================================================================

Aby dowiedzieæ siê wiêcej na temat osgEarth, zacznij od `Documentation page`_ na Wiki.

.. _`Documentation page`: http://osgearth.org/wiki/Documentation
