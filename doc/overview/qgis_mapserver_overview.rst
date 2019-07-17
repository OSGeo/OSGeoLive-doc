:Author: OSGeoLive
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeolive13.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_qgis_mapserver@
@OSGEO_KIND_qgis_mapserver@

@NAME_qgis_mapserver@
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

QGIS Server provides web map and feature services (WMS & WFS) using the same libraries as the GIS (QGIS) desktop application.
Maps and print templates created in QGIS desktop can be published as web maps simply by copying the QGIS project file into the server directory. The resulting web maps look exactly the same as in the desktop.
QGIS Server is usually run as CGI/FastCGI module within the Apache Webserver.

@SCREENSHOT_qgis_mapserver@

Core Features
--------------------------------------------------------------------------------

* Web Map Service (WMS) - images
* OGC Web Map Tile Service (WMTS) 1.0.0
* Web Feature Service (WFS) - vectors
* Built-in PDF output
* WYSIWYG map creation with QGIS
* Advanced cartographic symbolisation
* Supports Styled Layer Descriptor (SLD)
* Extra parameters like f.e. FILTER, SELECTION, DPI

Implemented Standards
--------------------------------------------------------------------------------

* OGC Web Map Service (WMS) 1.1.1 and 1.3.0
* OGC Web Map Tile Service (WMTS) 1.0.0
* OGC Web Feature Service (WFS) 1.0.0 and Transactional WFS (WFS-T) 1.0.0
* OGC Web Coverage Service (WCS)
* OGC Styled Layer Descriptor (SLD) 1.0

Details
--------------------------------------------------------------------------------

**Website:** https://www.qgis.org/

**Licence:** GPL

**Software Version:** |version-qgis_mapserver|

**Supported Platforms:** Windows, Linux

**Commercial Support:** https://www.qgis.org/en/site/forusers/commercial_support.html


@QUICKSTART_qgis_mapserver@

.. presentation-note
    QGIS Server provides a web map service based on the popular QGIS desktop application. The close integration with QGIS means desktop maps can easily be exported to web maps by copying the QGIS project file into the server directory, and a nice touch is that the web maps look exactly the same as they do in the desktop.
