:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _osgearth-overview:

.. image:: ../../images/project_logos/logo-osgearth.gif
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://osgearth.org/


osgEarth
================================================================================

Terrain rendering toolkit
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

osgEarth is a scalable terrain rendering toolkit for OpenSceneGraph_ (OSG), an open source, high performance, 3D graphics toolkit.  Just create a simple XML file, point it at your imagery, elevation, and vector data, load it into your favorite OSG application, and go!
osgEarth supports all kinds of data and comes with lots of examples to help you get up and running quickly and easily. 

.. _OpenSceneGraph: http://www.openscenegraph.org/

.. image:: ../../images/screenshots/1024x768/osgearth.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

Core Features
--------------------------------------------------------------------------------

osgEarth makes is easy to deploy scalable terrain models: 

* Create terrain models - either offline, or dynamically at run-time 
* Load whole-earth terrains without writing any code 
* Layer imagery to produce high-resolution insets 
* Combine multiple imagery, elevation, and vector data sources on the fly 
* Set up map tile caches to maximize performance 
* Adjust layer opacity for multi-texturing effects 

But osgEarth does more than just render terrain: 

* Drape vector (GIS) data on the terrain 
* Reproject data among different coordinate reference systems 
* Place external models on the terrain with lat/long coordinates 
* Do fast intersection testing 
* Incorporate new data into existing VPB databases (without rebuilding them) 
* Access terrain tiles directly for non-visual processes 

Things you can see:

* GeoTIFF imagery and Digital Elevation Model (DEM) files (plus lots of other formats) 
* Vector data like ESRI shapefiles 
* OGC-compliant web mapping data (like WMS_) 
* GIS layers published with MapServer_ or `ESRI ArcGIS Server`_
* Online maps like OpenStreetMap_, `ArcGIS Online`_, or `NASA OnEarth`_

.. _WMS: http://www.opengeospatial.org
.. _MapServer: http://mapserver.org
.. _`ESRI ArcGIS Server`: http://www.esri.com/software/arcgis/arcgisserver/
.. _OpenStreetMap: http://openstreetmap.org
.. _`ArcGIS Online`: http://resources.esri.com/arcgisonlineservices/
.. _`NASA OnEarth`: http://onearth.jpl.nasa.gov


Details
--------------------------------------------------------------------------------

**Website:** http://osgearth.org/

**Licence:** GNU Lesser General Public License (LGPL) 

**Software Version:** 2.0

**Supported Platforms:** Linux, Mac, Windows

**API Interfaces:** C++

**Commercial Support:** http://osgearth.org/#ProfessionalServices


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/osgearth_quickstart>`


