:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Version: osgeo-live4.0
:License: Creative Commons

.. _52nSOS-quickstart:
 
.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right

***********************
52°North SOS Quickstart 
***********************

Running
=======

Getting Started
~~~~~~~~~~~~~~~

52°North SOS is an web service, that allows you to provide and collect spatial sensor data (including metadata and measurements/observations).

1) Go to :menuselection:`Geospatial --> Web Services --> Start 52North SOS` to start  52°North SOS.

2) Firefox will open the 52°North SOS test client.


.. image:: ../../images/screenshots/1024x768/52n_sos_test_client.png
  :scale: 75 %
  :alt: screenshot
  :align: right
  
3) To get started with the SOS, select the GetCapabilities_allSections.xml request from the drop down list next to "Request Examples".
  
4) Push the Send-Button and the request will be transmitted to the 52°North SOS. As result, a XML document is returned, which showsa the capabilities of the SOS (available data,...).

.. image:: ../../images/screenshots/1024x768/52n_sos_response.png
  :scale: 75 %
  :alt: screenshot
  :align: right
  
5) In Order to build your own requests you will need the `capabilities of the 52°North SOS<http://localhost:8080/52NorthSOSv3.1.1/sos?REQUEST=GetCapabilities&SERVICE=SOS&ACCEPTVERSIONS=1.0.0>`_. Using this input, you can edit the provided requests by the test client. Just select them from the drop down menu.

To learn more about 52°North SOS and/or 52°North, potential starting points are: the 52°North Sensor Web mailing list (swe@52north.org), check the `52°North Sensor Web Forum<http://sensorweb.forum.52north.org/>`_, `52°North SOS homepage<http://52north.org/communities/sensorweb/sos/>`_, or the homepage of the `52°North Sensor Web Community<http://52north.org/communities/sensorweb/>`.
