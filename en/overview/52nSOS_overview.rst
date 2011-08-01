:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Version: osgeo-live4.0
:License: Creative Commons

.. _52nSOS-overview:

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://52north.org/sos


52°North SOS
=============

Web Service
~~~~~~~~~~~

The 52°North :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>` 
supports reading of live and archived data captured by in-situ and remote sensors. A sensor may 
be a camera on a satellite or a water level meter in a stream.
 
.. image:: ../../images/screenshots/1024x768/52n_sos_test_client.png
  :scale: 100 %
  :alt: screenshot of sos test client
  :align: right

Features
--------

The current 52°North SOS (version 3.1.1) implements the core, transactional, and 
parts of the enhanced profile of the SOS specification. The current 
release implements the latest schema version (1.0.0) and the following operations:

**Core SOS operations**:

* GetCapabilities, for requesting a self-description of the service.
* GetObservation, for requesting the pure sensor data encoded in Observations & Measurements (O&M)
* DescribeSensor, for requesting meta information about the sensor itself, encoded in a Sensor Model Language (SensorML) instance document.

**Transactional SOS operations**:

* RegisterSensor, for signing up new sensors.
* InsertObservation, for inserting new observations for registered sensors.

**Additional SOS operations**:

* GetResult, for facilitating periodically polling sensor data.
* GetObservationById, for retrieving specific individual observations.
* GetFeatureOfInterest, for requesting the GML encoded representation of the feature that is the target of the observation.
* GetFeatureOfInterestTime, for determining the temporal availability of sensor data

**Client**:

* A browser based client provides test XML queries for all supported operations.

Implemented Standards
---------------------

* `OGC Sensor Observation Service (SOS) <http://www.ogcnetwork.net/SOS>`_

Details
-------

* **Website:** http://52north.org/communities/sensorweb/sos

* **Licence:** GNU GPL v2.0

* **Software Version:** SOS 3.2.0

* **Supported Platforms:** Windows, Linux, Mac

* **API Interfaces:** Java

* **Commercial Support:** http://52north.org/

* **Community Support:** http://sensorweb.forum.52north.org/

* **Community Website:** http://52north.org/communities/sensorweb/

Quickstart
----------

* :doc:`Quickstart documentation <../quickstart/52nSOS_quickstart>`

