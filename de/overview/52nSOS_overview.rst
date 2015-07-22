:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org), Simon Jirka (s.jirka@52north.org)
:Reviewer: 
:Version: osgeo-live9.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :alt: project logo
  :align: right
  :target: http://52north.org/sos


52°North SOS
===============================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Der 52°North :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>` 
erlaubt den Zugriff auf Echtzeit-Sensordaten sowie auf Sensordatenarchive. Ein 
Sensor kann dabei z.B. eine Wetterstation, ein Pegel an einem Fluss oder eine 
Station zur Messung der Luftqualität sein.

.. image:: ../../images/screenshots/1024x768/52n_sos_overview.png
  :scale: 60 %
  :alt: screenshot of 52°North SOS and JavaScript client
  :align: right

Funktionalität
-------------------------------------------------------------------------------

* **Browser-Anwendung**: Der SOS wird zusammen mit einem Browser-basierten 
  Anwendung ausgeliefert. Diese ermöglicht die Administration und Konfiguration
  der Service-Instanz, sowie das Senden von Testanfragen für SOS-Operationen; 
  entsprechende Beispiel-Anfragen sind enthalten.
* **JavaScript-Anwendung**: Der SOS beinhaltet eine JavaScript-Anwendung
  zur Darstellung von Zeitreihen-Daten. Mit dessen Hilfe können numerische 
  Zeitreihen ohne zusätzliche Software visualisiert werden.
* **Spezifikation**: Der vorliegende 52°North SOS implementiert die aktuelle Spezifikationsversion
  (2.0.0 und die Vorgängerversion 1.0.0). In der folgenden Liste sind für die 
  beiden Standard-Versionen die jeweils implementierten Operationen aufgelistet.
* **INSPIRE-Download-Dienst-Erweiterung**: Ab Version 4.2.0 steht eine 
  Erweiterung zur Verfügung, die es erlaubt den SOS als INSPIRE-Download-Dienst
  zu verwenden. Hintergrundinformationen stehen in einem `Blogpost 
  <http://blog.52north.org/2014/01/30/52north-supports-the-jrc-in-developing-an-inspire-download-service-based-on-sos/>`_ 
  und im `Wiki 
  <https://wiki.52north.org/bin/view/SensorWeb/SensorObservationServiceIVDocumentation#INSPIRE_Download_Service_extensi>`_ 
  zur Verfügung.
* **Air-Quality-Data-e-Reporting-Erweiterung**: Ab Version 4.3.0 steht eine 
  Erweiterung zur Verfügung, die es erlaubt für die Air-Quality-Data-Flows E1a,
  E1b und E2a konforme Daten zu liefern (die Instanz auf OSGeo-Live ist nicht 
  entsprechend konfiguriert). Im 52°North Wiki ist die 
  `Installation und Konfiguration
  <https://wiki.52north.org/bin/view/SensorWeb/AqdEReporting#Installation>`_ 
  dokumentiert.
* **Weitere Informationen**: Die aktuelle Übersicht über die `Details der implementierten Funktionalitäten
  <https://wiki.52north.org/bin/view/SensorWeb/SensorObservationServiceIVDocumentation#Features>`_
  (in englisch) ist im 52°North Wiki zu finden.

OGC SOS 2.0.0
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Operationen des “SOS Core Profiles“**:

* GetCapabilities, zum Abrufen einer Selbstbeschreibung des Dienstes.
* GetObservation, zum Abfragen von Messdaten, kodiert entsprechend der OGC 
  Observations & Measurements (O&M) Spezifikation.
* DescribeSensor, zum Abfragen von Sensorbeschreibungen, kodiert entsprechend 
  der OGC Sensor Model Language (SensorML) Spezifikation.

**Operationen des “SOS Enhanced Profiles”**:

* GetFeatureOfInterest, zum Abfragen der Geometrien von Mess-Standorten (z.B. 
  Sensorstandorten), kodiert ensprechend der OGC Geography Markup Language 
  (GML) Spezifikation.
* GetObservationById, zum gezielten Abfragen bestimmter, einzelner Messungen.

**Operationen des “SOS Result Handling Profiles”**:

* InsertResultTemplate, zum Einfügen einer Beschreibung der Struktur von 
  Messungen eines Sensors (z.B. grundlegende Metadaten, Felder des 
  Messergebnisses).
* InsertResult, zum Einfügen von Messdaten unter Nutzung einer vorher 
  eingefügten Struktur-Beschreibung (d.h. grundlegende Metadaten müssen erneut 
  eingefügt werden, sondern können aus der Struktur-Beschreibung entnommen 
  werden).
* GetResultTemplate, zum Abfragen von einer Messdaten-Struktur-Vorlage.
* GetResult, zum Abfragen von Messdaten mit reduzierter Metadatenmenge (die 
  Metadaten sind in diesem Fall in der Antwort auf die GetResultTemplate-Anfrage
  enthalten).

**Operationen des “SOS Transactional Profiles”**:

* InsertSensor, zum Einfügen neuer Sensoren (d.h. zum Registrieren ihrer 
  Metadaten) in einer SOS-Instanz.
* InsertObservation, zum Einfügen neuer Messdaten, welche durch zuvor 
  registrierte Sensoren geliefert werden.
* UpdateSensorDescription, zum Aktualisieren von bestehenden Sensorbeschreibungen.
* DeleteSensor, zum Entfernen von Sensoren inkl. aller Messdaten und zugehörigen
  Datenstrukturen (z.B. Offering).

**Operation “Data Availability”**:

* GetDataAvailability, zum Abfragen von Datenverfügbarkeit für verschiedene 
  Konstellationen von Abfrageparametern (noch kein Bestandteil der offiziellen 
  SOS 2.0 Spezifikation).

**Operation “Delete Observation”**:

* DeleteObservation, zum Löschen von Messdaten via Messdaten-Identifier (kein 
  Teil der SOS 2.0 Spezifikation).


Einige Operationen erlauben die Anwendungen folgender Filter-Operatoren, soweit
 sinnvoll:

* Räumlicher Filter: BBOX, mit einem Begrenzungsrahmen.
* Zeitlicher Filter: During, mit einem Zeitraum.
* Zeitlicher Filter: TEquals, mit einem Zeitpunkt.

OGC SOS 1.0.0
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Operationen des “SOS Core Profiles”**:

* GetCapabilities, zum Abrufen einer Selbstbeschreibung des Dienstes.
* GetObservation, zum Abfragen von Messdaten, kodiert entsprechend der OGC 
  Observations & Measurements (O&M) Spezifikation.
* DescribeSensor, zum Abfragen von Sensorbeschreibungen, kodiert entsprechend 
  der OGC Sensor Model Language (SensorML) Spezifikation.

**Operationen des “SOS Enhanced Profiles”**:

* GetObservationById, zum gezielten Abfragen bestimmter, einzelner Messungen.
* GetFeatureOfInterest, zum Abfragen der Geometrien von Mess-Standorten (z.B. 
  Sensorstandorten), kodiert ensprechend der OGC Geography Markup Language 
  (GML) Spezifikation.


Zugehörige Standards
-------------------------------------------------------------------------------

* :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>`
* :doc:`Geography Markup Language (GML) <../standards/gml_overview>`
* :doc:`Sensor Model Language (SensorML) <../standards/sensorml_overview>`

Details
-------------------------------------------------------------------------------

**Webseite:** http://52north.org/sos

**Lizenz:** GNU General Public License (GPL) version 2

**Software Version:** SOS |version-52nSOS|

**Unterstützte Plattformen:** Windows, Linux, Mac

**Unterstützte DBMS:** PostgreSQL (9+) + PostGIS (2+), MariaDB/MySQL (5.6+), Oracle DB (9+), SQL-Server 2012

**API Schnittstellen:** Java

**Kommerzieller Support:** http://52north.org/

**Community Support:** http://sensorweb.forum.52north.org/

**Community Webseite:** http://52north.org/communities/sensorweb/

**Andere 52°North Projekte auf OSGeo Live:** :doc:`WPS <./52nWPS_overview>`

Quickstart
-------------------------------------------------------------------------------

* :doc:`Schnellstart-Dokumentation <../quickstart/52nSOS_quickstart>`
