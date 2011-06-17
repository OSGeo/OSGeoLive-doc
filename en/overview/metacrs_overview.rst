:Author: OSGeo Live
:Version: osgeo-live4.5
:License: Creative Commons

.. _metacrs-overview:

.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://gdal.org/

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

MetaCRS
========

Coordinate Reference Systems Meta project
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Coordinate reference systems are fundamental to every geographic project for 
representing the 3D real world in 2 dimensions on paper or on a computer display.
MetaCRS is a grouping of projects that provide coordinate reference system
transformation methods.  

MetaCRS projects are typically included in other projects as a library however
some also offer a command line interface. The component projects are
written in C++, Java for server-side use and in JavaScript for client-side 
use in a browser.

The sub-projects that make up MetaCRS include:
* PROJ.4 (C++) - used in MapServer, GRASS GIS, PostGIS, Mapnik, several others
* Proj4Js (JavaScript) - used in OpenLayers, port of PROJ.4
* CS-Map (C++) - used in MapGuide
* GeoTIFF/libgeotiff (C++) - 
* Proj4J (Java) - used ???, port of PROJ.4
* SpatialReference.org - REST service to retrieve coordinate system definitions

Core Features
-------------

* provides point transformation from one coordinate reference system to another
* includes transformation between datums
* large number of projection classes supported


Implemented Standards
---------------------

These projects typically use coordinate system definitions as defined by the 
`European Petroleum Survey Group (EPSG) <http://www.epsg.org/>.`_ and defined in
Well Known Text (WKT) format.

Details
-------

PROJ.4
------

**Website:**  http://trac.osgeo.org/proj/

**Licence:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_

**Software Version:** 4.7.0

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** C, C++, Python, Java, Ruby

**Support:** http://lists.maptools.org/mailman/listinfo/proj

Proj4js
------

**Website:**  http://trac.osgeo.org/proj4js/ and http://proj4js.org

**Licence:** `LPGL <http://www.gnu.org/copyleft/lesser.html>`_

**Software Version:** 1.0.1

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** JavaScript

**Support:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

CS-Map
------

**Website:**  http://trac.osgeo.org/proj4js/ and http://proj4js.org

**Licence:** `custom <http://svn.osgeo.org/metacrs/csmap/trunk/CsMapDev/license.txt>`_

**Software Version:** 13.0

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** C, C++

**Support:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

GeoTIFF/libgeotiff
------

**Website:**  http://trac.osgeo.org/geotiff/

**Licence:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_

**Software Version:** 1.3.0

**Support:** http://lists.maptools.org/mailman/listinfo/geotiff

Proj4J
------

**Website:**  http://trac.osgeo.org/proj4j/

**Licence:** unknown

**Software Version:** 

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** Java

**Support:** http://lists.osgeo.org/mailman/listinfo/proj4j



Quickstart
----------
    
* `Quickstart documentation <../quickstart/metacrs_quickstart.html>`_
