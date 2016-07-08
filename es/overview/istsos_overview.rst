:Author: Massimiliano Cannata, Milan Antonovic, SUPSI
:Reviewer: Cameron Shorter, LISAsoft
:Translator: David Mateos
:Version: osgeo-live9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-istsos.png
  :alt: project logo
  :align: right
  :target: http://istsos.org

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html


istSOS
================================================================================

Herramienta de Gestión de Datos
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

istSOS es una herramienta de gestión de datos de sensores que permite el almacenamiento, mantenimiento y publicación de datos de observaciones de monitoreo usando el estandar del  Open Geospatial Consortium (OGC) :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>`.

.. image:: ../../images/screenshots/1024x768/screenshot_istsos.png
  :scale: 60 %
  :alt: visor de datos
  :align: right

istSOS implementa estrictamente el estándar SOS 1.0.0, y ha pasado los test OGC CITE (Compliance + Interopability Testing + Evaluation).

Características principales
--------------------------------------------------------------------------------

* Publicación de datos de sensor de acuerdo con el estándar Sensor Observation Service (SOS) standard.
* Administra sensores y datos desde una interfaz web intuitiva.
* Usa una API RestFul completa para acceder a la funcionalidad istSOS desde clientes externos para crear gráficos interactivos, mostrar sensores en un mapa dinámico o sólo para escribir scripts de mantenimiento.  
* Notificaciones a través de mail, twitter u otra red social cuando los datos del sensor alcanzan las condiciones especificadas.
* Autenticación de usuario y autorización con distintos niveles de acceso( administrador, gestor de red, gestor de datos y visitante).
* Creación de Procedimientos Virutales que parecen estaciones normales, pero cuyos datos resultan de la elaboración al vuelo de otros datos de sensor. 
* Índices de calidad asociados a cada observación gracias a los test de validación incorporados. 
* Edición online de datos con una cuidada interfaz y una calculadora de observaciones avanzadas. 


Estándares implementados
--------------------------------------------------------------------------------
* SOS 1.0.0: Perfiles Básico y Transaccional.

Detalles
--------------------------------------------------------------------------------

**Página web:** http://istsos.org

**Licencia:** GNU General Public License (GPL) version 2.

**Versión del Software :** 2.3.0.

**Platformas soportadas:** Linux, Unix, Mac, Windows.

**Interfaces API:** Python / wsgi.

**Apoyo:** https://groups.google.com/forum/#!forum/istsos


Guía de inicio rápido
--------------------------------------------------------------------------------
    
* :doc:`Guía de inicio rápido <../quickstart/istsos_quickstart>`

