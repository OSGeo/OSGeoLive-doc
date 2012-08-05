:Author: Jody Garnett
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Samuel Mesa
:Version: osgeo-live4.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _geotools-overview-es:

.. image:: ../../images/project_logos/logo-GeoTools.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://geotools.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GeoTools
================================================================================

GeoTools es una biblioteca de software libre (LGPL) en Java que proporciona métodos que cumplen con estándares para manipular información geográfica, usando estructuras de datos basadas en las especificaciones del Open Geospatial Consortium (OGC).

.. image:: ../../images/screenshots/800x600/geotools-overview.png
  :scale: 60 %
  :alt: GeoTools es un a biblioteca modular que soporta plugins para formatos adicionales
  :align: right

GeoTools es usada por multitud de proyectos incluyendo servicios web, herramientas de consola y aplicaciones de escritorio.
Las aplicaciones de OSGeo-Live que utilizan GeoTools son:
:doc:`52nSOS_overview`, :doc:`52nWPS_overview`, :doc:`atlasstyler_overview`, :doc:`geomajas_overview`, :doc:`geopublisher_overview`, :doc:`geoserver_overview`, and :doc:`udig_overview`.

Funcionalidades básicas
--------------------------------------------------------------------------------

* Definición de interfaces para las estructuras y conceptos espaciales clave

  * Soporte integrado para geometrías proporcionado por `JTS Topology Suite (JTS) <http://tsusiatsoftware.net/jts/main.html>`_
  * Atributos y filtros espaciales usando la especificación OGC Filter Encoding
  
* Una limpia API de acceso a datos soportando el acceso a entidades, soporte de transacciones y bloqueo entre hilos de ejecución

  * Acceso a datos SIG en multitud de formatos de fichero y bases de datos espaciales
  * Soporte a Sistemas de Referencia y de Coordenadas así como a transformaciones
  * Soporte a una gran variedad de proyecciones cartográficas
  * Filtro y análisis de datos tanto de atributos espaciales como alfanuméricos
  
* Un renderizador sin estado, de bajo consumo de memoria, particularmente útil en entornos de ejecución de servidor

  * Composición y visualización de mapas con simbología compleja
  
* Una potente tecnología de parseo asistido por esquemas usando XML Schema para enlazar con contenido GML

  * La tecnología de parseo/codificación proporciona conexiones a multitud de estándares OGC incluyendo GML, Filter, KML, SLD y SE

* Plugins GeoTools: un sistema abierto de extensiones que permite añadir a la biblioteca formatos adicionales

  * Las extensiones para el proyecto ImageIO-EXT permiten a GeoTools leer formatos adicionales desde GDAL
 
* Extensiones GeoTools

  * Proporcionan funcionalidades adicionales usando las características espaciales de la biblioteca principal.
  
  .. image:: ../../images/screenshots/800x600/geotools-extension.png
     :alt: Extensiones desarrolladas usando la biblioteca GeoTools
     
  * Las extensiones proporcionan soporte para grafos y redes (para encontrar rutas ópitmas), validación, un cliente de servicios de mapas, enlaces para parseo y codificación de XML y para las paletas de colores *Color Brewer*
  
 
* GeoTools "No soportado"

  * GeoTools también opera como parte de una amplia comunidad con una zona de pruebas usada para aumentar talento nuevo y promocionar la experimentación
  
  * Algunos destacados son el soporte de *swing* (usado en los tutoriales de GeoTools), SWT, soporte de procesos en local y en web, simbología adicional, formatos de datos adicionales, generación de cuadrículas un par de implementaciones del estándar de geometrías de ISO
  
Formatos soportados
----------------------  

* Formatos de acceso raster:
  
  arcsde, arcgrid, geotiff, grassraster, gtopo30, image (JPEG, TIFF, GIF, PNG), imageio-ext-gdal, imagemoasaic, imagepyramid, JP2K, matlab.
  
* Soporte de basos de datos "jdbc-ng":
  
  db2, h2, mysql, oracle, postgis, spatialite, sqlserver.

* Formatos de acceso vectorial:
  
  app-schema, arcsde, csv, dxf, edigeo, excel, geojson, org, property, shapefile, wfs.

* Enlaces XML:

  Enlaces y estructuras de datos Java para los siguientes:
  xsd-core (xml simple types), fes, filter, gml2, gml3, kml, ows, sld, wcs, wfs, wms, wps, vpf.
  
  Parsers/encoders adicionales para geometrías, filtros y estilos disponibles para aplicaciones DOM y SAX
  
Estándares implementados
--------------------------------------------------------------------------------

Soporte a numerosos estándares del Open Geospatial Consortium (OGC):

* Estructuras de datos y renderizado usando *OGC Style Layer Descriptor* / *Symbology Encoding*
* Soporte al *OGC General Feature Model* incluyendo *Simple Feature*
* *OGC Grid Coverage* para la representación de información raster
* *OGC Filter* y *Common Constraint Language* (CQL)
* Clientes para *Web Feature Service* (WFS), *Web Map Service* (WMS) y soporte experimental para *Web Process Service* (WPS)
* Geometrías ISO 19107

Detalles
--------------------------------------------------------------------------------
 
**Website:** http://geotools.org/

**Licencia:** LGPL

**Versión del Software:** 2.7.1

**Platformas soportadas:** Java Multiplataforma

**Soporte a lenguajes de programación:** Java

**Soporte:** `Communication and Support <http://docs.geotools.org/latest/userguide/welcome/support.html>`_

Guía de Inicio Rápido
--------------------------------------------------------------------------------

* `Guía de Inicio Rápido <http://docs.geotools.org/latest/userguide/tutorial/quickstart/index.html>`_
