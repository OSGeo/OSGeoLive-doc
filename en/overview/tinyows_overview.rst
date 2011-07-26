:Author: OSGeo-Live
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported  (CC BY 3.0)

.. _tinyows-overview:

.. image:: ../../images/project_logos/logo-TinyOWS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.tinyows.org/

TinyOWS
=======

Web Feature Service
~~~~~~~~~~~~~~~~~~~

TinyOWS is a high performance, Transactional Web Feature Service (WFS-T)

.. Cameron Comment: I suggest removing the following line as it doesn't add extra value to the statement. You have said the important message well, more concisely in the previous sentence.
.. It's aim is to keep being the fastest Open Source WFS solution available.

which is light weight and easy to deploy, using a CGI or Fast CGI interface and using PostGIS for data storage.

.. image:: ../../images/screenshots/800x600/tinyows_digitizing.jpg
  :scale: 55 %
  :alt: digitizing
  :align: right

.. Cameron Comment: Could TinyOWS be used with a different database to PostGIS? If so, you may wish to revise above to say 

TinyOWS is commonly used in conjunction with MapServer to provide fast WFS and WFS-T services to QGIS and/or OpenLayers clients. It is in production use in various organisations from around the world, including risk adverse government agencies.
TinyOWS strictly implements the WFS 1.0 and 1.1 standards, and has passed all OGC CITE units tests (~ 1000 unit tests).


.. Cameron Comment: Can we please use a background image which doesn't have the text watermark. The text looks unprofessional, and from a distance, it looks as if one of the layers is throwing an error or similar.

Core Features
-------------

* PostGIS data connection
* CGI and Fast-CGI interface
* GML 2.1.2, 3.1.1 and GeoJson 1.0 output
* MapFile parser to allow a single config file for both apps

.. Cameron Comment: I'm not clear. Do you mean that the same MapFile configuration file can be used by tinyows and mapserver?

* Log handle

.. Cameron Comment: What does "Log handle" mean?

Implemented Standards
---------------------
* WFS 1.0 and WFS 1.1: Basic and Transitional profiles
* FE 1.0.0 and FE 1.1.0
* GML 2.1.2 and 3.1.1 Simple Profile (SF-0)

Details
-------

**Website:** http://www.tinyows.org/

**Licence:** MIT

**Software Version:** 1.0

**Supported Platforms:** Linux, Unix, Mac, Windows

**API Interfaces:** CGI - Fast CGI

**Support:** http://lists.maptools.org/pipermail/tinyows-users/


Quickstart
----------
    
* `Quickstart documentation <../quickstart/tinyows_quickstart.html>`_

