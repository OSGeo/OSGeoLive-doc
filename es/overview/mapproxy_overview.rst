:Author: Mauricio Miranda
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _mapproxy-overview:

.. image:: ../../images/project_logos/logo-mapproxy.png
  :alt: project logo
  :align: right
  :target: http://mapproxy.org/

MapProxy
========

Servicio de tiles y Proxy WMS 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

MapProxy acelera las aplicaciones de mapas a través de la pregeneración de tiles integrando múltiples fuentes de datos y almacenándolos en una caché local.
Las capas pueden hacerse transparentes, se pueden cambiar las proyecciones, se pueden convertir múltiples capas en una sola, se pueden agregar marcas de agua, y más!

MapProxy es flexible y soluciona tanto simples, como complejos casos de uso: desde una simple caché para una aplicación web con OpenLayers hasta un nodo central de IDE que combina, unifica y acelera docenas de servicios WMS distribuidos.

Algunos ejemplos del mundo real: MapProxy es usado por el atlas de banda ancha alemán para proveer mapas a miles de usuarios lo más rápido posible y la Agencia Federal Alemana de Cartografía y Geodesia usa MapProxy para incorporar servicios WMS de los 16 estados.

.. image:: ../../images/screenshots/800x600/mapproxy.png
  :alt: MapProxy diagram
  :align: right

Funcionalidades de MapProxy
---------------------------

.. image:: ../../images/screenshots/800x600/mapproxy_demo.png
  :width: 796
  :height: 809
  :scale: 70 %
  :alt: MapProxy demo
  :align: right
 
Fuentes de entrada:
  * WMS 1.0.0–1.3.0 (MapServer, GeoServer, etc.)
  * TMS (TileCache, GeoWebcache, etc.)
  * Mapserver y Mapnik (directamente, sin WMS)
  * Cualquier fuente de datos compatible con TileCache, Google Maps o Bing

Servicios:
  * WMS (1.0.0-1.3.0)
  * TMS
  * WMTS
  * KML SuperOverlays

Caché de Tiles:
  * Las imágenes idénticas son almacenadas sólo una vez (ej: tiles del océano)
  * Agrega marcas de agua a los tiles

Opciones de fuente:
  * Limita las fuentes a geometrías (por ejemplo desde archivos Shape)
  * Agrega transparencia a capas opacas
  * Une múltiples fuentes
  * Reproyecta a otro SRS

Funcionalidades WMS:
  * Construye árboles de capas desde diferentes fuentes
  * Crea respuestas ``GetMap`` desde caché con soporte de zoom libre y cualquier proyección (para cualquier SIG de escritorio)
  * Acelera servicios de WMS existentes de 10 a 100 veces
  * Responde a consultas ``GetLegendGraphic``
  * Responde a consultas ``GetFeatureInfo`` en cascada con transformaciones XSL opcionales
  * Reproyección al vuelo
  * Convierte versiones de WMS y formatos de imagen

Otras funcionalidades:
  * Formato de configuración simple pero poderos (YAML/JSON)
  * Demo de cliente basado en OpenLayers (ver a la derecha)
  * Corre múltiples servicios WMS en una instancia de MapProxy
  * Agrega texto de atribución a las imágenes
  * Soporta datos raster que no son imágenes como los MDTs (Modelos Digitales de Terreno)
  * Soporta autorización personalizada con control de alta granularidad sobre servicios y capas.
  * Mucho más...

Estándares Implementados
------------------------

MapProxy implementa las siguientes especificaciones abiertas:

* OGC WMS 1.0.0, 1.1.0, 1.1.1, 1.3.0
* OGC WMTS 1.0.0
* OSGeo TMS 1.0.0
* OGC KML 2.2 SuperOverlays

Detalles
--------

**Sitio Web:** http://mapproxy.org/

**Licencia:** `Apache Software License 2.0 <http://www.apache.org/licenses/LICENSE-2.0.html>`_

**Versión del Software:** 1.1.1

**Platformas Soportadas:** Linux, Mac, Windows

**Soporte:** http://mapproxy.org/support.html


Guía de Inicio Rápido
---------------------
    
* `Guía de Inicio Rápido <../quickstart/mapproxy_quickstart.html>`_
