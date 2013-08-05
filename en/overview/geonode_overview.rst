:Author: Angelos Tzotsos
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live7.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-geonode.jpg
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://geonode.org


GeoNode
================================================================================

Geospatial Content Management System
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Cameron's review comment:
  Original text was too long. I've trimmed. Also tried to remove time dependant comparisons with other projects. (Ask if this description will still be valid in 3 years time). The Overview should only contain ~ 3 paragraphs.

`GeoNode <http://geonode.org>`_ is a Content Management System for geospatial data which provides creation, sharing, and collaborative use of geospatial data. Datasets can be uploaded in various formats, maps can be edited, styled and aggregated through browser based tools, maps and metadata can be published and searched, and reviews, ratings and comments can be captured from users.

GeoNode is built upon: GeoServer, GeoExplorer, pycsw, Django, and GeoExt.

.. Cameron Comment: Remove rest of section. "Less words get read more".
 `GeoNode <http://geonode.org>`_ is a web-based application and platform for developing geospatial information systems (GIS) and for deploying spatial data infrastructures (SDI). It is designed to be extended and modified, and can be integrated into existing platforms.
  GeoNode is an open source platform that facilitates the creation, sharing, and collaborative use of geospatial data. The project aims to surpass existing spatial data infrastructure solutions by integrating robust social and cartographic tools.
  At its core, GeoNode is built on a stack based on GeoServer, pycsw, Django, and GeoExt that provides a platform for sophisticated web browser spatial visualization and analysis.
  Atop this stack, the project has built a map composer and viewer, tools for analysis, and reporting tools.
  GeoNode allows the user to upload vector and raster data in their original projections using a web form. Vector data is uploaded in ESRI Shapefile format and satellite imagery and other kinds of raster data are uploaded as GeoTIFFs.
  Special importance is given to standard metadata formats like ISO 19139:2007. After the upload is finished, the user is presented with a form to fill in the metadata and it is made available using a CSW interface. Users may also upload a metadata XML document (in ISO, FGDC, or Dublin Core format) to fill in key GeoNode metadata elements automatically.
  Similarly, GeoNode provides a web based styler, that lets the user change how the data looks and preview the changes in real time.
  Once the data has been uploaded, GeoNode lets the user search for it geographically or via keywords and create maps.
  All the layers are automatically reprojected to web mercator for maps display, making it possible to use different popular base layers, like Open Street Map, Google Satellite or Bing layers.
  Once maps are saved, it is possible to embed them in any webpage or get a PDF version for printing.

.. image:: ../../images/screenshots/800x600/geonode_basic_application.png
  :scale: 50%
  :alt: GeoNode application
  :align: right

Core Features
--------------------------------------------------------------------------------

* Spatial Data Discovery

  * Powerful spatial search engine
  * Federated OGC services
  * Metadata catalogue

* Import and Manage Geospatial Data

  * Publish raster, vector, and tabular data
  * Manage metadata and associated documents
  * Securely or publicly share data
  * Versioned geospatial data editor

* Interactive Mapping

  * GeoExplorer GIS client
  * Graphical style editor
  * Create multi-layer interactive maps
  * Share and embed maps in web pages
  * Print maps as PDF

* Collaboration

  * Review, rate, and comment on data
  * Groups of users
  * Activity streams
  * Announcements and notifications

* ... and more!

.. Cameron's review comment:
  "Analysis of data" was mentioned in the original overview, but not in
  bullet points. If GeoNode has tools for analysis, then you might want
  to add bullet points for it.

Implemented Standards
--------------------------------------------------------------------------------

  * :doc:`../standards/wms_overview`
  * :doc:`../standards/csw_overview`
  * :doc:`../standards/wfs_overview`
  * :doc:`../standards/wcs_overview`
  * :doc:`../standards/fe_overview`
  * :doc:`../standards/sld_overview` 
  * :doc:`../standards/gml_overview`

.. Cameron's review comment:
  If possible, can you please add version numbers of standards supported.
  Eg: WMS 1.1, 1.3

Details
--------------------------------------------------------------------------------

**Website:** http://geonode.org/

**Licence:** GNU General Public License (GPL) version 2.0

**Software Version:** 2.0 RC1

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** Python (Django)

**Support:** http://opengeo.org/technology/geonode/

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/geonode_quickstart>`

