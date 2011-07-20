:Author: Mauricio Miranda
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported License

.. _mapproxy-overview:

.. image:: ../../images/project_logos/logo-mapproxy.png
  :alt: project logo
  :align: right
  :target: http://mapproxy.org/

MapProxy
========

Servicio de caché de tiles 
~~~~~~~~~~~~~~~~~~~~~~~~~~

MapProxy es un proxy para datos geoespaciales. Cachea, acelera y transforma datos provenientes de servicios de mapas existentes y los sirve a cualquier cliente de escritorio o web.

.. image:: ../../images/screenshots/800x600/mapproxy.png
  :alt: MapProxy diagram
  :align: center

MapProxy no es sólo una solución de caché, también ofrece muchas funcionalidades nuevas e innvodoras como el soporte completo para clientes WMS.

MapProxy está en desarrollo y se publica bajo licencia `Apache Software License 2.0 <http://www.apache.org/licenses/LICENSE-2.0.html>`_, corre en Unix/Linux/Mac OS X y Windows, y es muy fácil de instalar y configurar. 

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


Demo
----

* Iniciar MapProxy (*Geospatial* --> *Servicios Web* --> *Iniciar MapProxy*)
* `Abrir demo en Firefox <http://localhost:8011/demo>`_

Documentación
-------------

* `Documentación de MapProxy 1.1.1 <../../mapproxy/index.html>`_


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
