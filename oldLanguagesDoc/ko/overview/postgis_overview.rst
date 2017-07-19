.. Writing Tip:
  Writing tips describe what content should be in the following section.
  The postgis_overview.rst document is used as a reference example
  for other overviews.
  All other overviews should remove the writing tips in order to make the
  overview documents easier to translate.

.. Writing Tip:
  Metadata about this document

:Author: OSGeo-Live
:Author: Barry Rowlingson
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)


.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. Writing Tip:
  Project logos are stored here:
    https://github.com/OSGeo/OSGeoLive-doc/tree/master/images/project_logos
  and accessed here:
    /images/project_logos/<filename>

.. image:: /images/project_logos/logo-PostGIS.png
  :alt: project logo
  :align: right
  :target: http://postgis.refractions.net/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

PostGIS
================================================================================

.. Writing Tip:
  Application Category Description:

Spatial Database
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Writing Tip:
  Address user questions of "What does the application do?",
  "When would I use it?", "Why would I use it over other applications?",
  "How mature is the application and how widely deployed is it?".
  Don't mention licence or open source in this section.
  Target audience is a GIS practitioner or student who is new to Open Source.
  * First sentence should explain the application.
  * Usually the application domain will not be familiar to readers. So the
    next line or two should explain the domain. Eg: For GeoKettle, the next
    line or two should explain what GoeSpatial Business Intelligence is.
  * Remaining paragraph or 2 in this overview section should provide a
    wider description and advantages from a user perspective.

PostGIS는 공간적으로 PostgreSQL 객체 지향형 데이터베이스를 가능하게 하며, 오라클 스패셜(Oracle Spatial)이 오라클 데이터베이스를 가능하게 하는 방식으로 지리정보체계(GIS)와 웹매핑을 위한 bakc-end 데이터베이스로 이용될 수 있습니다. 

PostGIS는 수많은 공간적 기능을 제공하고 안정적이고 빠르며 모든 기준을 따르고 있을 뿐만 아니라, 현재 가장 많이 이용되는 오픈 소스 공간 데이터베이스 입니다. 하루에도 수 백만의 웹 데이터가 요구되고 테라바이트의 데이터를 저장하는 공공 기관과 단체 등을 포함하여, 전 세계적으로 다양한 기관들이 PostGIS를 이용하고 있습니다. 

데이터베이스 관리는 데스크탑과 pgAdmin, phpPgAdmin 등을 이용하여 인터넷으로 가능합니다. 데이터의 import와 export는 shp2pgsql, pgsql2shp, ogr2ogr, dxf2postgis와 같은 command line 툴이나 테스크탑, web GIS client를 통해 가능합니다. 이러한 클라이언트들 역시 PostGIS 공간 정보를 지도화 및 수정할 수 있습니다.

.. Writing Tip:
  Provide a image of the application which will typically be a screen shot
  or a collage of screen shots.
  Store image in image/<application>_<name>.png . Eg: udig_main_page.png
  Screenshots should be captured from a 1024x768 display.
  Don't include the desktop background as this changes with each release
  and will become dated.

.. image:: /images/screenshots/800x600/pgadmin.png
  :scale: 55 %
  :alt: pgAdmin database manager
  :align: right

주요 사항
--------------------------------------------------------------------------------

* 수많은 공간 분석 기능 제공
  
  * Buffers, unions, overlays, distance 등

* ACID transactional integrity
* R-Tree spatial index
* Multi-user support
* Row-level locking
* Replication
* Partitioning
* Role-based security
* Table-spaces, schemas

반영된 기준 사항
--------------------------------------------------------------------------------

.. Writing Tip: List OGC or related standards supported.

* OGC standards compliant (SFSQL)

자세한 사항
--------------------------------------------------------------------------------

**Website:** http://postgis.refractions.net/

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** 2.1.3

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** SQL

.. Writing Tip:
  Link to webpage which lists the primary support details for the application,
  preferably this would list both community and commercial contacts.

**Support:** http://www.osgeo.org/search_profile


Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/postgis_quickstart>`
