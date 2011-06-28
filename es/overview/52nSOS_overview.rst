:Autor: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Versión: osgeo-live4.0
:Licencia: Creative Commons

.. Vista rápida_52nSOS:

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://52north.org/sos


52ºNorth SOS
=============

Web Service
~~~~~~~~~~~

El `Servicio de Observación de Sensores (SOS) <../standards/sos_overview.html>`_ 
52ºNorth puede leer y guardar datos actuales o archivados de sensores remotos in-situ. Un sensor puede ser una cámara de un satélite o el medidor de caudal de un río.
 
.. image:: ../../images/screenshots/1024x768/52n_sos_test_client.png
  :scale: 100 %
  :alt: Pantallazos de un cliente de pruebas
  :align: right

Características
--------

La versión actual de 52ºNorth SOS (version 3.1.1) se rige por el núcleo, transacciones y partes del èrfil mejorjardo de la especificación SOS. La versión actual lleva el esquema más recieciente (versión 1.0.0) y las siguientes operaciones:

**Operaciones del núcleo SOS**:

* GetCapabilities, para hacer una petición que describa el servicio.
* GetObservation, para solicitar datos puros del sensor codificados en Observaciones y Medidas (O&M)
* DescribeSensor, para solicitar metadatos sobre el sensor, codificados en un documento escrito en Lenguaje Modelo Sensor (SensorML) instance document.

**Operaciones transaccionales SOS**:

* RegisterSensor, para suscribirse a nuevos sensores.
* InsertObservation, para insertar nuevas observaciones de sensores registrados.

**Operaciones SOS adicionales**:

* GetResult, para facilitar consultas periódicas del sensor.
* GetObservationById, para obtener observaciones específicas.
* GetFeatureOfInterest, para solicitar el elemento final de la observación en formato GML.
* GetFeatureOfInterestTime, para determinar la disponibilidad temporal del sensor

**Cliente**:

* Un navegador proporciona consultas XML de todas las operaciones disponibles.

Estándares
---------------------

* `Servicio Observación Sensor (SOS) OGC <http://www.ogcnetwork.net/SOS>`_

Details
-------

* **Dirección electrónica:** http://52north.org/communities/sensorweb/sos

* **Licencia:** GNU GPL v2.0

* **Versión del software:** SOS 3.1.1

* **Plataformas en las que corre:** Windows, Linux, Mac

* **Interfaces API:** Java

* **Soporte Comercial:** http://52north.org/

* **Comunidad:** http://sensorweb.forum.52north.org/

* **Página de la comunidad:** http://52north.org/communities/sensorweb/

Guía rápida
----------

* `Documentación de la guía rápida <../quickstart/52nSOS_quickstart.html>`_

