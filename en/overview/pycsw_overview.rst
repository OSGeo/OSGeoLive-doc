:Author: OSGeo-Live
:Author: Tom Kralidis, Angelos Tzotsos
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.0
:License: Creative Commons

.. _pycsw-overview:

.. image:: ../../images/project_logos/logo-pycsw.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://pycsw.org/


pycsw
================================================================================

Metadata Catalog
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pycsw is an OGC CSW server implementation written in `Python`_.

pycsw implements clause 10 (HTTP protocol binding (Catalogue Services for the Web, CSW)) of the `OpenGIS Catalogue Service Implementation Specification`_, version 2.0.2.  Initial development started in 2010 (more formally announced in `2011`_).

pycsw allows for the publishing and discovery of geospatial metadata.  Existing repositories of geospatial metadata can be exposed via OGC:CSW 2.0.2.

pycsw is `Open Source`_, released under an MIT :ref:`license <license>`, and runs on all major platforms (Windows, Linux, Mac OS X).

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

* OGC CSW 	2.0.2
* OGC Filter 	1.1.0
* OGC OWS Common 	1.0.0
* OGC GML 	3.1.1
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

**Licence:** MIT

**Software Version:** 1.0.0

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** Python

**Support:** http://pycsw.org/docs/support.html

.. _`Python`: http://www.python.org/
.. _`OpenGIS Catalogue Service Implementation Specification`: http://www.opengeospatial.org/standards/cat
.. _`2011`: http://www.kralidis.ca/blog/2011/02/04/help-wanted-baking-a-csw-server-in-python/
.. _`Open Source`: http://www.opensource.org/
.. _`documentation`: http://pycsw.org/docs/documentation.html

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/pycsw_quickstart>`

