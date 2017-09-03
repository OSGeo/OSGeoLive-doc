:Author: Oliver Tonnhofer
:Reviewer: Cameron Shorter, Jirotech
:Translator: Mauricio Miranda
:Version: osgeo-live9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-mapproxy.png
  :alt: project logo
  :align: right
  :target: http://mapproxy.org/

.. image:: /images/logos/OSGeo_community.png
  :scale: 100
  :alt: OSGeo Community Project
  :align: right
  :target: http://www.osgeo.org

MapProxy
================================================================================

Servicio de teselas y Proxy WMS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/screenshots/mapproxy/mapproxy.png
  :alt: MapProxy diagram
  :align: right

MapProxy acelera las aplicaciones de mapas a través de la pregeneración de teselas integrando múltiples fuentes de datos y almacenándolos en una caché local.
Las capas pueden hacerse transparentes, se pueden cambiar las proyecciones, se pueden convertir múltiples capas en una sola, se pueden agregar marcas de agua, y más!

MapProxy es flexible y soluciona casos de uso tanto simples como complejos:
desde una simple caché para una aplicación web con `OpenLayers
<openlayers_overview>`, hasta un nodo central de IDE que combina, unifica y
acelera docenas de servicios WMS distribuidos.

Algunos ejemplos del mundo real: MapProxy es usado por el atlas de banda ancha alemán para proveer mapas a miles de usuarios lo más rápido posible y la Agencia Federal Alemana de Cartografía y Geodesia usa MapProxy para incorporar servicios WMS de los 16 estados.

Funcionalidades de MapProxy
--------------------------------------------------------------------------------

.. image:: /images/screenshots/mapproxy/mapproxy_demo.png
  :width: 796
  :height: 809
  :scale: 70 %
  :alt: MapProxy demo
  :align: right

Fuentes de entrada:
  + WMS 1.0.0–1.3.0 (:doc:`MapServer <mapserver_overview>`, :doc:`GeoServer <geoserver_overview>`, etc).
  + TMS, WMTS (TileCache, GeoWebcache, etc.).
  + Mapserver y Mapnik (directamente, sin WMS).
  + Cualquier fuente de datos compatible con TileCache, Google Maps o Bing.

Servicios:
  + WMS (1.0.0-1.3.0).
  + TMS.
  + WMTS.
  + KML SuperOverlays.

Caché de teselas:
  + Las imágenes idénticas son almacenadas sólo una vez (ej: teselas del océano).
  + Las teselas son almacenadas en el sistema de archivos, ficheros MBTile o CouchDB.
  + Agrega marcas de agua a las teselas.

Opciones de fuente:
  + Limita las fuentes a geometrías (por ejemplo desde archivos Shape).
  + Agrega transparencia a capas opacas.
  + Une múltiples fuentes.
  + Reproyecta a otro SRS.

Funcionalidades WMS:
  + Construye árboles de capas desde diferentes fuentes.
  + Crea respuestas ``GetMap`` desde caché con soporte de zoom libre y cualquier proyección (para cualquier SIG de escritorio).
  + Acelera servicios de WMS existentes de 10 a 100 veces.
  + Responde a consultas ``GetLegendGraphic``.
  + Responde a consultas ``GetFeatureInfo`` en cascada con transformaciones XSL opcionales.
  + Reproyección al vuelo.
  + Convierte versiones de WMS y formatos de imagen.

Seguridad:
  + Una API de autorización flexible y potente.
  + Soporta autorización personalizada con control de alta granularidad sobre servicios y capas.
  + Acceso restringido a áreas (para WMS y servicios de teselas).
  + Integración con bases de datos de usuarios y métodos de autenticación ya existentes.

Potentes herramientas:
  + Herramienta del tipo semilla para llenar la cache que puede iniciar polígonos de áreas.
  + Exportar la cache de las teselas a otros formatos.
  + Calcular escalas y mostrar configuraciones de rejillas.

Otras funcionalidades:
  + Formato de configuración simple pero poderos (YAML/JSON).
  + Demo de cliente basado en OpenLayers.
  + Corre múltiples servicios WMS en una instancia de MapProxy.
  + Agrega texto de atribución a las imágenes.
  + Soporta datos raster que no son imágenes como MDEs (Modelos Digitales de Elevación).
  + Mucho más...

Estándares Implementados
--------------------------------------------------------------------------------

MapProxy implementa las siguientes especificaciones abiertas:

+ OGC WMS 1.0.0, 1.1.0, 1.1.1, 1.3.0
+ OGC WMTS 1.0.0 (KVP y RESTful)
+ OSGeo TMS 1.0.0
+ OGC KML 2.2 SuperOverlays

Detalles
--------------------------------------------------------------------------------

**Sitio web:** http://mapproxy.org/

**Licencia:** `Apache Software License 2.0 <http://www.apache.org/licenses/LICENSE-2.0.html>`_

**Versión del software:** |version-mapproxy|

**Platformas soportadas:** Linux, Mac, Windows

**Soporte:** http://mapproxy.org/support.html


Guía rápida
--------------------------------------------------------------------------------

* :doc:`Guía de inicio rápido <../quickstart/mapproxy_quickstart>`
