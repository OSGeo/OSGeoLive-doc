:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org), Daniel Nüst (d.nuest@52north.org)
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo_52North_160.png
  :alt: project logo
  :align: right
  :target: http://52north.org/sos


52°North SOS
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The 52°North :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>` supports reading of live and archived data captured by in-situ and remote sensors. A sensor may be a camera on a satellite or a water level meter in a stream.
 
.. image:: /images/screenshots/1024x768/52n_sos_test_client_v1_0_0_GetCapabilities.png
  :scale: 60 %
  :alt: screenshot of 52°North SOS test client version 1.0.0
  :align: right

Features
--------------------------------------------------------------------------------

* Implements the SOS 1.0.0 and 2.0.0 standards.

* A browser based client provides test XML queries for all supported operations.


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

* GetCapabilities, for requesting a self-description of the service.
* GetObservation, for requesting the pure sensor data encoded in Observations & Measurements (O&M).
* DescribeSensor, for requesting meta information about the sensor itself, encoded in a Sensor Model Language (SensorML) instance document.
* GetFeatureOfInterest, for requesting the GML encoded representation of the feature that is the target of the observation.

Within these requests the following filter operators are possible:

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

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/52nSOS_quickstart>`

