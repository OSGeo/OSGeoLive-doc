.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadatos de este documento

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _wps-overview:

.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    ../../images/project_logos/<filename>
  A symbolic link to the images directory is created during the build process.

.. image:: ../../images/project_logos/logo-OGC-left.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. image:: ../../images/project_logos/logo-OGC-right.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. Writing Tip: Name of application

Web Processing Service (WPS)
============================

.. Writing Tip:
  1 párrafo o 2 definen lo que es el estandar.

El estandar WPS proporciona unas reglas para la estandarización de la entrada y salida (peticiones y respuestas) para servicios de procesamiento geoespacial, como por ejemplo, operaciones con polígonos y sus entradas y salidas.

.. image:: ../../images/standards/wps.jpg
  :scale: 25%
  :alt: WPS in Context

El estandar OGC® Web Processing Service (WPS) describe cómo acceder a procesos geoespaciales desde un interface Web.
Los procesos abarcan cualquier algoritmo, cálculo o modelo que operen sobre datos raster o vectoriales georeferenciados. Un WPS puede exponer cálculos tan simples como una sustración entre dos conjuntos de números georeferenciados, restando uno de otro (p.e., determinar la diferencia en casos de gripe entre dos estaciones diferentes), o tan complicados como un modelo de cambio climático global.  (http://www.opengeospatial.org/standards/wps) 

Los servicios WPS son particularmente útiles para lo siguiente:

* Reducir la complejidad de un conjunto de datos proporcionando algoritmos de aplicación directa (plug & play).
* Proporcionar encadenamiento de procesos en cadena.
* Proporcionar procesos que se despliegan una vez y pueden ser utilizados desde cualquier sitio.
* Mantenimiento simplificado. Los procesos/modelos se mantienen de forma centralizada por parte de quién los implementa.
* Las ventajas del procesamiento de alta velocidad a través de servidores centralizados.
* Acceso fácil e interoperable a procesos de alta complejidad, como por ejemplo modelos de cambio climático.

Ver también
--------

.. Writing Tip:
  Describe estandar similar

Otros estándares de sercicios de datos OGC : 

* Web Coverage Processing Service
* Sensor Planning Service
* :doc:`wcs_overview`
* :doc:`wms_overview`
* :doc:`wfs_overview`
* Grid Coverage Service
* :doc:`sos_overview`
