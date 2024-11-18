:Author: OSGeoLive
:Author: Angelos Tzotsos, OSGeo
:Author: Tom Kralidis, OSGeo
:Version: osgeolive14.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_pygeoapi@
@OSGEO_KIND_pygeoapi@


@NAME_pygeoapi@
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`pygeoapi`_ is a `Python`_ server implementation of the OGC API suite of standards. The project emerged as part of the next generation `OGC API`_ efforts in 2018 and provides the capability for organizations to deploy a RESTful OGC API endpoint using OpenAPI, GeoJSON, and HTML. pygeoapi is `open source <https://opensource.org>`_ and released under an `MIT`_ license.


@SCREENSHOT_pygeoapi@

Core Features
--------------------------------------------------------------------------------

* out of the box modern OGC API server
* certified OGC Compliant and Reference Implementation
* additionally implements OGC API - Features, OGC API - Coverages, OGC API - Tiles, OGC API - Processes, OGC API - Records, OGC API - Environmental Data Retrieval and SpatioTemporal Asset Library
* out of the box data provider plugins for rasterio, GDAL/OGR, Elasticsearch, PostgreSQL/PostGIS
* easy to use OpenAPI / Swagger documentation for developers
* supports JSON, GeoJSON, HTML and CSV output
* supports data filtering by spatial, temporal or attribute queries
* easy to install: install a full implementation via ``pip`` or ``git``
* simple YAML configuration
* easy to deploy: via UbuntuGIS or the official Docker image
* flexible: built on a robust plugin framework to build custom data connections, formats and processes
* supports any Python web framework (included are Flask [default], Starlette)


Implemented Standards
--------------------------------------------------------------------------------

Standards are at the core of pygeoapi. Below is the project's standards support matrix.

- Implementing: implements standard (good)
- Compliant: conforms to OGC compliance requirements (great)
- Reference Implementation: provides a reference for the standard (awesome!)

.. csv-table::
   :header: "Standard", "Support"
   :align: left
   :widths: 20, 20

   `OGC API - Features`_,Reference Implementation
   `OGC API - Coverages`_,Implementing
   `OGC API - Tiles`_,Implementing
   `OGC API - Records`_,Implementing
   `OGC API - Processes`_,Implementing
   `OGC API - Environmental Data Retrieval`_,Implementing
   `SpatioTemporal Asset Catalog`_,Implementing

Details
--------------------------------------------------------------------------------

**Website:** @WEB_pygeoapi@

**Licence:** `MIT`_

**Software Version:** |version-pygeoapi|

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** Python

**Support:** https://pygeoapi.io/community/service-providers


.. _`pygeoapi`: https://pygeoapi.io
.. _`OGC API`: https://ogcapi.ogc.org
.. _`OGC API - Features`: https://ogcapi.ogc.org/features
.. _`OGC API - Coverages`: https://ogcapi.ogc.org/coverages
.. _`OGC API - Tiles`: https://ogcapi.ogc.org/tiles
.. _`OGC API - Records`: https://ogcapi.ogc.org/records
.. _`OGC API - Processes`: https://ogcapi.ogc.org/processes
.. _`OGC API - Environmental Data Retrieval`: https://ogcapi.ogc.org/edr
.. _`SpatioTemporal Asset Catalog`: https://stacspec.org
.. _`Python`: https://www.python.org/
.. _`MIT`: https://docs.pygeoapi.io/en/latest/license.html

@VMDK_pygeoapi@
@QUICKSTART_pygeoapi@

.. presentation-note
    pygeoapi is a Python server implementation of the OGC API suite of standards. The project emerged as part of the next generation OGC API efforts in 2018 and provides the capability for organizations to deploy a RESTful OGC API endpoint using OpenAPI, GeoJSON, and HTML. pygeoapi is open source and released under an MIT license. pygeoapi is reference implementation of OGC API Features.
