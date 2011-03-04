.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _sos-overview:

.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    ../../images/project_logos/<filename>
  A symbolic link to the images directory is created during the build process.

.. image:: ../../images/project_logos/logo-OGC-left.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. image:: ../../images/project_logos/logo-OGC-right.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. Writing Tip: Name of application

Sensor Observation Service (SOS)
================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Der OGC Sensor Observation Service (SOS) Interface Standard beschreibt einen Datenservice. Der Standard definiert Schnittstellen und Operationen für Beobachtungen von Sensoren und Sensortnetzen, die konsistent für alle Sensor Systeme sind, einschließlich entfernter, örtlicher, unbeweglicher und beweglicher Sensoren. SOS liefert Abfrageresultate im Observation and Mesurements (O&M) Standardformat zur Modellierung von Sensorbeobachtungen und der SensorML Specification zur Modellierung von Sensoren und Sensorsystemen. (http://www.opengeospatial.org/standards/sos)

.. image:: ../../images/standards/sos.jpg
  :scale: 55%
  :alt: SOS in Context

Der SOS Standard definiert ein gemeinsames Modell für Sensoren und Sensorsystem, das nicht bereichsspezifisch ist und ohne vorherige Kenntnisse von bereichsspezifischen Anwendungsschemata genutzt werden kann.

Eine Beobachtung ist ein Ereignis, dessen Ergebnis eine Abschätzung des Wertes einer Eigenschaft des zu beobachtenden Objektes ist, das durch eine spezifische Prozedur gewonnen wurde. Beobachtungen sind definiert durch

eventTime – wann wurde die Messung durchgeführt
featureOfInterest – welche Entität wurde beobachet
observedProperty - welche Eigenschaften wurden beobachet
procedure  - wie wurde gemessen

Verbindliche SOS Operationen beinhalten:
GetObservation - Zugriff auf Sensorbeobachtungen und gemessene Werte über eine zeit-räumliche Abfrage, die gefiltert werden kann
GetCapabilities - SOS Service Metadaten
DescribeSensor - Informationen über die Sensoren, ihre Prozeduren und Plattformen in SensorML

Optionale Operationen beinhalten: GetResult, GetFeatureOfInterest, GetFeatureOfInterestTime, DescribeFeatureofInterest, DescribeObservationType, DescribeResultModel, Register Sensor, and InsertObservation.

Es existieren eine Reihe von hervoragenden SOS-Implementationen. OpenIOOS.org beinhaltet dreizehn Organisationen, die Zugriff auf SOS Service Instanzen mit über 1400 ozeanischen Sensoren bieten. (http://www.openioos.org/real_time_data/gm_sos.html). Diese funktionsfähige Demonstationsplatform "repräsentiert die Bemühung eine Web Service Architektur zur Beobachtung der Meere zu entwickeln".

Siehe auch
--------

.. Writing Tip:
  Describe Similar standard

* :doc:`wcs_overview`
* :doc:`wfs_overview`
* Grid Coverage Service
* Sensor Planning Service
* Coordinate Transformation Service

