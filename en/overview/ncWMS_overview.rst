:Author: Guy Griffiths (guy.griffiths@reading.ac.uk)
:Version: osgeo-live7.0draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-ncWMS.png
 :scale: 100 %
 :alt: project logo
  :align: right
  :target: http://www.resc.rdg.ac.uk/trac/ncWMS/


ncWMS
================================================================================

Web Map Service
~~~~~~~~~~~~~~~

ncWMS is a web server which allows envrionmental and other spatial data to be served as georeferenced image files
to be viewed over the internet.  A key focus in ncWMS is efficient data extraction - although the source data
files might be many gigabytes in size, an image can nonetheless be generated very quickly.

Core Features
-------------

* Fast extraction of relevant data

* Generation of timeseries and vertical profile plots

* Ability to plot data along a transect

* Automatic recognition of vector-components and generation of vector arrows

* Support for a large range of projections (for both source data and target images)
 
* Support for creating animations

* Browser client included

* Support for export to Google Earth KML format

* Input formats supported:
  - NetCDF, GRIB, OPeNDAP

* Output formats supported:
  - PNG, JPEG, animated GIF, KML

Implemented Standards
---------------------

* :doc:`../standards/wms_overview` (v1.1.1, v1.3.0)

* :doc:`../standards/kml_overview` (v1.1.1, v1.3.0)

Details
-------

**Website:** http://www.resc.rdg.ac.uk/trac/ncWMS/

**Licence:** Modified BSD License (http://www.resc.rdg.ac.uk/trac/ncWMS/wiki/LicencePage for further details)

**Software Version:** 1.1

**Supported Platforms:** All Java 1.5 platforms: Windows, Linux, Mac

**API Interfaces:** Java; WMS

**Support:** http://www.resc.rdg.ac.uk/trac/ncWMS/wiki/MailingLists


Quickstart
----------

* :doc:`Quickstart documentation <../quickstart/ncWMS_quickstart>
