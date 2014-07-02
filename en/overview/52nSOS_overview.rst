:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org), Daniel Nüst (d.nuest@52north.org)
:Reviewer: Cameron Shorter, LISAsoft
:Reviewer: Frank Gasdorf
:Version: osgeo-live8.0
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

The 52°North :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>` supports reading of live and archived data captured by in-situ and remote sensors. A sensor may be a camera on a satellite or a water level meter in a stream.
 
.. image:: ../../images/screenshots/1024x768/52n_sos_test_client_v4_0_0_GetCapabilities_json.png
  :scale: 60 %
  :alt: screenshot of 52°North SOS test client version 1.0.0
  :align: right

Features
--------------------------------------------------------------------------------

* Implements the SOS 1.0.0 and 2.0.0 standards.

* A browser based client provides means for administration and configuration of the service instance. In addition, test queries for all supported operations are provided.


OGC SOS 1.0.0
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Core SOS operations**:

* GetCapabilities, for requesting a self-description of the service.
* GetObservation, for requesting the pure sensor data encoded in Observations & Measurements (O&M).
* DescribeSensor, for requesting meta information about the sensor itself, encoded in a Sensor Model Language (SensorML) instance document.

**Transactional SOS operations**:

* RegisterSensor, for signing up new sensors.
* InsertObservation, for inserting new observations for registered sensors.

**Additional SOS operations**:

* GetResult, for facilitating periodically polling sensor data.
* GetObservationById, for retrieving specific individual observations.
* GetFeatureOfInterest, for requesting the GML encoded representation of the feature that is the target of the observation.
* GetFeatureOfInterestTime, for determining the temporal availability of sensor data.

OGC SOS 2.0.0
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Operations of “SOS Core Profiles“**:

* GetCapabilities, for requesting a self-description of the service.
* GetObservation, for requesting the pure sensor data encoded in Observation&Measurements 2.0 (O&M 2.0).
* DescribeSensor, for requesting information about the sensor itself, encoded in a Sensor Model Language (SensorML) instance document.

**Operations of “SOS Enhanced Profiles”**:

* GetFeatureOfInterest, for requesting the features hosted by this SOS instance.
* GetObservationById, for requesting a single observation instance by its id.

**Operation of “SOS Result Handling Profiles”**:

* InsertResultTemplate, for inserting a result template for later easy observation retrieval.
* InsertResult, for inserting results for a before registered result template.
* GetResultTemplate, for requesting a template of the result structure returned by a GetResult request.
* GetResult, for requesting results without observation metadata and information about the result structure .

**Operations of “SOS Transactional Profiles”**:

* InsertSensor, for adding a new sensor.
* InsertObservation, for adding a new observation.
* UpdateSensorDescription, for updating the description of an already inserted sensor.
* DeleteSensor, for deleting a sensor/procedure and all related offerings, observations.

**Operation “Data Availability”**:

* GetDataAvailability, for requesting the data availability for certain configurations (not specified in the SOS 2.0).

**Operation “Delete Observation”**:

* DeleteObservation, for deleting one single observation identified by id (not specified in the SOS 2.0).

Within these requests the following filter operators are possible where applicable:

* Spatial filter: BBOX, using a bounding box.
* Temporal filter: During, with time period.
* Temporal filter: TEquals, with time instant.

Related Standards
--------------------------------------------------------------------------------

* :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>`
* :doc:`Geography Markup Language (GML) <../standards/gml_overview>`
* :doc:`Sensor Model Language (SensorML) <../standards/sensorml_overview>`

Details
--------------------------------------------------------------------------------

**Website:** http://52north.org/communities/sensorweb/sos

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** SOS |version-52nSOS|

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** Java

**Commercial Support:** http://52north.org/

**Community Support:** http://sensorweb.forum.52north.org/

**Community Website:** http://52north.org/communities/sensorweb/

**Other 52°North projects:** :doc:`WPS <./52nWPS_overview>`

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/52nSOS_quickstart>`

