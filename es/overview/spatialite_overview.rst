:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, Jirotech
:Translator: Mauricio Miranda
:Version: osgeo-live9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _spatialite-overview-es:

.. image:: ../../images/project_logos/logo-spatialite.png
  :alt: project logo
  :align: right
  :target: http://www.gaia-gis.it/gaia-sins/


SpatiaLite
================================================================================

Base de Datos Espaciales
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SpatiaLite es un motor de bases de datos SQLite_ al que se han agregado funciones espaciales.

SQLite is un Sistema Gestor de Bases de Datos (DBMS, por sus siglas en inglés) que es simple, robusto, fácil de usar y realmente liviano.  Cada base de datos es simplemente un archivo. Se puede copiar, comprimir y portar entre Windows, Linux, MacOs, etc.

.. _SQLite: http://www.sqlite.org/

.. image:: ../../images/screenshots/1024x768/spatialite.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

Funcionalidades Principales
--------------------------------------------------------------------------------

La extensión SpatialLite agrega a SQLite el soporte para datos espaciales según las especificaciones de la OGC.

Highlights:

* Interfaz de usuario amigable.
* Soporta los formatos estándares WKT y WKB.
* Implementa funciones SQL espaciales como AsText(), GeomFromText(), Area(), PointN() ...
* El conjunto completo de funciones OpenGis es soportado a través de GEOS, esto incluye funciones de análisis espacial sofisticadas como Overlaps(), Touches(), Union(), Buffer() ...
* Tiene soporte completo para metadatos espaciales según las especificaciones OpenGis.
* Numerosos formatos geométricos -  EWKT, GML, KML, and GeoJSON.
* Soporta importación y exportación de archivos shape.
* Soporta reproyección de coordenadas a través de PROJ.4 y el conjunto de parámetros geodésicos EPSG.
* Soporta charsets locales a través de GNU libiconv.
* Implementa un índice espacial real basado en la extensión RTree de SQLite.
* La extensión VirtualShape permite a SQLite acceder archivos shape como tablas virtuales.
* Por lo tanto, se pueden ejecutar consultas SQL estándar sobre archivos shape externos, sin necesidad de importarlos o convertilos.
* Acceso a archivos CSV/TxtTab y hojas de cálculo XLS como tablas virtuales.
* Por lo tanto, se pueden ejecutar consultas SQL estándar sobre archivos CSV/TxtTab externos, sin necesidad de importarlos o convertilos.
* Acceso a documentos XML, stored BLOB compressed binary objects, including syntactic "well formed" and XSF schema validation constrained checks. Soporte específico para ISO-Metadata, estilos SLD/SE styles y gráficos SVG. Los documentos XML puede que necesiten usar la sintaxis estándar XPath.
* Consultas a servidores WFS externos.
* Leer archivos DXF externos (todas las versiones) y almacenar las capas y geometrías encontradas.
* Permite generar y exportar archivos DXF. 

Detalles
--------------------------------------------------------------------------------

**Sitio Web:** http://www.gaia-gis.it/gaia-sins/

**Licencia:** MPL v1.1 and GPL v3

**Versión del Software:** |version-spatialite|

**Plataformas soportadas:** Linux, Mac, Windows

**Soporte a lenguajes de programación:** C


Guía de Inicio Rápido
--------------------------------------------------------------------------------

* :doc:`Guía de Inicio Rápido <../quickstart/spatialite_quickstart>`

