:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeo-live11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_qgis_mapserver@
@OSGEO_KIND_grass@

.. image:: /images/project_logos/logo-QGIS.png
  :alt: project logo
  :align: right
  :target: http://www.qgis.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

QGIS Server
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

QGIS Server provides web map and feature services (WMS & WFS) using the same libraries as the GIS (QGIS) desktop application.
Maps and print templates created in QGIS desktop can be published as web maps simply by copying the QGIS project file into the server directory. The resulting web maps look exactly the same as in the desktop.
QGIS Server is usually run as CGI/FastCGI module within the Apache Webserver.

.. image:: /images/projects/qgis/qgis-mapserver-screenshot.jpg
  :scale: 50 %
  :alt: project logo
  :align: right

Core Features
--------------------------------------------------------------------------------

* Web Map Service (WMS) - images
* Web Feature Service (WFS) - vectors
* Built-in PDF output
* WYSIWYG map creation with QGIS
* Advanced cartographic symbolisation
* Supports Styled Layer Descriptor (SLD)

Implemented Standards
--------------------------------------------------------------------------------

* OGC Web Map Service (WMS) 1.1.1 and 1.3.0
* OGC Web Feature Service (WFS) 1.0.0 and Transactional WFS (WFS-T) 1.0.0
* OGC Web Coverage Service (WCS)
* OGC Styled Layer Descriptor (SLD) 1.0

Details
--------------------------------------------------------------------------------

**Website:** http://www.qgis.org/

**Licence:** GPL

**Software Version:** |version-qgis_mapserver|

**Supported Platforms:** Windows, Linux

**Commercial Support:** http://www.sourcepole.com/


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/qgis_mapserver_quickstart>`
