:Author: Markus Neteler, mundialis
:Reviewer: Astrid Emde
:Reviewer: Cameron Shorter
:Version: osgeolive13.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
:Copyright: 2019 by The OSGeo Foundation

@LOGO_actinia@
@OSGEO_KIND_actinia@

@NAME_actinia@
================================================================================

High Performance Geospatial Processing
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Actinia <https://actinia.mundialis.de/>`__ is an open source REST API
for scalable, distributed, high performance processing of geographical
data that uses `GRASS GIS <https://grass.osgeo.org/>`__ for
computational tasks.

It provides a REST API to process satellite images, time series of
satellite images, arbitrary raster data with geographical relations and
vector data.

@SCREENSHOT_actinia@

Core Features
--------------------------------------------------------------------------------

* REST API to process satellite images, time series of satellite images, raster and vector data. The REST interface allows you to access, manage and manipulate the GRASS GIS database via HTTP GET, PUT, POST and DELETE requests and to process raster, vector and time series data located in a persistent GRASS GIS database.
* Actinia allows the processing of cloud based data, for example all Landsat 4-8 scenes as well as all Sentinel-2 scenes in ephemeral databases. The computational results of ephemeral processing are available via object storage as GeoTIFF files.
* Explore the `turorial <https://actinia.mundialis.de/tutorial/>`_.
* Command execution - actinia shell. There is also an option to interactively control actinia. Details `here <https://github.com/mundialis/actinia_core/tree/master/scripts>`__.

.. _actinia: https://github.com/mundialis/actinia_core

Details
--------------------------------------------------------------------------------

**Website:** https://github.com/mundialis/actinia_core

**Licence:** GNU General Public License (GPL) version 3

**Software Version:** |version-actinia|

**Supported Platforms:** GNU/Linux, Mac OSX, MS Windows

**API Interfaces:** REST API, Python

**API documentation:** https://actinia.mundialis.de/api_docs/

**Support:** https://github.com/mundialis/actinia_core

@QUICKSTART_actinia@

.. presentation-note
    Actinia is an open source REST API for scalable, distributed, high performance
    processing of geographical data that uses GRASS GIS for computational tasks.
    Actinia provides a REST API to process satellite images, time series of 
    satellite images, raster and vector data.
