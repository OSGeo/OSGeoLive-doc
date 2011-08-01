:Author: Howard Butler
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported  (CC BY 3.0)

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

.. Cameron Comment: Please include a suitable graphic. In this case, probably a pretty picture of LiDAR data over a coverage? Maybe something like this: http://www.loc.gov/exhibits/911/images/lg-map-lidar1.jpg . Make sure you have rights to publish the image.

.. Cameron Comment: Note that many (most?) readers won't know what LIDAR, or ASPRS LAS is. They also might not be connected to the internet, so won't be able to follow links you provide. Hence, please add a sentence or two here explaining what they are and why you would use it.

Core Features
-------------

* C/C++/Python APIs for reading, writing, and manipulating LAS data
* `Command line utilities`_ for manipulating LAS data based on `LAStools`_
* Coordinate reprojection via `GDAL <http://gdal.org>`__

Details
-------
 
**Website:** http://liblas.org

**Licence:** BSD

**Software Version:** 1.7.0b2

**Supported Platforms:** Cross Platform C++ -- Mac OS X, Windows (via `OSGeo4W`_), and Linux

**API Interfaces:** C, C++, Python

**Support:** `Communication and Support <http://liblas.org/community.html>`_

Quickstart
----------


* :doc:`Quickstart documentation <../quickstart/liblas_quickstart>`

.. _`LIDAR`: http://en.wikipedia.org/wiki/LIDAR
.. _`LAStools`: http://www.cs.unc.edu/~isenburg/lastools/
.. _`LAS Format`: http://www.lasformat.org/
.. _`ASPRS Standards Committee`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`ASPRS LAS format`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`Command line utilities`: http://liblas.org/utilities/index.html
.. _`OSGeo4W`: http://trac.osgeo.org/osgeo4w/
