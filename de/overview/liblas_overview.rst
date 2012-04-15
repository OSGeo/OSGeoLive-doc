:Author: Howard Butler
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _liblas-overview-de:

.. image:: ../../images/project_logos/logo-libLAS.png
  :alt: project logo
  :align: right
  :target: http://liblas.org/

libLAS
================================================================================

LiDAR Datenzugriff
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

libLAS ist eine C/C++ Bibliothek zum Lesen und Schreiben des sehr verbreiteten `LAS`
`LiDAR`_ Formats. Das `ASPRS LAS Format`_ ist ein sequentielles Binärformat, das zum Speichern von Daten von
LiDAR Sensoren und von LiDAR Prozessierungssoftware für den Datenaustausch und die Archivierung verwendet wird.

.. image:: ../../images/screenshots/800x600/liblas.jpg
  :alt: LiDAR Acquisition
  :align: right
  :scale: 80 %
  
LiDAR (Light Detection and Ranging) ist eine Form von hochpräziser Bereichsermittlung ähnlich einem Radarsystem, das 
Laserstrahlen als electromagnetische Emissionen nutzt. Eines der LiDAR Systems' 
Produkte ist ein "Punktwolken"-Daten-Produkt, das eine Serie von Punktmessungen erfasst, die eine Entfernung von einem Sensor zu einerr empfangenen Emission darstellen.
Ein übliches Speicherformat für diese Punktwolken ist das ASPRS LAS Format.

Kernfunktionen
--------------------------------------------------------------------------------

* C/C++/Python API zum Lesen, Schreiben und Manipulieren von LAS Daten
* `kommandozeilenbasierte Programme`_ zur Manipulation von LAS Daten basierend auf `LAStools`_
* Koordinaten Umprojektion über `GDAL <http://gdal.org>`__

Details
--------------------------------------------------------------------------------
 
**Webseite:** http://liblas.org

**Lizenz:** BSD

**Software Version:** 1.7.0b2

**Unterstützte Plattformen:** Cross Platform C++ -- Mac OS X, Windows (via `OSGeo4W`_), and Linux

**API Schnittstellen:** C, C++, Python

**Support:** `Communication and Support <http://liblas.org/community.html>`_

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/liblas_quickstart>`

.. _`LIDAR`: http://en.wikipedia.org/wiki/LIDAR
.. _`LAStools`: http://www.cs.unc.edu/~isenburg/lastools/
.. _`LAS Format`: http://www.lasformat.org/
.. _`ASPRS Standards Committee`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`ASPRS LAS format`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`kommandozeilenbasierte Programme`: http://liblas.org/utilities/index.html
.. _`OSGeo4W`: http://trac.osgeo.org/osgeo4w/
.. _`Wikipedia`: http://en.wikipedia.org/wiki/LIDAR
