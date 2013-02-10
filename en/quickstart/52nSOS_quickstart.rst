:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/sos
  
********************************************************************************
52°North SOS Quickstart 
********************************************************************************

The 52°North SOS is a web service, that allows you to provide and collect spatial sensor data (including metadata and measurements/observations).

This Quick Start describes how to:

  * Query the 52°North SOS Capabilities to determine what queries it suports
  * Query details about an Observation from the SOS.

.. contents:: Contents
  
Getting Started
================================================================================

1. Select :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North SOS` to start the 52°North SOS.
   
2. This will open the 52°North SOS test client welcome page in firefox at http://localhost:8080/52nSOS/.  Open the test client by selecting the version you would like to use, 1.0.0 for example:

.. image:: ../../images/screenshots/1024x768/52n_sos_test_client_start.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS test client welcome page
  :align: center

**Fig. 1**: 52°North SOS test client - welcome page

3. The test client can be used to send requests to the service using a simple form. A drop-drown list allows you to select from a collection of predefined requests, which are adapted to the respective service version selected in the step before.

.. image:: ../../images/screenshots/1024x768/52n_sos_test_client_v1_0_0_GetCapabilities.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS test client version 1.0.0
  :align: center
  
**Fig. 2**: 52°North SOS test client - specification version 1.0.0 
  
4. Lets start by determining what data can be queried from the SOS by sending a GetCapabilities request.  Select the GetCapabilities_allSections.xml request from the drop-down list next to "Request Examples" (see number [1] in Fig. 2).
  
5. Push the **Send button** (number [2] in Fig. 2) and the request will be transmitted to the 52°North SOS. As result, a XML document is returned (see Fig. 3), which shows the capabilities of the SOS (service metadata such as keywords or provider, available operations and filters, contained observation data,...). To see the original response open the source view (Ctrl+U).

.. image:: ../../images/screenshots/1024x768/52n_sos_response.png
  :scale: 70 %
  :alt: screenshot of 52°North SOS output - GetCapabilities response encoded in XML
  :align: center
  
**Fig. 3**: 52°North SOS - GetCapabilities response (XML encoded)
  
6. Once you know the capabilities of a SOS, you can craft appropriate queries. Again, this is made easier by selecting sample queries from the test client pull down list.  For instance, lets get details about the latest Observation by selecting the :file:`GetObs_latestObs.xml` request from the drop down menu and press the **Send button**.

.. TBD Cameron's comment.
  I suggest adding another screenshot here.

Things to Try
================================================================================

* Try some of the other example queries from the pull down list.
* Try tweaking some of these queries to get different information.

What Next?
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
