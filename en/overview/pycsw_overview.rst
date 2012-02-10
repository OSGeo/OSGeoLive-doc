:Author: OSGeo-Live
:Author: Tom Kralidis, Angelos Tzotsos
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons

.. _pycsw-overview:

.. image:: ../../images/project_logos/logo-pycsw.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://pycsw.org/


pycsw
================================================================================

Metadata Catalogue
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pycsw enables users to publish a catalogue of dataset descriptions (metadata) to the web, using standards based interfaces and formats, such that it can be queried and updated by catalogue clients. pycsw is simple to setup within an Apache web server and can access metadata records stored as XML files within a database.

Metadata is 'data about data', storing such things as creation-date, author, title, area-of-interest, etc, and is usually encoded as XML files, following international standards such as ISO 19115, ISO 19139 and FGDC CSDGM.

pycsw is a `Python`_ implementation of the :doc:`OGC Catalogue Services for the Web (CSW) standard<../standards/csw_overview>`. The CSW standard defines common interfaces to discover, browse and query metadata about spatial data, web services and related resources.

pycsw is Open Source, released under an MIT :ref:`license <license>`, and runs on all major platforms (Windows, Linux, Mac OS X).

.. image:: ../../images/screenshots/1024x768/pycsw_overview.jpg
  :scale: 50 %
  :alt: project logo
  :align: right

Core Features
--------------------------------------------------------------------------------

* fully passes the OGC CITE CSW test suite (103/103)
* implements INSPIRE Discovery Services 3.0
* implements ISO Metadata Application Profile 1.0.0
* implements FGDC CSDGM Application Profile for CSW 2.0
* supports ISO, Dublin Core, DIF, FGDC metadata models
* simple configuration
* transactional capabilities (CSW-T)
* flexible repository configuration
* federated catalogue distributed searching
* realtime XML Schema validation
* extensible profile plugin architecture
* very lightweight (Python + CGI)


Implemented Standards
--------------------------------------------------------------------------------

OGC Standards:

* CSW 	2.0.2
* Filter 	1.1.0
* OWS Common 	1.0.0
* GML 	3.1.1

Metadata Standards:

* Dublin Core 	1.1
* SOAP 	1.2
* ISO 19115 	2003
* ISO 19139 	2007
* ISO 19119 	2005
* NASA DIF 	9.7
* FGDC CSDGM 	1998

Details
--------------------------------------------------------------------------------

**Website:** http://pycsw.org

**Licence:** `MIT`_

**Software Version:** 1.0.0

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** Python

**Support:** http://pycsw.org/docs/support.html

.. _`Python`: http://www.python.org/
.. _`MIT`: http://pycsw.org/docs/license.html#license

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/pycsw_quickstart>`

