:Author: Howard Butler
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeolive11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_liblas@
@OSGEO_KIND_liblas@


@NAME_liblas@
================================================================================

LiDAR Data Access
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

libLAS is a C/C++ library for reading and writing the very common `LAS`
`LiDAR`_ format. The `ASPRS LAS format`_ is a sequential binary format used to
store data from LiDAR sensors and by LiDAR processing software for data
interchange and archival.

LiDAR (Light Detection and Ranging) is a form of high precision range detection much like a radar system that 
uses laser light as the electromagnetic emission. One of LiDAR systems' 
products is a "point cloud" data product that can be conceptualized as a 
series of point measurements representing distance from the sensor to a returned 
emission.  A common storage format for these point cloud data is ASPRS LAS format.

@SCREENSHOT_liblas@

Core Features
--------------------------------------------------------------------------------

* C/C++/Python APIs for reading, writing, and manipulating LAS data
* `Command line utilities`_ for manipulating LAS data based on `LAStools`_
* Coordinate reprojection via `GDAL <https://gdal.org>`__

Details
--------------------------------------------------------------------------------
 
**Website:** @WEB_liblas@

**Licence:** BSD

**Software Version:** |version-liblas|

**Supported Platforms:** Cross Platform C++ -- Mac OS X, Windows (via `OSGeo4W`_), and Linux

**API Interfaces:** C, C++, Python

**Support:** `Communication and Support <https://liblas.org/community.html>`_


.. _`LIDAR`:  https://en.wikipedia.org/wiki/LIDAR
.. _`LAStools`: http://www.cs.unc.edu/~isenburg/lastools/
.. _`LAS Format`: http://www.lasformat.org/
.. _`ASPRS Standards Committee`: https://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`ASPRS LAS format`: https://www.asprs.org/divisions-committees/lidar-division/laser-las-file-format-exchange-activities.html
.. _`Command line utilities`: https://liblas.org/utilities/index.html
.. _`OSGeo4W`: https://trac.osgeo.org/osgeo4w/
.. _`Wikipedia`: http://en.wikipedia.org/wiki/LIDAR

@VMDK_liblas@
@QUICKSTART_liblas@

.. presentation-note
    libLAS is a C/C++ library for reading and writing the LAS LiDAR format. LiDAR, or Light Detection and Ranging, is a form of high precision range detection, much like radar or sonar, that uses laser light as the electromagnetic emission.
