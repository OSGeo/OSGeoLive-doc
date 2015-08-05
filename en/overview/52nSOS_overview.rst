
:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org), Daniel Nüst (d.nuest@52north.org), Simon Jirka (s.jirka@52north.org)
:Reviewer: 
:Version: osgeo-live9.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :alt: 52°North - exploring horizons
  :align: right
  :target: http://52north.org/sos


52°North SOS
===============================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The 52°North :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>` 
supports the interoperable provision of live and archived sensor observation 
data. A sensor could be a water level meter in a stream, a weather station, or 
an air quality monitoring station.
 
.. image:: ../../images/screenshots/1024x768/52n_sos_overview.png
  :scale: 60 %
  :alt: 52°North SOS and JavaScript client
  :align: right

Features
-------------------------------------------------------------------------------

* **Browser Client**: The SOS is delivered with a browser based application.
  This provides means for administration and configuration of the service 
  instance, as well as sending test requests for SOS operations; appropriate
  sample requests are included.
* **JavaScript Client**: The SOS contains a JavaScript application for 
  displaying time series data. With its help, time series will be visualized 
  without any additional software.
* **Specifications**: The 52°North SOS implements the current specification version 2.0.0 and the 
  previous version 1.0.0 (here no transactional operations). Listed below are 
  implemented operations for each standard version.
* **INSPIRE Download Service Extension**: Starting with Version 4.2.0 an 
  extension is available that allows the SOS to be used as INSPIRE download 
  service. Background information is provided in a `blog post 
  <http://blog.52north.org/2014/01/30/52north-supports-the-jrc-in-developing-an-inspire-download-service-based-on-sos/>`_ 
  and in the `wiki 
  <https://wiki.52north.org/bin/view/SensorWeb/SensorObservationServiceIVDocumentation#INSPIRE_Download_Service_extensi>`_ .
* **Air Quality Data e-Reporting Extension**: Starting with version 4.3.0 is an 
  extension available that allows to provide for the Air Quality Data Flows E1a,
  E1b and E2a compliant data (the instance on OSGeo-Live is not configured 
  accordingly). In 52°North Wiki the `installation and configuration
  <https://wiki.52north.org/bin/view/SensorWeb/AqdEReporting#Installation>`_ 
  is documented.
* **RESTful API for Timeseries**: Starting with Version 4.1.1. is an bundle 
  version available, that directly brings the `RESTful API 
  <https://wiki.52north.org/bin/view/SensorWeb/SensorWebClientRESTInterface>`_ .
  Hence, timeseries can be requested in a RESTful way in JSON encoded requests. 
  More details incl. documentation can be found in the
  `SOS webapp <http://localhost:8080/52nSOS/static/doc/api-doc/>`_.
* **Read more**: The track of the `details of the implemented functionalities 
  <https://wiki.52north.org/bin/view/SensorWeb/SensorObservationServiceIVDocumentation#Features>`_ 
  can be found in the 52°North Wiki.


SOS Operations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Queries**:

* GetCapabilities: for requesting a self-description of the service.
* DescribeSensor: for requesting information about the sensor.
* GetFeatureOfInterest / GetFeatureOfInterestTime (from 1.0): for requesting features
  (e.g. sensor/measurement locations).
* GetObservationById / GetObservation: for requesting observations.
* GetResult (from 2.0): for requesting sensor data.
* GetResultTemplate (from 2.0): for requesting a template of the result 
  structure that will be returned by a GetResult request.
* GetDataAvailability (from `SOS 2.0 Hydrology Profile - OGC Best Practice 
  <http://docs.opengeospatial.org/bp/14-004r1/14-004r1.html#38>`_): for 
  requesting the data availability for certain configurations.

**Transactions**:

* InsertSensor (from 2.0): for inserting metadata of new sensors.
* InsertObservation (from 2.0): for inserting new observations.
* UpdateSensorDescription (from 2.0): for updating the description of a sensor.
* DeleteSensor (from 2.0): for deleting a sensor/procedure and all related 
  offerings and observations.
* DeleteObservation (extension for SOS 2.0): for deleting an observation.
* InsertResultTemplate (from 2.0): for inserting a result template.
* InsertResult (from 2.0): for inserting results.

Within these operations the following filter operators are possible where 
applicable:

* Spatial filter: BBOX, using a bounding box.
* Temporal filter: During, with time period.
* Temporal filter: TEquals, with time instant.


Applicable Standards
-------------------------------------------------------------------------------

* :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>`
* :doc:`Geography Markup Language (GML) <../standards/gml_overview>`
* :doc:`Sensor Model Language (SensorML) <../standards/sensorml_overview>`


Details
--------------------------------------------------------------------------------

**Website:** http://52north.org/sos

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** SOS |version-52nSOS|

**Supported Platforms:** Windows, Linux, Mac

**Supported DBMS:** PostgreSQL (9+) + PostGIS (2+), MariaDB/MySQL (5.6+), Oracle DB (9+), SQL Server 2012

**API Interfaces:** Java

**Commercial Support:** http://52north.org/

**Community Support:** http://sensorweb.forum.52north.org/

**Community Website:** http://52north.org/communities/sensorweb/

**Other 52°North projects:** :doc:`WPS <./52nWPS_overview>`


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/52nSOS_quickstart>`

