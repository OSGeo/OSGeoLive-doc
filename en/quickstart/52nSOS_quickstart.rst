:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Reviewer: 
:Version: osgeo-live8.0
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
   
2. This will open the 52°North SOS client welcome page in firefox at http://localhost:8080/52nSOS/.  Open the test client by selecting the version you would like to use, 1.0.0 for example:

.. image:: ../../images/screenshots/1024x768/52n_sos_install_start.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS client welcome page
  :align: center

**Fig. 1**: 52°North SOS client - welcome page

3. Follow the set-up and configuration instructions. As datasource select as needed. For short test, 
   select H2/GeoDB (in memory). During workshops or for installing a database server like PostgreSQL
   should be used. Hence, select PostgreSQL/PostGIS. This requires an existing database with PostGIS
   2.0 installed.

.. image:: ../../images/screenshots/1024x768/52n_sos_insert_test_data.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS client - test client with batch operation
  :align: center
  
**Fig. 2**: 52°North SOS client - test client with batch operation
  
4. Let's insert some test data after installing the 52°North SOS. Hence, select the batch operation
   in the test client and click on the send button (see Fig. 2)
  
5. Once you know `the capabilities of a SOS<http://localhost:8080/52nSOS/sos?REQUEST=GetCapabilities&SERVICE=SOS&ACCEPTVERSIONS=1.0.0>`_,
   you can craft appropriate queries. Again, this is made easier by selecting sample queries from the test client pull down list.
   Using the information from the capabilities, you can adjust the available example queries.



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

* The development of this version of the 52°North SOS was supported by different projects, organizations, and persons. 
  More details can be found in the `52°North SOS client<http://localhost:8080/52nSOS/index`_.