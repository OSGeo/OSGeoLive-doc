:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _osgearth-quickstart:
 
.. image:: ../../images/project_logos/logo-osgearth.gif
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
osgEarth Quickstart 
********************************************************************************

osgEarth is a scalable terrain rendering toolkit for OpenSceneGraph_.

.. _OpenSceneGraph: http://www.openscenegraph.org/

This Quick Start describes how to start a 3D globe with different overlays.


Running osgearth_viewer
================================================================================

* Open a console and start the osgearth viewer::

   export OSG_FILE_PATH=/usr/share/osgearth
   osgearth_viewer --window 50 50 900 700 /usr/share/osgearth/maps/srtm.earth

You should see a globe with satellite imagery.

* Click to navigate; right-click or scroll wheel to zoom in and out.
* Drag mouse with left+right click for tilt.
* Press 'h' for help.
* hit the 'escape' key to quit 


Running osgviewer with an OpenStreetMap overlay
================================================================================

* In a console, type::

   osgviewer /usr/share/osgearth/maps/openstreetmap.earth

*  Press 'h' for help. See also openscenegraph.org_ for more help.

.. _openscenegraph.org: http://www.openscenegraph.org/projects/osg/wiki/Support/UserGuides/osgviewer


What Next?
================================================================================

To learn more about osgEarth, a starting point is the `Documentation page`_ in the Wiki.

.. _`Documentation page`: http://osgearth.org/wiki/Documentation
