:Author: OSGeo-Live
:Author: Tom Kralidis, Angelos Tzotsos
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live9.5
:License: Creative Commons

.. image:: ../../images/project_logos/logo-pycsw.png
  :alt: project logo
  :align: right
  :target: http://pycsw.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

pycsw
================================================================================

Metadaten Katalog
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pycsw bietet die Möglichkeit über auf Standards basierende Werkzeuge einen Katalog mit Datenbeschreibungen (Metadaten) im Web in standardisierten Formaten zu veröffentlichen. Diese Metadaten können über Katalog-Clientanwendungen abgefragt und aktualisiert werden. pycsw kann einfach über einen Apache Web Service aufgesetzt werden. pycsw kann auf Metadaten-Datensätze, die in XML-Dateien im Dateisystem vorliegen oder auf Datensätze in einer Datenbank zugreifen. 

Metadaten sind 'Daten über Daten' - beispielsweise das Erstellungsdatum, Autor, Titel, Bereich. Sie werden in der Regel als XML-Dateien vorgehalten und folgen internationalen Standards wie ISO 19115, ISO 19139 und FGDC CSDGM.

pycsw ist eine `Python`_ Implementierung des :doc:`OGC Catalogue Services for the Web (CSW) Standards<../standards/csw_overview>`. Der CSW Standard definiert einfache Anwendungen zum Anzeigen, Durchsuchen und Abfragen von Metadata über räumliche Daten, Web Services und einigen anderen Datenquellen, wie Textdokumente, Spreadsheets und Audiodateien.
 
pycsw ist Open Source Software und wurde unter der MIT Lizenz veröffentlicht. pycsw ist auf allen gängigen Plattformen (Windows, Linux, Mac OS X) lauffähig.

.. image:: ../../images/screenshots/1024x768/pycsw_overview.jpg
  :scale: 50 %
  :alt: project logo
  :align: right

Kernfunktionen
--------------------------------------------------------------------------------

* zertifizierte OGC Compliant and OGC Reference Implementation für OGC CSW 2.0.2 konform
* Harvesting Support für WMS, WFS, WCS, WPS, WAF, CSW, SOS
* implementiert den INSPIRE Discovery Services 3.0
* implementiert das ISO Metadata Application Profile 1.0.0
* implementiert das FGDC CSDGM Application Profile for CSW 2.0
* implementiert das Search/Retrieval via URL (SRU) Suchprotokoll
* implementiert OGC OpenSearch Geo/Time Erweiterung
* unterstützt die Metadatenmodelle ISO, Dublin Core, DIF, FGDC
* CGI oder WSGI Deployment
* einfache Konfiguration
* Transaktionale Fähigkeiten (CSW-T)
* flexible Repository Konfiguration
* GeoNode Verbindung
* Absetzen von Suchanfragen an verschiedene Kataloge
* XML Schema Validierung in Echtzeit
* erweiterbare Profil Plugin Architektur
* sehr schlank (Python + CGI)


Implementierte Standards
--------------------------------------------------------------------------------

OGC Standards:

* CSW 	2.0.2
* Filter 	1.1.0
* OWS Common 	1.0.0
* GML 	3.1.1
* OGC SFSQL 	1.2.1

Metadata Standards:

* Dublin Core 	1.1
* SOAP 	1.2
* ISO 19115 	2003
* ISO 19139 	2007
* ISO 19119 	2005
* NASA DIF 	9.7
* FGDC CSDGM 	1998
* SRU 	1.1
* A9 OpenSearch 	1.1

Details
--------------------------------------------------------------------------------

**Webseite:** http://pycsw.org

**Licence:** `MIT`_

**Software Version:** |version-pycsw|

**Unterstützte Plattformen:** Windows, Linux, Mac

**API Schnittstellen:** Python

**Support:** http://pycsw.org/docs/support.html

.. _`Python`: http://www.python.org/
.. _`MIT`: http://pycsw.org/docs/license.html#license
.. _`OGC Compliant`: http://www.opengeospatial.org/resource/products/details/?pid=1104
.. _`OGC Reference Implementation`: http://demo.pycsw.org/

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/pycsw_quickstart>`

