:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Reviewer: TBD
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/sos
  
********************************************************************************
Guía de inicio rápido de 52°North SOS
********************************************************************************

Para Empezar
================================================================================

52°North SOS es un servicio web que le permite obtener datos espaciales de sensores (incluyendo metadatos y mediciones u observaciones).

1) Ir al menú: `Geospatial --> Web Services --> 52North --> Start 52North SOS`	para arrancar 52°North SOS o usar este `enlace directo <http://localhost:8080/52nSOS/>`_. (Si el servicio no resulta disponible, prueba a arrancar el motor de servlets Tomcat siguiendo los pasos al final de esta página.)

2) Firefox abrirá la página de inicio del cliente de prueba de 52°North SOS (ver figura. 1). Por favor, seleccione la versión de la especificación que desea probar, 1.0.0 por ejemplo:

.. image:: ../../images/screenshots/1024x768/52n_sos_test_client_start.png
  :scale: 100 %
  :alt: captura de pantalla de la página de inicio del cliente de prueba de 52°North SOS
  :align: center

**Fig. 1**: Cliente de prueba de 52°North SOS - página de inicio

3) El cliente de prueba aparece. Puede utilizarse para hacer peticiones al servicio usando un sencillo formulario. Una lista permite la selección de una petición predefinida de una colección, seleccionadas éstas a partir de la versión del servicio elegida anteriormente.

.. image:: ../../images/screenshots/1024x768/52n_sos_test_client_v1.0.0_GetCapabilities.png
  :scale: 100 %
  :alt: captura de pantalla del cliente de prueba de 52°North SOS, versión 1.0.0
  :align: center
  
**Fig. 2**: Cliente de prueba de 52°North SOS - versión 1.0.0 
  
4) Para empezar con SOS, seleccione la petición GetCapabilities_allSections.xml de la lista junto a "Request Examples" (ver número [1] en la figura 2).
  
5) Pulse el botón **Send** (número [2] en la figura. 2) y la petición se enviará al servicio 52°North SOS. Como resultado, se devolverá un documento XML (ver figura 3), que permite consultar las capacidades del servicio SOS (metadatos del servicio como palabras clave, datos del proveedor, operaciones y filtros disponibles, datos de observaciones contenidos,...). Para ver la respuesta original accede a la vista de código fuente del navegador (Ctrl+U).

.. image:: ../../images/screenshots/1024x768/52n_sos_response.png
  :scale: 70 %
  :alt: captura de pantalla de la salida de 52°North SOS - Respuesta GetCapabilities codificada en XML
  :align: center
  
**Fig. 3**: 52°North SOS - Respuesta GetCapabilities (codificada como XML)
  
6) Para poder construir tus propias peticiones necesitarás las `capacidades <http://localhost:8080/52nSOS/sos?REQUEST=GetCapabilities&SERVICE=SOS&ACCEPTVERSIONS=1.0.0>`_  de 52°North SOS (especificación 1.0.0). Puedes ajustar las peticiones realizadas por el cliente de prueba usando la información proporcionada en las capacidades, muy especialmente la sección de contenidos. Simplemente selecciona una petición GetObservation (GetObs...) del menú y utilízalo como plantilla para obtener tus propios conjuntos de observaciones.

Información adicional
================================================================================

Los puntos de acceso más interesantes para aprender más sobre 52°North SOS o de la comunidad 52°North Sensor Web son:

* La :doc:`introducción a  52°North SOS <../overview/52nSOS_overview>`,
* La lista de correo 52°North Sensor Web: swe@52north.org, 
* Consulta el `foro de 52°North Sensor Web community <http://sensorweb.forum.52north.org/>`_, 
* Consulta el `cliente 52°North SOS  <http://sensorweb.demo.52north.org/SOSclient/>`_,
* La `web de 52°North SOS <http://52north.org/communities/sensorweb/sos/>`_, o 
* La web de la `comunidad 52°North Sensor Web <http://52north.org/communities/sensorweb/>`_.

* Cuando SOS no esté disponible, por favor comprueba con el siguiente comando si el motor de servlets Tomcat está ejecutando:

::

  user@osgeolive:~$ sudo /etc/init.d/tomcat6 status
  * Tomcat servlet engine is running with pid 1234          <-- Tomcat is running
  [...]
  * Tomcat servlet engine is not running.                   <-- Tomcat not runing, so please start:
  user@osgeolive:~$ sudo /etc/init.d/tomcat6 start
  * Starting Tomcat servlet engine tomcat6           [ OK ] <-- Tomcat is running, now
  
**Listado 1:** Estado y arranque de Tomcat (contraseña para sudo: user)

* El desarrollo de esta versión de 52°North SOS ha sido apoyado por el proyecto de investigación europeo FP7 `EO2HEAVEN <http://www.eo2heaven.org/>`_ (cofinanciado por la Comisión Europea bajo el acuerdo de colaboración n°244100):

.. image:: ../../images/project_logos/logo_52North_other_200px.png
  :scale: 100 %
  :alt: EO2HEAVEN - Earth Observation and ENVironmental Modeling for the Mitigation of HEAlth Risks
  :align: center
  :target: http://www.eo2heaven.org/
