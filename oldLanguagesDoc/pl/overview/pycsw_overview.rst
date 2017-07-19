:Author: OSGeo-Live
:Author: Tom Kralidis, Angelos Tzotsos
:Translator: Milena Nowotarska, OSGeo
:Reviewer:
:Version: osgeo-live6.0
:License: Creative Commons

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

Katalog metadanych
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pycsw enables users to publish a catalogue of dataset descriptions (metadata) to the web, using standards based interfaces and formats, such that it can be queried and updated by catalogue clients. pycsw is simple to setup within an Apache web server and can access metadata records stored as XML files within a database.

Metadata is 'data about data', storing such things as creation-date, author, title, area-of-interest, etc, and is usually encoded as XML files, following international standards such as ISO 19115, ISO 19139 and FGDC CSDGM.

pycsw is a `Python`_ implementation of the :doc:`OGC Catalogue Services for the Web (CSW) standard<../standards/csw_overview>`. The CSW standard defines common interfaces to discover, browse and query metadata about spatial data, web services and related resources.

pycsw is Open Source, released under an MIT license, and runs on all major platforms (Windows, Linux, Mac OS X).

.. image:: /images/screenshots/1024x768/pycsw_overview.jpg
  :scale: 50 %
  :alt: project logo
  :align: right

Główne funkcje
--------------------------------------------------------------------------------

* w pełni przechodzi test OGC CITE CSW (103/103)
* implementacja INSPIRE Discovery Services 3.0
* implementacja ISO Metadata Application Profile 1.0.0
* implementacja FGDC CSDGM Application Profile for CSW 2.0
* obsługa modeli metadanych ISO, Dublin Core, DIF, FGDC
* ława konfiguracja
* transactional capabilities (CSW-T)
* flexible repository configuration
* federated catalogue distributed searching
* realtime XML Schema validation
* extensible profile plugin architecture
* very lightweight (Python + CGI)


Zaimplementowane standardy
--------------------------------------------------------------------------------

Standardy OGC:

* CSW 	2.0.2
* Filter 	1.1.0
* OWS Common 	1.0.0
* GML 	3.1.1

Standardy metadanych:

* Dublin Core 	1.1
* SOAP 	1.2
* ISO 19115 	2003
* ISO 19139 	2007
* ISO 19119 	2005
* NASA DIF 	9.7
* FGDC CSDGM 	1998

Szczegóły
--------------------------------------------------------------------------------

**Strona internetowa:** http://pycsw.org

**Licencja:** `MIT`_

**Wersja programu:** 1.6.1

**Systemy operacyjne:** Windows, Linux, Mac

**Interfejsy API:** Python

**Wsparcie:** http://pycsw.org/docs/support.html

.. _`Python`: http://www.python.org/
.. _`MIT`: http://pycsw.org/docs/license.html#license

Wprowadzenie
--------------------------------------------------------------------------------

* :doc:`Przejdź do wprowadzenia <../quickstart/pycsw_quickstart>`

