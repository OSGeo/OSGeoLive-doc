:Author: Jan Drewnak (j.drewnak@52north.org)
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Anna Muñoz
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: logotip del projecte
  :align: right
  :target: http://52north.org/security

52°North WSS
================================================================================

Sobre el projecte
--------------------------------------------------------------------------------

El Servei de Seguretat Web (Web Security Service, WSS) del projecte 52North
permet restringir fàcilment l'accès als serveis geospacials i als seus recursos
segons un sistema de definició de permisos basat en rols.

El servei WSS permet definir polítiques del següent estil:

  *Tots els usuaris amb el rol 'external' tenen access només a les capes A i B d'un servei WMS amb l'operació 'GetMap'.*

o bé,

  *L'ús de l'operació 'GetFeatureInfo' només està permés dintre d'una àrea concreta de la capa A que s'ha definit per un rectangle (BBox).*

El projecte 52North WSS és una aplicació web desenvolupada en Java que normalment s'executa en un servidor Apache Tomcat
Actúa com a proxy d'un número arbitrari de Serveiw Web OGC, rebent totes les peticions i actuant segons les polítiques definides.
Per tant, no cal modificar la implementació del servei que ja existeix.
Les polítiques i els usuaris es defineixen en un arxiu de configuració XML, que es mantenen des d'una interface general de gestió.

.. image:: ../../images/screenshots/1024x768/52n_wss_mgmt.png
  :scale: 70 %
  :alt: Captura de pantalla de WSS Management UI
  :align: right

Característiques
--------------------------------------------------------------------------------

**Autorització**

Inclou la gestió de la protecció per:

* Web Mapping Service (WMS): capas (layers), extensions espacials
* Web Feature Service (WFS): tipus d'entitats (features), entitats i els seus atributs, extensions espacials
* Sensor Observation Service (SOS): procediments, extensions espacials, extensions temporals
* Web Processing Service (WPS): procesos

**Autenticació**

Soporta métodes de validació de múltiples usuaris, tals com:

* Validació bàsica HTTP
* SAML Assertions (Security Assertions Markup Language)
* ... i altres


Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://52north.org/communities/security

**Llicències:** GNU General Public License (GPL) version 2

**Versió del programari:** WSS 2.2.0

**Plataformes suportades:** Windows, Linux, Mac

**API Interfaces:** Java

**Suport Comercial:** http://52north.org/


Guia ràpida d'inici 
--------------------------------------------------------------------------------

* :doc:`Documentació de la guia ràpida d'inici  <../quickstart/52nWSS_quickstart>`
