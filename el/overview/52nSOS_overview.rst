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

The 52°North `Sensor Observation Service (SOS) <../standards/sos_overview.html>`_ 
aggregates readings from live, in-situ and remote sensors. The service provides 
an interface to make sensors and sensor data archives accessible via an 
interoperable web based interface. Four profiles are defined within the SOS 
specification: core, transactional, enhanced, and entire. The current release 
(52N-SOS-3.1.1) implements the core, transactional, and parts of the enhanced 
profile comprising the mandatory operations. The current release implements the 
latest schema version (1.0.0).


.. image:: ../../images/screenshots/1024x768/52n_sos_test_client.png
  :scale: 50 %
  :alt: screenshot of sos test client
  :align: right

Core Features
-------------
* GetCapabilities, for requesting a self-description of the service.
* GetObservation, for requesting the pure sensor data encoded in Observations & Measurements (O&M)
* DescribeSensor, for requesting information about the sensor itself, encoded in a Sensor Model Language (SensorML) instance document.

The transactional profile comprising of the following operations is implemented, too:
* RegisterSensor, for signing up new sensors.
* InsertObservation, for inserting new observations for registered sensors.

Additionally, the following operations are implemented:
* GetResult, for periodically polling of sensor data
* GetObservationById
* GetFeatureOfInterest, for requesting the GML encoded representation of the feature that is the target of the observation.
* GetFeatureOfInterestTime

* A browser based client

Implemented Standards
---------------------

* OGC Sensor Observation Service (SOS)

Details
-------

* **Website:** http://52north.org/communities/sensorweb/sos

* **Licence:** GPL

* **Software Version:** SOS 3.1.1

* **Supported Platforms:** Windows, Linux, Mac

* **API Interfaces:** Java

* **Commercial Support:** http://www.52north.org/


Quickstart
----------

* `Quickstart documentation <../quickstart/52nSOS_quickstart.html>`_


