:Author: Jan Drewnak (j.drewnak@52north.org)
:Translator: Milena Nowotarska, OSGeo
:Reviewer:
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo_52North_160.png
  :alt: project logo
  :align: right
  :target: http://52north.org/security

52°North WSS
================================================================================

O produkcie
--------------------------------------------------------------------------------

52North Web Security Service (WSS) pozwala w łatwy sposób
zastrzec dostęp do przestrzennych usług sieciowych oraz ich
zasobów przez przydzielenie ról i uprawnień

Za pomocą 52North WSS możesz zdefiniować rodzaje dostępu:

  *Wszyscy użytkownicy w roli 'external' mają możliwość
  dostępu tylko do warstw A i B usługi WMS poprzez GetMap.*

lub

  *GetFeatureInfo jest dopuszczalne dla warstwy A w zadanym obszarze zdefiniowanym przez zasięg bounding box.*

52North WSS  jest to Java Web Application, która zwykle działa w Apache Tomcat Servlet container.
It acts as a proxy for an arbitrary number of OGC Web Services, receiving all requests and acting 
upon the defined policies. Thus, existing service implementations don't need to be changed.
Policies and users are defined in XML configuration files, which are maintained from a general management interface.

.. image:: /images/screenshots/1024x768/52n_wss_mgmt.png
  :scale: 70 %
  :alt: Screenshot of WSS Management UI
  :align: right

Funkcje
--------------------------------------------------------------------------------

**Autoryzacja**

Pozwala na ochronę:

* Web Mapping Service (WMS): warstw, zasięgów przestrzennych
* Web Feature Service (WFS): typów obiektów, obiektów i ich atrybutów, zasięgów przestrzennych
* Sensor Observation Service (SOS): offerings, procedures, spatial extents, temporal extents
* Web Processing Service (WPS): procesów

**Autentykacja**

Multiple user authentication methods supported, such as:

* HTTP Basic Authentication
* SAML Assertions (Security Assertions Markup Language)
* ... i inne


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
