:Author: Jan Drewnak (j.drewnak@52north.org)
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _52nWSS-overview:

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://52north.org/security

52°North WSS
================================================================================

Über
--------------------------------------------------------------------------------

Der 52North Web Security Service (WSS) ermöglicht eine Zugriffskontrolle zu räumlichen Diensten
und ihren Resourcen über rollenbasierte Berechtigungen.

Mit 52North WSS können z.B. folgende Zugriffregelen definiert werden:

  *Alle Benutzer in der Rolle 'extern' dürfen nur auf Layer A und B des WMS über GetMap zugreifen.*

oder

  *GetFeatureInfo ist lediglich auf Layer A in einem bestimmten Bereich erlaubt, der über eine Bounding Box definiert wird.*

Der 52North WSS ist eine Java Web Applikation, die normalerweise in einem Apache Tomcat Servlet Container läuft.
Er agiert als Proxy für eine beliebe Anzahl von OGC Web Services, der alle Requests entgegen nimmt
und entsprechend der definierten Regeln reagiert.
Regeln und Benutzer sind in XML Konfigurationsdateien definiert, die über ein generelles Management Interface gepflegt werden.

.. image:: ../../images/screenshots/1024x768/52n_wss_mgmt.png
  :scale: 70 %
  :alt: Bildschirmfoto WSS Management UI
  :align: right

Funktionen
--------------------------------------------------------------------------------

**Autorisation**

Beinhaltet Zugriffsschutz von:

* Web Mapping Service (WMS): Layer, räumliche Ausdehnung
* Web Feature Service (WFS): Feature Typen, Features und ihre Attribute, räumliche Ausdehnung
* Sensor Observation Service (SOS): Angebote, Prozeduren, räumliche Ausdehnung, zeitliche Ausdehnung
* Web Processing Service (WPS): Prozesse

**Authentifizierung**

Verschiedene Methoden zur Benutzerauthentifizierung, wie z.B.:

* HTTP Basic Authentication
* SAML Assertions (Security Assertions Markup Language)
* ... und andere


Details
--------------------------------------------------------------------------------

**Webseite:** http://52north.org/communities/security

**Lizenz:** GNU General Public License (GPL) version 2

**Software Version:** WSS 2.2.0

**Unterstützte Plattformen:** Windows, Linux, Mac

**API Schnittstellen:** Java

**Kommerzieller Support:** http://52north.org/


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/52nWSS_quickstart>`
