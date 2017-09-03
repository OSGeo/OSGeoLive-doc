:Author: Jan Drewnak (j.drewnak@52north.org)
:Reviewer: Cameron Shorter, Jirotech
:Translator: Jorge Sanz
:Translator: Roberto Antolín
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo_52North_160.png
  :alt: project logo
  :align: right
  :target: http://52north.org/security

52°North WSS
================================================================================

Acerca de...
--------------------------------------------------------------------------------

El Servicio de Seguridad Web (WSS) le permite restringir fácilmente el acceso a 
servicios geoespaciales y a sus recursos asociados usando permisos basado en
roles.

Con 52North WSS usted puede definir políticas como:

  * Todos los usuarios en el rol 'externo' tienen permitido el acceso únicamente
    a las capas A y B del WMS con la operación 'GetMap'.

o

  * La operación 'GetFeatureInfo' solo se permite en la capa A en un área
    específica definida por un rectángulo.

52North WSS es una aplicación web Java que normalmente se ejecuta en un contenedor
Apache Tomcat. Éste actúa como un proxy para un número arbitrario de servicios
web OGC, recibiendo todas las peticiones y actuando según las políticas 
definidas. Por lo tanto, no es necesario modificar las implementaciones 
existentes. Las políticas y usuarios se definen en ficheros de configuración
XML, que se mantienen desde una interfaz de gestión general.

.. image:: /images/projects/52nWSS/52n_wss_mgmt.png
  :scale: 70 %
  :alt: Pantalla de la interfaz de gestión de WSS
  :align: right

Características
--------------------------------------------------------------------------------

**Autorización**

Incluye protección para:

* Web Mapping Service (WMS): capas, extensiones espaciales
* Web Feature Service (WFS): tipos de entidades, entidades y sus atributos, 
  extensiones espaciales
* Servicio de Observación de Sensores (SOS): 'offerings', procedimientos, extensiones 
  espaciales, extensiones temporales
* Web Processing Service (WPS): procesos

**Autenticación**

Múltiples métodos de autenticación soportados, como:

* Autenticación básica HTTP
* Aserciones SAML (`Security Assertions Markup Language`)
* ... y otros


Detalles
--------------------------------------------------------------------------------

**Sitio web:** http://52north.org/communities/security

**Licencia:** GNU General Public License (GPL) version 2

**Versión de software:** WSS 2.2.0

**Plataformas soportadas:** Windows, Linux, Mac

**Interfaces API:** Java

**Soporte comercial:** http://52north.org/


Guía rápida
--------------------------------------------------------------------------------

* :doc:`Guía de inicio rápido <../quickstart/52nWSS_quickstart>`