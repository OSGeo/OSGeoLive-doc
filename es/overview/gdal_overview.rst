:Author: OSGeo-Live
:Translator: Mauricio Miranda
:Version: osgeo-live4.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _gdal-overview-es:

.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://gdal.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GDAL/OGR
================================================================================

Herramientas para tratamiento de datos Geoespaciales
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Geospatial Data Abstraction Library (GDAL/OGR) provee herramientas de línea de comando 
para convertir y procesar un amplio rango de formatos de datos geoespaciales, 
tanto vectoriales como raster.

Las herramientas están basadas en una biblioteca C++ multiplataforma, 
accesible a través de numerosos lenguajes de programación.
Como biblioteca, presenta a la aplicaciones externas, un único modelo de datos abstracto para todos los formatos soportados.

GDAL/OGR es la biblioteca de acceso a datos espaciales más usada. Es el motor primario de acceso a datos 
para muchas aplicaciones, incluyendo MapServer, GRASS, QGIS, y OpenEV.
También es utilizado por OSSIM, Cadcorp SIS, FME, Google Earth,
VTP, Thuban, ILWIS, MapGuide y ArcGIS.

.. image:: ../../images/screenshots/1024x768/gdal_ogr_proj_overview.png
  :scale: 60 %
  :alt: GDAL supports many geodata formats
  :align: right

Principales funcionalidades
--------------------------------------------------------------------------------

* Herramientas de línea de comando para conversión de datos, transformación de imágenes, obtención de un subconjunto de datos, y otras tareas comunes
* Acceso a datos raster de alta eficiencia, sacando ventajas de la generación de tiles y la generalización.
* Soporte para archivos grandes, de más de 4GB
* Acceso a la biblioteca desde Python, Java, C#, Ruby, VB6 y Perl
* Motor de sistema de coordenadas basado en PROJ.4 y OGC WKT

Formatos populares soportados
--------------------------------------------------------------------------------

GDAL soporta más de 50 formatos raster y OGR más de 20 formatos vectoriales.

Estos incluyen:

* **Raster:** GeoTIFF, Erdas Imagine, SDTS, ESRI Grids, ECW, MrSID, JPEG2000, DTED, y más ...
* **Vectorial:** MapInfo (tab y mid/mif), ESRI Shapefile, ESRI Coverages, ESRI Personal Geodatabase, DGN, GML, PostGIS, Oracle Spatial, y más ...

Estándares Implementados
--------------------------------------------------------------------------------

El modelo de datos vectorial de OGR es compatible con la especificación Simple Features de la OGC.

Detalles
--------------------------------------------------------------------------------

**Sitio Web:**  http://www.gdal.org

**Licencia:** `X/MIT style Open Source license <http://trac.osgeo.org/gdal/wiki/FAQGeneral#WhatlicensedoesGDALOGRuse>`_

**Versión del Software:** 1.7.0 (1.9.1)

**Platformas soportadas:** Windows, Linux, Mac

**Soporte a lenguajes de programación:** C, C++, Python, Java, C#, Ruby, VB6 and Perl

**Soporte:** http://lists.osgeo.org/mailman/listinfo/gdal-dev, http://www.osgeo.org/search_profile

Guía de Inicio Rápido
--------------------------------------------------------------------------------
    
* `Guía de Inicio Rápido <../quickstart/gdal_quickstart.html>`_
