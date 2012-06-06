:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org), Simon Jirka (s.jirka@52north.org)
:Reviewer: TBD
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://52north.org/sos


52°North SOS
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Der 52°North `Sensor Observation Service (SOS) <../standards/sos_overview.html>`_ 
erlaubt den Zugriff auf Echtzeit-Sensordaten sowie auf Sensordatenarchive. 
Ein Sensor kann dabei z.B. ein Satellit, eine Wetterstation oder ein Pegel an 
einem Fluss sein.

.. image:: ../../images/screenshots/1024x768/52n_sos_test_client_v1.0.0_GetCapabilities.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS test client version 1.0.0
  :align: right

Funktionalität
--------------------------------------------------------------------------------

**Test-Anwendung**:

* Der SOS wird zusammen mit einem Browser-basierten Test-Anwendung ausgeliefert,
		welcher Beispiel-Anfragen für alle SOS-Operationen enthält.
		
Der aktuelle 52°North SOS (Version 3.5.0) implementiert das sogenannte 
“Core Profile” sowie das “Transactional Profile” der OGC SOS-Spezifikation 
1.0.0. Weiterhin werden Teile des „Enhanced Profile“ unterstützt. Folgende 
Operationen sind verfügbar

OGC SOS 1.0.0
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Operationen des “SOS Core Profile”**:

* GetCapabilities, zum Abrufen einer Selbstbeschreibung des Dienstes.
* GetObservation, zum Abfragen von Messdaten, kodiert entsprechend der OGC 
		Observations & Measurements (O&M) Spezifikation.
* DescribeSensor, zum Abfragen von Sensorbeschreibungen, kodiert entsprechend 
		der OGC Sensor Model Language (SensorML) Spezifikation.

** Operationen des “SOS Transactional Profile”**:

* RegisterSensor, zum Registrieren neuer Sensoren in einer SOS-Instanz.
* InsertObservation, zum Einfügen neuer Messdaten, welche durch zuvor 
		registrierte Sensoren geliefert wurden.

** Operationen des “SOS Enhanced Profile”**:

* GetResult, zum vereinfachten Abfragen vordefinierter Mengen von Sensordaten.
* GetObservationById, zum gezielten Abfragen bestimmter, einzelner Messungen.
* GetFeatureOfInterest, zum Abfragen der Geometrien von Sensorstandorten, 
		kodiert ensprechend der OGC Geography Markup Language (GML) 
		Spezifikation.
* GetFeatureOfInterestTime, zur Abfrage der zeitlichen Verfügbarkeit 
		von Messdaten.

OGC SOS 2.0.0
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* GetCapabilities, zum Abrufen einer Selbstbeschreibung des Dienstes.
* GetObservation, zum Abfragen von Messdaten, kodiert entsprechend der OGC 
		Observations & Measurements (O&M) Spezifikation.
* DescribeSensor, zum Abfragen von Sensorbeschreibungen, kodiert entsprechend 
		der OGC Sensor Model Language (SensorML) Spezifikation.
* GetFeatureOfInterest, zum Abfragen der Geometrien von Sensorstandorten, 
		kodiert ensprechend der OGC Geography Markup Language (GML) 
		Spezifikation.

Diese Operationen erlauben die Anwendungen folgender Filter-Operatoren, soweit 
		sinnvoll:

* Räumlicher Filter: BBOX, mit einem Begrenzungsrahmen.
* Zeitlicher Filter: During, mit einem Zeitraum.
* Zeitlicher Filter: TEquals, mit einem Zeitpunkt.

Implementierte Standards
--------------------------------------------------------------------------------

* `OGC Sensor Observation Service (SOS) <http://www.ogcnetwork.net/SOS>`_

Details
--------------------------------------------------------------------------------

**Webseite:** http://52north.org/communities/sensorweb/sos

**Lizenz:** GNU General Public License (GPL) version 2

**Software Version:** SOS 3.5.0

**Unterstützte Plattformen:** Windows, Linux, Mac

**API Schnittstellen:** Java

**Kommerzieller Support:** http://52north.org/

**Community Support:** http://sensorweb.forum.52north.org/

**Community Webseite:** http://52north.org/communities/sensorweb/

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/52nSOS_quickstart>`
