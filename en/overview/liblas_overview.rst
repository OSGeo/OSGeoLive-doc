:Author: Howard Butler
:Version: osgeo-live5.0draft
:License: Creative Commons

.. _liblas-overview:

.. image:: ../../images/project_logos/logo-libLAS.png
  :alt: project logo
  :align: right
  :target: http://liblas.org/



libLAS
========

libLAS is a C/C++ library for reading and writing the very common `LAS`
`LiDAR`_ format. The `ASPRS LAS format`_ is a sequential binary format used to
store data from LiDAR sensors and by LiDAR processing software for data
interchange and archival.

Core Features
-------------

* C/C++/Python APIs for reading, writing, and manipulating LAS data
* `Command line utilities`_ for manipulating LAS data based on `LAStools`_
* Coordinate reprojection via `GDAL <http://gdal.org>`__

Details
-------
 
**Website:** http://geotools.org/

**Licence:** BSD

**Software Version:** 1.7.0b2

**Supported Platforms:** Cross Platform C++ -- Mac OS X, Windows (via `OSGeo4W`__), and Linux

**API Interfaces:** C, C++, Python

**Support:** `Communication and Support <http://liblas.org/community.html>`_

Quickstart
----------

* `Quickstart documentation <http://liblas.org/start.html>`_


.. _`LIDAR`: http://en.wikipedia.org/wiki/LIDAR
.. _`IGSB`: http://www.igsb.uiowa.edu/
.. _`Martin Isenburg`: http://www.cs.unc.edu/~isenburg/
.. _`LAStools`: http://www.cs.unc.edu/~isenburg/lastools/
.. _`Martin Isenburg and Jonathan Shewchuk`: http://www.cs.unc.edu/~isenburg/lastools/
.. _`LAS Format`: http://www.lasformat.org/
.. _`ASPRS Standards Committee`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`ASPRS LAS format`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`Command line utilities`: http://liblas.org/utilities/index.html
.. _`OSGeo4W`: http://trac.osgeo.org/osgeo4w/