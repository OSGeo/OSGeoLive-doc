:Author: Ian Turton
:Author: Frank Gasdorf
:Reviewer: Cameron Shorter, Jirotech
:Translator: Jorge Sanz
:Translator: David Mateos
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _geoserver-overview-es:

.. image:: /images/project_logos/logo-GeoServer.png
  :alt: project logo
  :align: right
  :target: http://geoserver.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

GeoServer
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GeoServer es un Servidor Web que permite servir mapas y datos de diferentes 
formatos para aplicaciones Web, ya sean clientes Web ligeros, o programas GIS 
desktop. Esto significa que puedes almacenar datos espaciales en casi cualquier 
formato que desees, y tus usuarios no tienen que saber nada sobre datos GIS. En 
el nivel más simple, lo que único que necesitan es un Web Browser para ver 
exactamente tus mapas como tu quieras. 

GeoServer es la implementación de referencia de los estándares `Open Geospatial
Consortium <http://www.opengeospatial.org>`_ (OGC) `Web Feature
Service <http://www.opengeospatial.org/standards/wfs>`_ (WFS) y `Web
Coverage Service <http://www.opengeospatial.org/standards/wcs>`_ (WCS), y está 
certificado como implementación de alto rendimiento del estándar `Web Map
Service <http://www.opengeospatial.org/standards/wms>`_ (WMS).
GeoServer es uno de los componentes *core* de la Web Geoespacial. 

.. image:: /images/projects/geoserver/geoserver.png
  :scale: 60 %
  :alt: Screen Shot of GeoServer
  :align: right

Características clave
--------------------------------------------------------------------------------

**Servidor de datos de una variedad de orígenes de almacenamiento:**
    * Vector
        - Ficheros Shape, WFS externo.
        - PostGIS, ArcSDE, DB2, Oracle Spatial, MySql, SQL Server.
    * Raster
        - GeoTiff, JPG y PNG georreferenciados, imágenes pyramid, formatos GDAL, mosaicos de imágenes, Oracle GeoRaster, NetCDF.

**A través del protocolo WMS se sirven imágenes de forma segura y rápida:**
    Los datos permanecen seguros, ya que se sirven como imágenes renderizadas. 
	A menos que se digitalice encima de las imágenes, no hay forma de copiar los datos originales de las imágenes de los mapas.
    La apariencia de cada capa de mapa se puede controlar utilizando el estándar SLD que permite definir el color y etiquetado 
	de las *features*, o  geometrías, de las diferentes capas. La combinación de estas reglas con la posibilidad de filtrar 
	estilos dependientes del nivel de escala (filtros OGC), permite ir añadiendo cada más detalle en la visualización de los 
	mapas, a medida que se acerca el zoom a un zona. También es capaz de gestionar amalgamiento de etiquetas, agrupaciones y 
	prioridades de dibujado.

**Permite enviar datos puramente vectoriales a clientes que implementen el protocolo WFS:**
     Un cliente WFS es capaz de descargar datos vectoriales, que luego pueda utilizar en sus mapas, análisis espaciales y 
	 otras operaciones. También, si el usuario tiene autorización, puede enviar de vuelta los datos modificados al servidor, 
	 para almacenar en el mismo los datos modificados, utilizando el protocolo WFS-T. Los datos se pueden transmitir utilizando 
	 GML (comprimido), así como otros estándares de formatos de datos como shapefile y json.

**Se pueden enviar datos raster a un cliente utilizando protocolo WCS:**
     Un cliente GIS puede pedir datos raster para utilizarlos en análisis espaciales. Esto permite la creación de aplicaciones 
	 que pueden modelar el proceso descrito por tus datos.

**Reproyección 'al vuelo':**
     GeoServer soporta la mayoría de Bases de Datos de proyecciones EPSG y puede reproyectar a cualquiera de ellas bajo petición, 
	 lo que permite a las aplicaciones clientes delegar la carga de procesamiento de reproyecciones al servidor. 

**WMS Tiling Cache**
    `GeoWebCache <http://geowebcache.org/>`_ es un cliente de tiles WMS. Corre un servidor proxy entre el cliente de mapa y el 
	Servidor de Mapas, cacheando los tiles, a medida que se piden, y consiguiendo una mejora considerable en el tiempo de proceso 
	para la generación de imágenes. GeoWebCache se ha integrado dentro de GeoServer.

**Web Processing Service (WPS)**
  Se pueden ejecutar Algoritmos Geoespaticiales, incluyendo los de  :doc:`JTS <jts_overview>`, a travçes de la interfaz :doc:`WPS <../standards/wps_overview>` de Geoserver. Se pueden encadenar procesos y usar transformaciones de renderizado para crear potentes visualizaciones a través de la interfaz WMS.

Standares Implementados
--------------------------------------------------------------------------------

* Soporta numerosos estándares OGC (Open Geospatial Consortium ):

  * :doc:`../standards/wms_overview`
  * Web Map Tile Service (WMTS)
  * :doc:`../standards/wfs_overview`, WFS-T (transaccional)
  * :doc:`../standards/wcs_overview`
  * :doc:`../standards/wps_overview`
  * :doc:`../standards/fe_overview`
  * :doc:`../standards/sld_overview`
  * :doc:`../standards/gml_overview`
  * :doc:`../standards/kml_overview`

Detalles
--------------------------------------------------------------------------------

**Sitio Web:** http://geoserver.org/

**Licencia:** GNU General Public License (GPL) version 2.

**Versión Software:** |version-geoserver|

**Plataformas soportadas:** Java 8 (Oracle JDK y OpenJDK)en Windows, Linux y Mac.

**Interfaces API:** WMS, WFS, WCS, REST.

**Soporte:** http://geoserver.org/support/

Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Guía de inicio rápido <../quickstart/geoserver_quickstart>`
