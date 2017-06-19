:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)i, Daniel Nüst (d.nuest@52north.org) 
:Reviewer: Cameron Shorter, Jirotech
:Translator: Agustín Díez
:Translator: Roberto Antolín
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo_52North_160.png
  :alt: project logo
  :align: right
  :target: http://52north.org/sos


52ºNorth SOS
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

El :doc:`Servicio de Observación de Sensores (SOS) <../standards/sos_overview>` 
de 52ºNorth puede leer y guardar datos actuales o archivados de sensores remotos in-situ. Un sensor puede ser una cámara de un satélite o el medidor de caudal de un río.
 
.. image:: /images/screenshots/1024x768/52n_sos_test_client_v1_0_0_GetCapabilities.png
  :scale: 100 %
  :alt: Pantallazos de un cliente de pruebas
  :align: right

Características
--------------------------------------------------------------------------------

* Implementa los estándares 1.0.0 y 2.0.0 de SOS 

* Un navegador proporciona consultas XML de prueba para todas las operaciones disponibles.

OGC SOS 1.0.0
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Operaciones del núcleo SOS**:

* `GetCapabilities`, para hacer una petición que describa el servicio.
* `GetObservation`, para solicitar datos puros del sensor codificados en Observaciones y Medidas (O&M).
* `DescribeSensor`, para solicitar metadatos sobre el sensor, codificados en un documento escrito en Lenguaje Modelo Sensor (SensorML).

**Operaciones transaccionales SOS**:

* `RegisterSensor`, para suscribirse a nuevos sensores.
* `InsertObservation`, para insertar nuevas observaciones de sensores registrados.

**Operaciones SOS adicionales**:

* `GetResult`, para facilitar consultas periódicas del sensor.
* `GetObservationById`, para obtener observaciones específicas.
* `GetFeatureOfInterest`, para solicitar el elemento final de la observación en formato GML.
* `GetFeatureOfInterestTime`, para determinar la disponibilidad temporal del sensor

OGC SOS 1.0.0
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `GetCapabilities`, para hacer una petición que describa el servicio.
* `GetObservation`, para solicitar datos puros del sensor codificados en Observaciones y Medidas (O&M).
* `DescribeSensor`, para solicitar metadatos sobre el sensor, codificados en un documento escrito en Lenguaje Modelo Sensor (SensorML).
* `GetFeatureOfInterest`, para solicitar el elemento final de la observación en formato GML.

Es posible filtrar las peticiones mediante los siguientes operadores:

* `Spatial filter`: BBOX, usando un rectángulo de coordenadas.
* `Temporal filter`: During, con un periodo temporal.
* `Temporal filter`: TEquals, con un tiempo determinado.

Estándares relacionados
--------------------------------------------------------------------------------

* :doc:`Servicio de Observación de Sensores (SOS) <../standards/sos_overview>`
* :doc:`Lenguaje de Marcado Geográfico (GML) <../standards/gml_overview>`
* :doc:`Lenguaje Modelo Sensor (SensorML) <../standards/sensorml_overview>`

Detalles
--------------------------------------------------------------------------------

**Sitio Web:** http://52north.org/communities/sensorweb/sos

**Licencia:** GNU General Public License (GPL) versión 2

**Versión del software:** SOS |version-52nSOS|

**Plataformas soportadas:** Windows, Linux, Mac

**Interfaces API:** Java

**Soporte comercial:** http://52north.org/

**Soporte:** http://sensorweb.forum.52north.org/

**Soporte de la comunidad:** http://52north.org/communities/sensorweb/

Guía rápida
--------------------------------------------------------------------------------

* :doc:`Guía de inicio rápido <../quickstart/52nSOS_quickstart>`
