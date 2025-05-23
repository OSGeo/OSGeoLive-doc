:Author: OSGeoLive
:Author: Seth Girvin
:Version: osgeolive17.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_owslib@
@OSGEO_KIND_owslib@


@NAME_owslib@
================================================================================

Open Geospatial Web Services Library
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

OWSLib is a `Python`_ package for client programming with `Open Geospatial Consortium`_ (OGC) web service (hence OWS) interface standards,
and their related content models.

OWSLib is Open Source, released under an BSD 3-Clause License, and runs on any platform that supports Python (Windows, Linux, Mac OS X).

@SCREENSHOT_owslib@

Core Features
--------------------------------------------------------------------------------

* easily connect to WMS, WFS, WCS, WPS, CSW services using Python (and many more)
* support for the new OGC APIs
* easy to install with ``pip install OWSLib``
* also available with Conda, and as a Debian package
* an `OSGeo Community Project`_
* detailed log output
* support for proxies

Implemented Standards
--------------------------------------------------------------------------------

OGC Standards
+++++++++++++

+-----------------------+----------------+-----------------------+----------------+
| **Standard**          | **Version(s)** | **Standard**          | **Version(s)** |
+=======================+================+=======================+================+
| `OGC WMS`_            | 1.1.1, 1.3.0   | `OGC WFS`_            | 1.0.0, 1.1.0,  |
|                       |                |                       | 2.0.0, 3.0     |
+-----------------------+----------------+-----------------------+----------------+
| `OGC WCS`_            | 1.0.0, 1.1.0,  | `OGC WMC`_            | 1.1.0          |
|                       | 2.0, 2.0.1     |                       |                |
+-----------------------+----------------+-----------------------+----------------+
| `OGC SOS`_            | 1.0.0, 2.0.0   | `OGC SensorML`_       | 1.0.1          |
+-----------------------+----------------+-----------------------+----------------+
| `OGC CSW`_            | 2.0.2          | `OGC WPS`_            | 1.0.0          |
+-----------------------+----------------+-----------------------+----------------+
| `OGC Filter`_         | 1.1.0          | `OGC OWS Common`_     | 1.0.0, 1.1.0,  |
|                       |                |                       | 2.0            |
+-----------------------+----------------+-----------------------+----------------+
| `OGC OWS Context`_    | 1.0.0 (alpha)  | `NASA DIF`_           | 9.7            |
+-----------------------+----------------+-----------------------+----------------+
| `FGDC CSDGM`_         | 1998           | `ISO 19139`_          | 2007           |
+-----------------------+----------------+-----------------------+----------------+
| `ISO 19139-2`_        | 2012           | `Dublin Core`_        | 1.1            |
+-----------------------+----------------+-----------------------+----------------+
| `Swiss GM03`_         | 2.3            | `OGC WMTS`_           | 1.0.0          |
+-----------------------+----------------+-----------------------+----------------+
| `WaterML`_            | 1.0, 1.1, 2.0  | `OpenSearch`_         | 1.1            |
+-----------------------+----------------+-----------------------+----------------+

OGC API Support
+++++++++++++++

+--------------------------------------------------------+-------------+--------------------------------------------------------+-------------+
| **Standard**                                           | **Version** | **Standard**                                           | **Version** |
+========================================================+=============+========================================================+=============+
| `OGC API - Features - Part 1: Core`_                   | 1.0         | `OGC API - Coverages - Part 1: Core`_                  | draft       |
+--------------------------------------------------------+-------------+--------------------------------------------------------+-------------+
| `OGC API - Records - Part 1: Core`_                    | draft       | `OGC API - Features - Part 3: Filtering and CQL`_      | draft       |
+--------------------------------------------------------+-------------+--------------------------------------------------------+-------------+
| `OGC API - Features - Part 4: CRUD`_                   | draft       | `OGC API - Processes - Part 1: Core`_                  | 1.0         |
+--------------------------------------------------------+-------------+--------------------------------------------------------+-------------+
| `OGC API - Connected Systems - Part 1: Feature Res.`_  | draft       | `OGC API - Connected Systems - Part 2: Dynamic Data`_  | draft       |
+--------------------------------------------------------+-------------+--------------------------------------------------------+-------------+

Details
--------------------------------------------------------------------------------

**Website:** @WEB_owslib@

**Licence:** `BSD 3-Clause License`_

**Software Version:** |version-owslib|

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** Python

**Support:** |SUPPORT|

.. _`Open Geospatial Consortium`: https://ogc.org
.. _`Python`: https://www.python.org/
.. _`OSGeo Community Project`: https://www.osgeo.org/projects/owslib/
.. _`BSD 3-Clause License`: https://owslib.readthedocs.io/en/stable/license.html

.. _`OGC WMS`: https://www.opengeospatial.org/standards/wms
.. _`OGC WFS`: https://www.opengeospatial.org/standards/wfs
.. _`OGC WCS`: https://www.opengeospatial.org/standards/wcs
.. _`OGC WMC`: https://www.opengeospatial.org/standards/wmc
.. _`OGC WPS`: https://www.opengeospatial.org/standards/wps
.. _`OGC SOS`: https://www.opengeospatial.org/standards/sos
.. _`OGC O&M`: https://www.opengeospatial.org/standards/om
.. _`OGC WaterML2.0`: https://www.opengeospatial.org/standards/waterml
.. _`OGC SensorML`: https://www.opengeospatial.org/standards/sensorml
.. _`OGC CSW`: https://www.opengeospatial.org/standards/cat
.. _`OGC WMTS`: https://www.opengeospatial.org/standards/wmts
.. _`OGC Filter`: https://www.opengeospatial.org/standards/filter
.. _`OGC OWS Common`: https://www.opengeospatial.org/standards/common
.. _`OGC OWS Context`: https://www.opengeospatial.org/standards/owc
.. _`NASA DIF`: https://earthdata.nasa.gov/esdis/eso/standards-and-references/directory-interchange-format-dif-standard
.. _`FGDC CSDGM`: https://www.fgdc.gov/metadata/csdgm-standard
.. _`ISO 19115`: https://www.iso.org/standard/26020.html
.. _`ISO 19139`: https://www.iso.org/standard/32557.html
.. _`ISO 19139-2`: https://www.iso.org/standard/57104.html
.. _`Dublin Core`: https://www.dublincore.org/
.. _`CIA.vc`: http://cia.vc/stats/project/OWSLib
.. _`WaterML`: http://his.cuahsi.org/wofws.html#waterml
.. _`Swiss GM03`: https://www.geocat.admin.ch/en/dokumentation/gm03.html
.. _`OGC API`: https://ogcapi.ogc.org
.. _`OGC API - Features - Part 1: Core`: https://docs.opengeospatial.org/is/17-069r3/17-069r3.html
.. _`OGC API - Records - Part 1: Core`: https://github.com/opengeospatial/ogcapi-records
.. _`OGC API - Features - Part 3: Filtering and CQL`: https://docs.ogc.org/DRAFTS/19-079.html
.. _`OGC API - Features - Part 4: CRUD`: https://docs.ogc.org/DRAFTS/20-002.html
.. _`OGC API - Coverages - Part 1: Core`: https://docs.ogc.org/DRAFTS/19-087.html
.. _`OGC API - Processes - Part 1: Core`: https://docs.ogc.org/is/18-062r2/18-062r2.html
.. _`OGC API - Connected Systems - Part 1: Feature Res.`: https://docs.ogc.org/DRAFTS/23-001r0.html
.. _`OGC API - Connected Systems - Part 2: Dynamic Data`: https://docs.ogc.org/DRAFTS/23-002r0.html
.. _`OpenSearch`: https://github.com/dewitt/opensearch


@VMDK_owslib@
@QUICKSTART_owslib@

.. presentation-note
    OWSLib is a Python package for client programming with Open Geospatial Consortium (OGC) web service
    interface standards, and their related content models.
