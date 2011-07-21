:Author: Jan Drewnak (j.drewnak@52north.org)
:Version: osgeo-live4.0
:License: Creative Commons

.. _52nWSS-overview:

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://52north.org/security


52°North WSS
=============

About
~~~~~~~~~~~

The 52North Web Security Service (WSS) lets you easily restrict access to spatial services and
their resources with role-based permissions.

With 52North WSS you can define access policies like:

*All users in role 'external' are allowed to access just layers A and B of the WMS with GetMap. 
GetFeatureInfo is only allowed on layer A in a specific area defined by a bounding box.*

Features
~~~~~~~~~~~~~~

Authorization
-------------

Current support includes protection of 

* Web Mapping Service (WMS): layers, spatial extents
* Web Feature Service (WFS): feature types, features and their attributes, spatial extents
* Sensor Observation Service (SOS): offerings, procedures, spatial extents, temporal extents
* Web Processing Service (WPS): processes

Authentication
--------------
With 52North WSS you can choose between different authentication methods to identify users like

* HTTP Basic Authentication
* SAML Assertions (Security Assertions Markup Language)
* ... and others


Technical Background
~~~~~~~~~~~~~~~~~~~~

The 52North WSS is a Java Web Application usually running in the Apache Tomcat Servlet container.
It acts as a proxy for an arbitrary number of OGC Web Services, receiving all requests and acting 
upon the defined policies. Thus, existing service implementations don't need to be changed.


Details
~~~~~~~~

* **Website:** http://52north.org/communities/security

* **Licence:** GNU GPL v2.0

* **Software Version:** WSS 2.2.0

* **Supported Platforms:** Windows, Linux, Mac

* **API Interfaces:** Java

* **Commercial Support:** http://52north.org/


Quickstart
----------

* `Quickstart documentation <../quickstart/52nWSS_quickstart.html>`_

