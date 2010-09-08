:Author: OSGeo Live
:Author: Pirmin Kalberer
:Version: osgeo-live4.0
:License: Creative Commons

.. _osgearth-quickstart:
 
.. image:: images/project_logos/logo-osgearth.gif
  :scale: 100 %
  :alt: project logo
  :align: right

*******************
osgEarth Quickstart 
*******************

osgEarth is a scalable terrain rendering toolkit for OpenSceneGraph_.

.. _OpenSceneGraph: http://www.openscenegraph.org/

This Quick Start describes how to start a 3D globe with different overlays.


Running osgearth_simple
=======================

* Open a console and start the osgearth simple viewer::

   osgearth_simple --window 50 50 900 700

* Press '1'-'5' for predefined viewpoints.
* Click to navigate; right-click or scroll wheel to zoom in and out.
* Drag mouse with left+right click for tilt.
* hit the 'escape' key to quit 


Overlay a WMS Service
=====================

* In a console, type::

   osgearth_simple --window 50 50 900 700 /usr/share/osgearth/maps/nexrad.earth

You should see a globe with radar data over some parts of North America.


Running osgviewer with an OpenStreetMap overlay
===============================================

* In a console, type::

   export OSG_FILE_PATH=/usr/share/osgearth
   osgviewer /usr/share/osgearth/maps/openstreetmap.earth

*  Press 'h' for help. See also openscenegraph.org_ for more help.

.. _openscenegraph.org: http://www.openscenegraph.org/projects/osg/wiki/Support/UserGuides/osgviewer


What Next?
==========

To learn more about osgEarth, a starting point is the `Documentation page`_ in the Wiki.

.. _`Documentation page`: http://osgearth.org/wiki/Documentation
