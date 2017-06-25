:Author: Howard Butler
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeo-live11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-libLAS.png
  :alt: project logo
  :align: right
  :target: http://liblas.org/

libLAS
================================================================================

LiDAR Data Access
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

libLAS is a C/C++ library for reading and writing the very common `LAS`
`LiDAR`_ format. The `ASPRS LAS format`_ is a sequential binary format used to
store data from LiDAR sensors and by LiDAR processing software for data
interchange and archival.

.. image:: /images/screenshots/800x600/liblas.jpg
  :alt: LiDAR Acquisition
  :align: right
  :scale: 80 %
  
LiDAR (Light Detection and Ranging) is a form of high precision range detection much like a radar system that 
uses laser light as the electromagnetic emission. One of LiDAR systems' 
products is a "point cloud" data product that can be conceptualized as a 
series of point measurements representing distance from the sensor to a returned 
emission.  A common storage format for these point cloud data is ASPRS LAS format.

Core Features
--------------------------------------------------------------------------------

* C/C++/Python APIs for reading, writing, and manipulating LAS data
* `Command line utilities`_ for manipulating LAS data based on `LAStools`_
* Coordinate reprojection via `GDAL <http://gdal.org>`__

Details
--------------------------------------------------------------------------------
 
**Website:** http://liblas.org

**Licence:** BSD

**Software Version:** |version-liblas|

**Supported Platforms:** Cross Platform C++ -- Mac OS X, Windows (via `OSGeo4W`_), and Linux

**API Interfaces:** C, C++, Python

**Support:** `Communication and Support <http://liblas.org/community.html>`_

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/liblas_quickstart>`

.. _`LIDAR`: http://en.wikipedia.org/wiki/LIDAR
.. _`LAStools`: http://www.cs.unc.edu/~isenburg/lastools/
.. _`LAS Format`: http://www.lasformat.org/
.. _`ASPRS Standards Committee`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`ASPRS LAS format`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`Command line utilities`: http://liblas.org/utilities/index.html
.. _`OSGeo4W`: http://trac.osgeo.org/osgeo4w/
.. _`Wikipedia`: http://en.wikipedia.org/wiki/LIDAR
