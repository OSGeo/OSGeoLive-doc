:Author: OSGeo-Live
:Author: Tom Kralidis
:Author: Angelos Tzotsos, OSGeo
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live11.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-pycsw.png
  :alt: project logo
  :align: right
  :target: http://pycsw.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

pycsw
================================================================================

Metadata Catalogue
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pycsw enables users to publish a catalogue of dataset descriptions (metadata) to the web, using standards based interfaces and formats, such that it can be queried and updated by catalogue clients. pycsw is simple to setup within an Apache web server (or any WSGI server) and can access metadata records stored as XML files within a database.

Metadata is 'data about data', storing such things as creation-date, author, title, area-of-interest, etc, and is usually encoded as XML files, following international standards such as ISO 19115, ISO 19139 and FGDC CSDGM.

pycsw is a `Python`_ implementation of the :doc:`OGC Catalogue Services for the Web (CSW) standard<../standards/csw_overview>`. The project is certified `OGC Compliant`_, and is an `OGC Reference Implementation`_. The CSW standard defines common interfaces to discover, browse and query metadata about spatial data, web services and related resources. 

pycsw is Open Source, released under an MIT license, and runs on all major platforms (Windows, Linux, Mac OS X).

.. image:: /images/screenshots/1024x768/pycsw_overview.jpg
  :scale: 50 %
  :alt: project logo
  :align: right

Core Features
--------------------------------------------------------------------------------

* certified OGC Compliant and OGC Reference Implementation for OGC CSW 2.0.2 and CSW 3.0.0
* harvesting support for WMS, WFS, WCS, WPS, WAF, CSW, SOS
* implements INSPIRE Discovery Services 3.0
* implements ISO Metadata Application Profile 1.0.0
* implements FGDC CSDGM Application Profile for CSW 2.0
* implements the Search/Retrieval via URL (SRU) search protocol
* implements Full Text Search capabilities
* implements OGC OpenSearch Geo/Time extensions
* implements Open Archives Initiative Protocol for Metadata Harvesting
* supports ISO, Dublin Core, DIF, FGDC, Atom and GM03 metadata models
* CGI or WSGI deployment
* Python 2 and 3 compatible
* simple configuration
* transactional capabilities (CSW-T)
* flexible repository configuration
* GeoNode connectivity
* HHypermap connectivity
* Open Data Catalog connectivity
* CKAN connectivity
* federated catalogue distributed searching
* realtime XML Schema validation
* extensible profile plugin architecture
* very lightweight (Python + CGI)


Implemented Standards
--------------------------------------------------------------------------------

OGC Standards:

* CSW 	2.0.2, 3.0.0
* Filter 	1.1.0, 2.0.0
* OWS Common 	1.0.0, 2.0.0
* GML 	3.1.1
* OGC SFSQL 	1.2.1
* OGC OpenSearch  1.0

Metadata Standards:

* Dublin Core 	1.1
* SOAP 	1.2
* ISO 19115 	2003
* ISO 19139 	2007
* ISO 19119 	2005
* NASA DIF 	9.7
* FGDC CSDGM 	1998
* GM03  2.1
* SRU 	1.1
* OAI-PMH   2.0
* A9 OpenSearch 	1.1

Details
--------------------------------------------------------------------------------

**Website:** http://pycsw.org

**Licence:** `MIT`_

**Software Version:** |version-pycsw|

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** Python

**Support:** http://pycsw.org/docs/support.html

.. _`Python`: http://www.python.org/
.. _`MIT`: http://pycsw.org/docs/license.html#license
.. _`OGC Compliant`: http://www.opengeospatial.org/resource/products/details/?pid=1374
.. _`OGC Reference Implementation`: http://demo.pycsw.org/

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/pycsw_quickstart>`

