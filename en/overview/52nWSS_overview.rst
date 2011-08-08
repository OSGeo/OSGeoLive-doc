:Author: Jan Drewnak (j.drewnak@52north.org)
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _52nWSS-overview:

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://52north.org/security

52°North WSS
================================================================================

About
--------------------------------------------------------------------------------

The 52North Web Security Service (WSS) lets you easily restrict access to spatial services and
their resources using role-based permissions.

.. Cameron comment: Please include an image, maybe a screen grab of a configuration page, or even a stock photo of a lock if you haven't got a good screen grab. Make sure you have the rights to release image as Creative Commons.

With 52North WSS you can define access policies like:

  *All users in role 'external' are allowed to access just layers A and B of the WMS with GetMap.*

or

  *GetFeatureInfo is only allowed on layer A in a specific area defined by a bounding box.*

The 52North WSS is a Java Web Application which usually runs in a Apache Tomcat Servlet container.
It acts as a proxy for an arbitrary number of OGC Web Services, receiving all requests and acting 
upon the defined policies. Thus, existing service implementations don't need to be changed.

.. Cameron comment: I suggest adding a sentence here, or in Features, noting how a user would create an access policy. Is there a web GUI and pull down lists? Or does a user create an XML file?

Features
--------------------------------------------------------------------------------

**Authorization**

Includes protection of:

* Web Mapping Service (WMS): layers, spatial extents
* Web Feature Service (WFS): feature types, features and their attributes, spatial extents
* Sensor Observation Service (SOS): offerings, procedures, spatial extents, temporal extents
* Web Processing Service (WPS): processes

**Authentication**

Multiple user authentication methods supported, such as:

* HTTP Basic Authentication
* SAML Assertions (Security Assertions Markup Language)
* ... and others


Details
--------------------------------------------------------------------------------

**Website:** http://52north.org/communities/security

**Licence:** GNU GPL v2.0

**Software Version:** WSS 2.2.0

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** Java

**Commercial Support:** http://52north.org/


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/52nWSS_quickstart>`
