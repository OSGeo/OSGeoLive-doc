:Author: Jan Drewnak (j.drewnak@52north.org)
:Translator: Milena Nowotarska, OSGeo
:Reviewer:
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://52north.org/security

52°North WSS
================================================================================

O produkcie
--------------------------------------------------------------------------------

The 52North Web Security Service (WSS) lets you easily restrict access to spatial services and
their resources using role-based permissions.

With 52North WSS you can define access policies like:

  *All users in role 'external' are allowed to access just layers A and B of the WMS with GetMap.*

or

  *GetFeatureInfo is only allowed on layer A in a specific area defined by a bounding box.*

The 52North WSS is a Java Web Application which usually runs in a Apache Tomcat Servlet container.
It acts as a proxy for an arbitrary number of OGC Web Services, receiving all requests and acting 
upon the defined policies. Thus, existing service implementations don't need to be changed.
Policies and users are defined in XML configuration files, which are maintained from a general management interface.

.. image:: ../../images/screenshots/1024x768/52n_wss_mgmt.png
  :scale: 70 %
  :alt: Screenshot of WSS Management UI
  :align: right

Funkcje
--------------------------------------------------------------------------------

**Autoryzacja**

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


Szczegóły
--------------------------------------------------------------------------------

**Strona internetowa:** http://52north.org/communities/security

**Licencja:** GNU General Public License (GPL) version 2

**Wersja programu:** WSS 2.2.0

**Systemy operacyjne:** Windows, Linux, Mac

**Interfejsy API:** Java

**Wsparcie komercyjne:** http://52north.org/


Wprowadzenie
--------------------------------------------------------------------------------

* :doc:`Przejdź do wprowadzenia <../quickstart/52nWSS_quickstart>`
