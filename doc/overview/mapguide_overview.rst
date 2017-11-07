:Author: Trevor Wekel
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeolive5.5draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_mapguide@
@OSGEO_KIND_mapguide@



@NAME_mapguide@
================================================================================

Web Service
--------------------------------------------------------------------------------

`MapGuide Open Source <http://mapguide.osgeo.org/>`_ is a web-based platform that enables users to develop and deploy web mapping applications and geospatial web services. MapGuide features an interactive viewer that includes support for feature selection, property inspection, map tips, and operations such as buffer, select within, and measure.

MapGuide includes an XML database for managing content. Maestro allows users to edit the XML database and build a website without writing a single line of code. MapGuide also supports most popular geospatial file formats, databases, and standards.

MapGuide can be deployed on Linux or Windows, supports Apache and IIS web servers, and offers extensive PHP, .NET, Java, and JavaScript APIs for application development. MapGuide Open Source is licensed under the LGPL.

.. image:: /images/projects/mapguide/mapguide_viewer.png
  :scale: 50%
  :alt: screenshot
  :align: right

.. note:: Due to space constraints, MapGuide is currently
  not installed on OSGeoLive.

.. commented out as manual install doesn't currently work: To install
  it open up a terminal and run ``cd gisvm/bin; sudo ./install_mapguide.sh``

Core Features
--------------------------------------------------------------------------------

**Interactive Map Viewing**

* Dynamic browser-based viewer 
* Feature selection and properties 
* Buffering, querying 
* Printing and Plotting

**Quality Cartographic Output**

* Scale-dependent detail
* Rule-driven thematic stylization
* Anti-aliased image rendering
* True color support 

**Build-in Resource Database for Manageability**

* Hierarchical storage of XML resource documents that define maps, layers, data connections
* Define data sources and layers once and use them in multiple maps
* Access-based security model with inheritable permissions

**Uniform Data Access**

* Exclusive use of the Feature Data Objects (FDO) API for vector and raster data
* Provides a standardized way to access a variety of data sources including SHP, SDF, Oracle, MySQL, and PostGIS.

**Flexible Application Development**

* Develop your applications in PHP, .NET, or Java

**Extensive Server-Side APIs**

* Create, query, read, and write permanent and session based XML resource documents
* Query and update feature data
* Perform coordinate reprojection
* Create, manipulate, and analyze geometry
* Manipulate runtime maps and layers

**Fast, Scalable, Secure Server Platform**

* Fully multi-threaded and takes advantage of multi-core servers
* Load balancing among servers
* Pooled database connections
* Integrated tile caching

**Multiple Platform Support**

* Deploy on Microsoft Windows or Linux
* Serve applications with Apache or Microsoft IIS
* Browse with Microsoft Internet Explorer, Mozilla Firefox, and Safari and Chrome

Implemented Standards
--------------------------------------------------------------------------------

* OGC Web Map Service 1.1.1 

Details
--------------------------------------------------------------------------------

**Website:** http://mapguide.osgeo.org/

**Licence:** GNU Lesser General Public License (LGPL) 

**Software Version:** 2.4.0 Pre-Release

**Supported Platforms:** Linux, Windows

**Commercial Support:** http://www.osgeo.org/search_profile


@QUICKSTART_mapguide@

