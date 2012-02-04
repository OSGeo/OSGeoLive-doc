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

Metadaten Katalog
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pycsw bietet die Möglichkeit über auf Standards basierende Werkzeuge einen Katalog mit Datenbeschreibungen (Metadaten) im Web in standardisierten Formaten zu veröffentlichen. Diese Metadaten können über Katalog-Clientanwendungen abgefragt und aktualisiert werden. pycsw kann einfach über einen Apache Web Service aufgesetzt werden. pycsw kann auf Metadaten-Datensätze, die in XML-Dateien im Dateisystem vorliegen oder auf Datensätze in einer Datenbank zugreifen. 

Metadaten sind 'Daten über Daten' - beispielsweise das Erstellungsdatum, Autor, Titel, Bereich. Sie werden in der Regel als XML-Dateien vorgehalten und folgen internationalen Standards wie ISO 19115, ISO 19139 und FGDC CSDGM.

pycsw ist eine `Python`_ Implementierung des :doc:`OGC Catalogue Services for the Web (CSW) Standards<../standards/csw_overview>`. Der CSW Standard definiert einfache Anwendungen zum Anzeigen, Durchsuchen und Abfragen von Metadata über räumliche Daten, Web Services und einigen anderen Datenquellen, wie Textdokumente, Spreadsheets und Audiodateien.
 
pycsw ist Open Source Software und wurde unter der MIT  :ref:`Lizenz <license>` veröffentlicht. pycsw ist auf allen gängigen Plattformen (Windows, Linux, Mac OS X) lauffähig.


Kernfunktionen
--------------------------------------------------------------------------------

* vollständiges Bestehen der OGC CITE CSW Test Suite (103/103)
* implementiert den INSPIRE Discovery Services 3.0
* implementiert das ISO Metadata Application Profile 1.0.0
* implementiert das FGDC CSDGM Application Profile for CSW 2.0
* unterstützt die Metadatenmodelle ISO, Dublin Core, DIF, FGDC
* einfache Konfiguration
* Transaktionale Fähigkeiten (CSW-T)
* flexible Repository Konfiguration
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

**Webseite:** http://pycsw.org

**Licence:** `MIT`_

**Software Version:** 1.0.0

**Unterstützte Plattformen:** Windows, Linux, Mac

**API Schnittstellen:** Python

**Support:** http://pycsw.org/docs/support.html
