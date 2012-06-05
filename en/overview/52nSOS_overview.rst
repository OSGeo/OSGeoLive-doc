:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Reviewer: TBD
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/screenshots/1024x768/52n_sos_test_client_v1.0.0_GetCapabilities.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS test client version 1.0.0
  :align: center


52°North SOS
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The 52°North :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>` 
supports reading of live and archived data captured by in-situ and remote sensors. A sensor may 
be a camera on a satellite or a water level meter in a stream.
 
.. image:: ../../images/screenshots/1024x768/52n_sos_test_client_v1.0.0_GetCapabilities.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS test client version 1.0.0
  :align: center

Features
--------------------------------------------------------------------------------

**Client**:

* A browser based client provides test XML queries for all supported operations.

The current 52°North SOS (version 3.5.0) implements the latest schema version 
(2.0.0 and its predecessor 1.0.0). Regarding the different specification 
versions the following operations are implemented:

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
* DescribeSensor, for requesting meta information about the sensor itself, encoded in a Sensor Model Language (SensorML) instance document.
* GetObservation, for requesting the pure sensor data encoded in Observations & Measurements (O&M).
* GetFeatureOfInterest, for requesting the GML encoded representation of the feature that is the target of the observation.

Within these requests the following filter operators are possible:

* Spatial filter: BBOX, using a bounding box.
* Temporal filter: During, with time period.
* Temporal filter: TEquals, with time instant.

Implemented Standards
--------------------------------------------------------------------------------

* `OGC Sensor Observation Service (SOS) <http://www.ogcnetwork.net/SOS>`_

Details
--------------------------------------------------------------------------------

**Website:** http://52north.org/communities/sensorweb/sos

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** SOS 3.5.0

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** Java

**Commercial Support:** http://52north.org/

**Community Support:** http://sensorweb.forum.52north.org/

**Community Website:** http://52north.org/communities/sensorweb/

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/52nSOS_quickstart>`

