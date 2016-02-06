:Author: Massimiliano Cannata, Milan Antonovic, SUPSI
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live9.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-istsos.png
  :alt: project logo
  :align: right
  :target: http://istsos.org

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html


istSOS
================================================================================

Data Management Tool
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

istSOS is sensor data management tool that allows collection, maintenance and publishing of monitoring observations using the Open Geospatial Consortium (OGC) `Sensor Observation Service (SOS) <../standards/sos_overview>` standard.

.. image:: ../../images/screenshots/1024x768/screenshot_istsos.png
  :scale: 60 %
  :alt: data viewer
  :align: right

istSOS strictly implements the SOS 1.0.0 standard, and has passed the OGC CITE (Compliance + Interopability Testing + Evaluation) units tests.

Core Features
--------------------------------------------------------------------------------

* Publish sensor data in accordance with the Sensor Observation Service (SOS) standard.
* Administer sensors and your data with an **intuitive web-based interface**.
* Use a complete **RestFul API** to access istSOS functionality from external clients to create interactive charts, display sensor on a dinamic map or just write some maintainance scripts.
* Get notified through mail, twitter or other social when your sensor data meet specific conditions.
* **User authentication and authorization** with different access levels (administrator, network manager, data manager and visitor).
* Create **Virtual Procedures** that look like normal stations but whose data result from on-the-fly elaboration of other sensor data.
* Associate quality indexes to each observation thanks to **embedded validation tests**.
* **Online editing** of your data with a seamless interface and advanced observation calculator.


Implemented Standards
--------------------------------------------------------------------------------
* SOS 1.0.0: Basic and Transactional profiles

Details
--------------------------------------------------------------------------------

**Website:** http://istsos.org

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** 2.3.0

**Supported Platforms:** Linux, Unix, Mac, Windows

**API Interfaces:** Python / wsgi

**Support:** https://groups.google.com/forum/#!forum/istsos


Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/istsos_quickstart>`

