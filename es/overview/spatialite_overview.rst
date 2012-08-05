:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Mauricio Miranda
:Version: osgeo-live4.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _spatialite-overview-es:

.. image:: ../../images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right
  :target: http://www.gaia-gis.it/spatialite/


SpatiaLite
================================================================================

Base de Datos Espaciales
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SpatiaLite es un motor de bases de datos SQLite_ al que se han agregado funciones espaciales.

SQLite es un motor muy popular, simple, robusto, fácil de usar y realmente liviano. Cada base de datos es simplemente un archivo, que puede ser copiado, comprimido, enviado a través de una red o la web sin ninguna complicación.

Además, estos archivos son portables, la misma base de datos funcionará en Windows, Linux, MacOS, etc.

.. _SQLite: http://www.sqlite.org/

.. image:: ../../images/screenshots/1024x768/spatialite.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

Funcionalidades Principales
--------------------------------------------------------------------------------

La extensión SpatialLite agrega a SQLite el soporte para datos espaciales según las especificaciones de la OGC.

* Soporta los formatos estándares WKT y WKB
* Implementa funciones SQL espaciales como AsText(), GeomFromText(), Area(), PointN() y alike
* El conjunto completo de funciones OpenGis es soportado a través de GEOS, esto incluye funciones de análisis espacial sofisticadas como Overlaps(), Touches(), Union(), Buffer() ..
* Tiene soporte completo para metadatos espaciales según las especificaciones OpenGis
* Soporta importación y exportación a archivos shape
* Soporta reproyección de coordenadas a través de PROJ.4 y el conjunto de parámetros geodésicos EPSG
* Soporta charsets locales a través de GNU libiconv
* Implementa un índice espacial real basado en la extensión RTree de SQLite
* La extensión VirtualShape permite a SQLite acceder archivos shape como tablas virtuales
* Por lo tanto, se pueden ejecutar consultas SQL estándar sobre archivos shape externos, sin necesidad de importarlos o convertilos
* La extensión VirtualText permite a SQLite acceder archivos CSV/TxtTab como tablas virtuales
* Por lo tanto, se pueden ejecutar consultas SQL estándar sobre archivos CSV/TxtTab externos, sin necesidad de importarlos o convertilos
* La interfaz gráfica permite utilizar todas estas funcionalidades de una manera amigable


Detalles
--------------------------------------------------------------------------------

**Sitio Web:** http://www.gaia-gis.it/spatialite/

**Licencia:** MPL v1.1 and GPL v3

**Versión del Software:** 2.3.1 / 2.4 beta

**Plataformas soportadas:** Linux, Mac, Windows

**Soporte a lenguajes de programación:** C++


Guía de Inicio Rápido
--------------------------------------------------------------------------------

* `Guía de Inicio Rápido <../quickstart/spatialite_quickstart.html>`_


