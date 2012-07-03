:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Reviewer: TBD
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/sos
  
********************************************************************************
52°North SOS Quickstart 
********************************************************************************

Getting Started
================================================================================

The 52°North SOS is a web service, that allows you to provide and collect spatial sensor data (including metadata and measurements/observations).

1) Go to :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North SOS`	to start the 52°North SOS or use this `direct link <http://localhost:8080/52nSOS/>`_. (If the service is not reachable, try to start the Tomcat servlet engine following the steps at the bottom of this page.)

2) Firefox will open the 52°North SOS test client welcome page (see Fiq. 1). Please select the specification version you would like to use, 1.0.0 for example:

.. image:: ../../images/screenshots/1024x768/52n_sos_test_client_start.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS test client welcome page
  :align: center

**Fig. 1**: 52°North SOS test client - welcome page

3) The test client appears. It can be used to send requests to the service using a simple form. A drop-drown list allows you to select from a collection of predefined requests, which are adopted to the respective service version selected in the step before.

.. image:: ../../images/screenshots/1024x768/52n_sos_test_client_v1.0.0_GetCapabilities.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS test client version 1.0.0
  :align: center
  
**Fig. 2**: 52°North SOS test client - specification version 1.0.0 
  
4) To get started with the SOS, select the GetCapabilities_allSections.xml request from the drop-down list next to "Request Examples" (see number [1] in Fig. 2).
  
5) Push the **Send button** (number [2] in Fig. 2) and the request will be transmitted to the 52°North SOS. As result, a XML document is returned (see Fig. 3), which shows a the capabilities of the SOS (service metadata such as keywords or provider, available operations and filters, contained observation data,...). To see the original response open the source view (Ctrl+U).

.. image:: ../../images/screenshots/1024x768/52n_sos_response.png
  :scale: 70 %
  :alt: screenshot of 52°North SOS output - GetCapabilities response encoded in XML
  :align: center
  
**Fig. 3**: 52°North SOS - GetCapabilities response (XML encoded)
  
6) In Order to build your own requests you will need the `capabilities <http://localhost:8080/52nSOS/sos?REQUEST=GetCapabilities&SERVICE=SOS&ACCEPTVERSIONS=1.0.0>`_  of the 52°North SOS (specification 1.0.0). Using the information provided in the capabilities, and most importantly the contents section, you can adjust the provided requests in the test client. Just select a GetObservation request (GetObs...) from the drop down menu and use it as a template get your own observation subsets.

Additional Information
================================================================================

To learn more about 52°North SOS and/or the 52°North Sensor Web Community, potential starting points are:

* The 52°North :doc:`SOS overview <../overview/52nSOS_overview>`,
* The 52°North Sensor Web mailing list: swe@52north.org, 
* Check the 52°North `Sensor Web community forum <http://sensorweb.forum.52north.org/>`_, 
* Check the 52°North `SOS Client <http://sensorweb.demo.52north.org/SOSclient/>`_,
* 52°North `SOS website <http://52north.org/communities/sensorweb/sos/>`_, or 
* The website of the `52°North Sensor Web Community <http://52north.org/communities/sensorweb/>`_.

* When the SOS is not available, please check if the tomcat servlet engine is running using the following command:

::

  user@osgeolive:~$ sudo /etc/init.d/tomcat6 status
  * Tomcat servlet engine is running with pid 1234          <-- Tomcat is running
  [...]
  * Tomcat servlet engine is not running.                   <-- Tomcat not runing, so please start:
  user@osgeolive:~$ sudo /etc/init.d/tomcat6 start
  * Starting Tomcat servlet engine tomcat6           [ OK ] <-- Tomcat is running, now
  
**Listing 1:** Tomcat Status and Start (password for sudo: user)

* The development of this version of the 52°North SOS was supported by the European FP7 research project `EO2HEAVEN <http://www.eo2heaven.org/>`_ (co-funded by the European Commission under the under grant agreement n°244100):

.. image:: ../../images/project_logos/logo_52North_other_200px.png
  :scale: 100 %
  :alt: EO2HEAVEN - Earth Observation and ENVironmental Modeling for the Mitigation of HEAlth Risks
  :align: center
  :target: http://www.eo2heaven.org/
