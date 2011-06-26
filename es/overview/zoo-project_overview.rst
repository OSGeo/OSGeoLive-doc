:Author: Gérald Fenoy
:Version: osgeo-live4.5
:License: Creative Commons

.. _zoo-overview:

.. image:: ../../images/project_logos/logo-Zoo.png
  :scale: 50 %
  :alt: project logo
  :align: right
  :target: http://zoo-project.org/

ZOO Project
===========

Servidor WPS
~~~~~~~~~~~~~~~~~

El proyecto ZOO proporciona un entorno de Servicio de Procesamiento Web (WPS)
amigable a los desarrolladores para la creación y encadenamiento de servicios de
geoprocesamiento *web*. Un WPS proporciona acceso a funciones que ejecutan
algoritmos geoespaciales. El proyecto ZOO da soporte a muchos lenguajes de 
programación y viene con dos aplicaciones de demostración usando sencillos 
proveedores de servicios con *spatialtools* (una biblioteca compartida y un 
módulo para Python) basado en las librerías GEOS y OGR.

ZOO está compuesto de tres partes diferenciadas:

.. image:: ../../images/screenshots/1024x768/zoo-project-demo-2.png
  :scale: 40 %
  :alt: screenshot
  :align: right

*ZOO Kernel* : Un potente *kernel* del lado del servidor escrito en C que hace
posible la gestión y encadenamiento de servicios *web* escritos en diferentes
lenguajes de programación.

*ZOO Services* : Un creciente conjunto de servicios *web* de ejemplo basados en
diversas bibliotecas de *software* libre.

*ZOO API* : Una API del lado del servidor en JavaScript capaz de llamar y 
encadenar los servicios ZOO, de tal forma que hace el desarrollo y 
encadenamiento de servicios más sencillos de desarrollar.

ZOO está basado en un 'Kernel de servicio WPS' que constituye el núcleo del 
sistema ZOO (también conocido como *ZOO Kernel*). Éste último está capaz de
cargar bibliotecas dinámicas y manejarlas como servicios *web* bajo demanda.
El *ZOO Kernel* está escrito en el lenguaje C, pero soporta diferentes lenguajes
de programación de uso común con el objetivo de conectar multitud de bibliotecas
y sobre todo de simplificar el trabajo del desarrollador final del servicio 
*web*.

Un servicio ZOO es un enlace compuesto por un archivo de metadatos (.zcfg) y el
código para su correspondiente implementación. El archivo de metadatos describe
todas las funciones disponibles para ser invocadas usando la especificación de
ejecución WPS. Los servicios contienen algoritmos y funciones, y en este 
momento pueden implementarse en C/C++, Fortran, Java, Python, PHP y JavaScript.

Funcionalidades principales
----------------------------------

- Servidor WPS multi-lenguaje
- Sencillo procedimiento de creación y despliegue de servicios *web*
- Sencillo encadenamiento de WPS usando la ZOO API 

Estándares implementados
--------------------------

* OGC WPS 1.0.0

Demo
----

* `Demostración usando el proveedor de servicios sencillos en C basado en las bibliotecas GEOS y OGR <http://localhost/zoo-demo/spatialtools.html>`_
* `Demostración usando el proveedor de servicios sencillo en Python basado en las bibliotecas GEOS y OGR <http://localhost/zoo-demo/spatialtools-py.html>`_
* `Sencillo formulario HTML para procesar su petición al ZOO Kernel <http://localhost/zoo-demo/spatialtools.html>`_


Detalles
---------

**Website:** http://zoo-project.org

**Licencia:** MIT x/11

**Versión del Software:** 1.2.0

**Plataformas soportadas:** Windows, Linux, Mac

**Soporte a lenguajes de programación:** C, Python, Java, PHP, Fortran, Javascript

**Soporte:** http://zoo-project.org/trac


Guía de inicio rápido
------------------------

* `Guía de inicio rápido <../quickstart/zoo-project_quickstart.html>`_


