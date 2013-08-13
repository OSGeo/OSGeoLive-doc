:Author: Johannes Wilden
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Javier Sánchez
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-deegree.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://deegree.org

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


deegree
================================================================================

Servicios Web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

deegree es libre, estable, potente y fácil de usar. deegree es el conjunto más
completo de implementaciones de estándares del Open Geospatial Consortium (OGC)
en software libre y abierto, abarcando desde Servicios Transaccionales *Web
Feature Service* a la visualización de datos tridimensionales a través de
Servicios *Web Terrain*, y muchos más!

deegree es una solución para Sistemas de Información Geográfica (SIG) e
Infraestructuras de Datos Espaciales (IDE's) basada tanto en Web, como
escritorio. Está compuesto de un conjunto Interfaces de Aplicación (API's) Java
y un potente mapeo objeto-relacional para esquemas espaciales simples y
complejos. deegree también proporciona un conjunto de servicios web estándar de
mapas, entidades (*features*) y servicios de catálogo, así como servicios de
procesamiento y de sensores.

deegree proporciona una IDE (Infraestructura de Datos Espaciales) funcionando
desde el principo, utilizando sus datos y cumpliendo sus requerimientos.


.. image:: ../../images/screenshots/1024x768/deegree_mainpage.jpg
  :scale: 50%
  :alt: project logo
  :align: right

Algunas catacterísticas de ejemplo
--------------------------------------------------------------------------------

* Web Map Service

  * Contenidos de capas flexible
  * Soporta y utiliza definición de estilos (SLD 1.0)
  * Capacidad de generación de gráficos (tartas, barras, lineas) 
  * Fuentes de datos: Todos los Servicios Web comunes OGC (WMS, WFS, WCS),
  * PostgreSQL/PostGIS, Oracle Spatial, y sentencias SQL arbitrarias se pueden utlizar para crear contenidos de capas WMS
  * Muy estable, incluso para grandes escalas
  * Soporta HTTP GET, HTTP POST y peticiones de información de geometrías 
  * Certificado de soporte OGC

* Web Feature Service

  * Soporta entidades simples y complejas
  * Transformación de coordenadas al vuelo para más de 3000 sistemas de referencia de coordenadas.
  * Soporta formatos de salida flexibles
  * Soporta de directiva INSPIRE

* Web Coverage Service

  * Soporta peticiones HTTP GET y HTTP POST
  * Fuentes de datos: imágenes (tif, png, jpeg, gif, bmp); GeoTIFF; ECW files; Oracle GeoRaster
  * Alta velocidad de acceso para coberturas grandes

* Catalogue Service-Web

  * Fuentes de datos: PostgreSQL-Database; Oracle-Database
  * Peticiones soportadas: GetCapabilities; DescribeRecord; GetRecordById; GetRecords; Transaction - Insert, Update, Delete; Harvesting

* Web Map Print Service

  * Soporte de diferentes formatos de impresión (HTML, PDF, PNG)
  * Procesamiento de trabajos de larga duración
  * Soporta peticiones asíncronas para permitir ploteos de gran escala
  * Las peticiones se almacenan dentro de la base de datos y se podrán procesar incluso si un administrador para el WMPS o si la máquina falla

* Web Perspective View Service

   * Fuentes de datos: remote/local-WMS, remote/local-WFS, local-WCS, Postgres/PostGIS, Oracle Spatial
   * Modelos de elevación que pueden ser de datos vectoriales o raster
   * peticiones: Get3DFeatureInfo, GetView


Estándardes implementados
--------------------------------------------------------------------------------

* OGC Web Map Service (WMS) 1.1.0*, 1.1.1, 1.3.0*
* OGC Web Feature Service (WFS) 1.0.0, 1.1.0 (2.0 en progreso)
* OGC Web Coverage Service (WCS) 1.0.0* (1.1.0 en progreso)
* OGC Catalogue Service-Web (CSW) 2.0.0, 2.0.1, 2.0.2; incluyendo OGC ISOAP 1.0 y perfil INSPIRE
* OGC Web Perspective View Service (WPVS) Draft 6
* OGC Web Coordinate Transformation Service (WCTS) 0.4.0
* OGC Web Processing Service (WPS) 0.4.0, 1.0.0
* OGC Sensor Observation Service (SOS) 1.0.0

Detalles
--------------------------------------------------------------------------------

**Sitio web:** http://deegree.org

**Licencia:** LGPL

**Versión de software:** |version-deegree|

**Plataformas soportadas:** Windows, Linux

**API de Interfaces:** Java

**Soporte:** http://wiki.deegree.org/deegreeWiki/GettingSupport


Guía de inicio rápido
--------------------------------------------------------------------------------

* :doc:`Guía de inicio rápido <../quickstart/deegree_quickstart>`
