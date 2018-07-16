
:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Author: Daniel Nüst (d.nuest@52north.org)
:Author: Simon Jirka (s.jirka@52north.org)
:Author: Ann Hitchcock (a.hitchcock@52north.org)
:Reviewer:
:Version: osgeolive12.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_52nSOS@
@OSGEO_KIND_52nSOS@


@NAME_52nSOS@
===============================================================================

About
--------------------------------------------------------------------------------

The 52°North `Sensor Observation Service (SOS) <http://www.opengeospatial.org/standards/sos>`__
supports the interoperable provision of live and archived sensor observation
data. A sensor could be a water level meter in a stream, a weather station, or
an air quality monitoring station.

@SCREENSHOT_52nSOS@

Core Features
-------------------------------------------------------------------------------

* **Browser Client**: The SOS is delivered with a browser based application.
  This provides means for administration and configuration of the service
  instance, as well as sending test requests for SOS operations; appropriate
  sample requests are included.
* **Helgoland**: The SOS contains the Helgoland application for  the exploration,
  analysis and visualization of Sensor Web data in various fields of use, e.g.
  hydrology, meteorology, environmental monitoring, traffic management.
* **Specifications**: The 52°North SOS implements the current specification version 2.0.0 and the
  previous version 1.0.0 (here no transactional operations). Implemented
  operations for each standard version are listed below.
* **INSPIRE Download Service Extension**: Starting with Version 4.2.0, an
  extension is available that allows the SOS to be used as an INSPIRE download
  service. Background information is provided in a `blog post
  <https://blog.52north.org/2014/01/30/52north-supports-the-jrc-in-developing-an-inspire-download-service-based-on-sos/>`_
  and in the `wiki
  <https://wiki.52north.org/bin/view/SensorWeb/SensorObservationServiceIVDocumentation#INSPIRE_Download_Service_extensi>`_ .
* **Air Quality Data e-Reporting Extension**: Starting with version 4.3.0, an
  extension is available that provides for the Air Quality Data Flows E1a,
  E1b and E2a compliant data (the instance on OSGeoLive is not configured
  accordingly). The `installation and configuration
  <https://wiki.52north.org/bin/view/SensorWeb/AqdEReporting#Installation>`_
  is documented in the 52°North Wiki.
* **Sensor Web REST-API**: Starting with Version 4.1.1., a bundle
  version is available, that directly provides the `RESTful API
  <https://wiki.52north.org/bin/view/SensorWeb/SensorWebClientRESTInterface>`_,
  is available.
  Hence, observation data can be requested in a RESTful way and is returned
  in JSON encoded responses. More details incl. documentation can be found in the
  `SOS webapp <http://localhost:8080/52nSOS/static/doc/api-doc/>`_.
* **INSPIRE Sepcialized Observations**: Support for the INSPIRE Specialized
  Observations defined in Guidelines for the use of `Observations & Measurements and
  Sensor Web Enablement-related standards in INSPIRE (D2.9) <http://inspire.ec.europa.eu/id/document/tg/d2.9-o%26m-swe>`_
  (`detailed information about the implementation <https://wiki.52north.org/SensorWeb/InspireSpecialisedObservations>`_).
* **ResultFiltering**: Support for the filtering the observations (GetObservation)
  and data availabiliy information (GetDataAvailability) by the value of the observation.
* **Read more**: `Details of the implemented functionalities
  <https://wiki.52north.org/bin/view/SensorWeb/SensorObservationServiceIVDocumentation#Features>`_
  can be found in the 52°North Wiki.
* The development of this version of the 52°North SOS was supported by different
  projects, organizations, and persons. More details can be found in the
  `52°North SOS client <http://localhost:8080/52nSOS/index>`_.
* We would like to thank the Belgian Interregional Environment Agency
  (`IRCEL - CELINE <http://www.irceline.be/en/>`_)
  for providing the demonstration data used in this SOS installation.
  The demo data are published under a
  `CC-BY licence <http://creativecommons.org/licenses/by/3.0/>`_.


SOS Operations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Queries**:

* GetCapabilities: for requesting a self-description of the service.
* DescribeSensor: for requesting information about the sensor.
* GetFeatureOfInterest / GetFeatureOfInterestTime (from 1.0): for requesting features
  (e.g. sensor/measurement locations).
* GetObservationById / GetObservation: for requesting observations.
* GetResult (from specification version 2.0): for requesting sensor data.
* GetResultTemplate (from specification version 2.0): for requesting a template of the result
  structure that will be returned by a GetResult request.
* GetDataAvailability (from `SOS 2.0 Hydrology Profile - OGC Best Practice
  <http://docs.opengeospatial.org/bp/14-004r1/14-004r1.html#38>`_): for
  requesting the data availability for certain configurations.

**Transactions**:

* InsertSensor (from specification version 2.0): for inserting metadata of new sensors.
* InsertObservation (from specification version 2.0): for inserting new observations.
* UpdateSensorDescription (from specification version 2.0): for updating the description of a sensor.
* DeleteSensor (from specification version 2.0): for deleting a sensor/procedure and all related
  offerings and observations.
* DeleteObservation (extension for SOS specification 2.0): for deleting an observation.
* InsertResultTemplate (from specification version 2.0): for inserting a result template.
* InsertResult (from specification version 2.0): for inserting results.
* InsertFeatureOfInterest for feature insertion
* DeleteResultTemplate for the deletion of resultTemplates by identifier
  or offering/observedProperty pairs

Within these operations, the following filter operators are possible where
applicable:

* Spatial filter: BBOX, using a bounding box.
* Temporal filter: During, with time period.
* Temporal filter: TEquals, with time instant.


Applicable Standards
-------------------------------------------------------------------------------

* `Sensor Observation Service (SOS) <http://www.opengeospatial.org/standards/sos>`__
* `Geography Markup Language (GML) <http://www.opengeospatial.org/standards/gml>`__
* `Sensor Model Language (SensorML) <http://www.opengeospatial.org/standards/sensorml>`__


Details
--------------------------------------------------------------------------------

**Website:** http://52north.org/sos

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** |version-52nSOS|

**Supported Platforms:** Windows, Linux, Mac

**Supported Java Versions:** 7+, (bundle version: 8+)

**Supported DBMS:** PostgreSQL (9+) + PostGIS (2+), MariaDB/MySQL (5.6+), Oracle DB (9+), SQL Server 2012

**API:** Java, HTTP + JSON/XML/SOAP/KVP

**Commercial Support:** https://52north.org/services/

**Community Support:** https://list.52north.org/mailman/listinfo/sensorweb

**Community Website:** https://52north.org/research/research-labs/sensor-web/

**Other 52°North projects on OSGeoLive:** :doc:`WPS <./52nWPS_overview>`



@QUICKSTART_52nSOS@

.. presentation-note
    The 52°North Sensor Observation Service (SOS) provides a standards based interface for reading of live and archived data captured by in-situ and remote sensors. Sensors are things like a camera on a satellite or a water level meter in a stream.
