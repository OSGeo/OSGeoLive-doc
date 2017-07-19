:Author: Oliver Tonnhofer
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live5.5
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

Proxy WMS & tile services
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/screenshots/800x600/mapproxy.png
  :alt: MapProxy diagram
  :align: right

MapProxy speeds up mapping applications by pre-rendering and integrating maps from multiple sources and storing in a local cache.
Warstwom można nadać przezroczystość, układ współrzędnych może być zmieniony, wiele warstw można przetransformować w jedną warstwę, znaki wodne mogą zostać dodane i wicej...

MapProxy is flexible and scales from simple to complex use-cases: from a single tile cache for an OpenLayers web client to a central SDI node that combines, unifies and accelerates dozens of distributed WMS services.

MapProxy is used for the German broadband atlas to deliver maps for thousands of users and the German Federal Agency for Cartography an Geodesy uses MapProxy to aggregate WMS services from all 16 states on the fly.


Główne funkcje
--------------------------------------------------------------------------------

.. image:: /images/screenshots/800x600/mapproxy_demo.png
  :width: 796
  :height: 809
  :scale: 70 %
  :alt: MapProxy demo
  :align: right

Źródła wejściowe:
  * WMS 1.0.0–1.3.0 (MapServer, GeoServer, etc.)
  * TMS, WMTS (TileCache, GeoWebcache, etc.)
  * Mapserver i Mapnik (bezpośrednio, bez WMS)
  * jakiekolwiek źródło kompatybilne z TileCache, Google Maps lub Bing

Usługi:
  * WMS (1.0.0-1.3.0)
  * TMS
  * WMTS
  * KML SuperOverlays

Tile cache:
  * przechowuje identyczne obrazy tylko raz (np. kaflle oceanu)
  * przechowuje kafle w systemie plików, MBTile files lub CouchDB
  * znak wodny na kaflach

Opcje źródeł:
  * ograniczenie źródeł do geometrii (na przykład z Shapefile)
  * dodawanie przezroczystości do nieprzezroczystych warstw
  * łączenie wielu źródeł
  * reprojekcja do innego układu współrzędnych

Funkcje WMS:
  * build layer trees from different sources
  * create ``GetMap`` responses from cache with support for free-zooming and any projection (for any Desktop GIS)
  * accelerates existing WMS 10 to 100 times
  * respond to ``GetLegendGraphic`` requests
  * cascade ``GetFeatureInfo`` requests with optional XSL transformations
  * on-the-fly reprojection
  * convert WMS versions and image formats

Bezpieczeństwo:
  * flexible and powerful authorization API
  * fine-grained control over services and layers
  * restrict access to polygon areas
  * integrate with existing user databases and authentication methods

Other features:
  * simple but powerful configuration format (YAML/JSON)
  * OpenLayers based demo client
  * run multiple WMS services in one MapProxy instance
  * add attribution lines to the images
  * support for non-image raster data like DEMs
  * many more

Zaimplementowane standardy
--------------------------------------------------------------------------------

MapProxy implementuje poniższe otwarte specifikacje:

* OGC WMS 1.0.0, 1.1.0, 1.1.1, 1.3.0
* OGC WMTS 1.0.0 (KVP i RESTful)
* OSGeo TMS 1.0.0
* OGC KML 2.2 SuperOverlays


Szczegóły
--------------------------------------------------------------------------------

**Strona internetowa:** http://mapproxy.org/

**Licencja:** `Apache Software License 2.0 <http://www.apache.org/licenses/LICENSE-2.0.html>`_

**Wersja programu:** 1.8.0

**Systemy operacyjne:** Linux, Mac, Windows

**Wsparcie:** http://mapproxy.org/support.html

**Dokumentacja:** <../../mapproxy/index.html>`_


Wprowadzenie
--------------------------------------------------------------------------------

* :doc:`Przejdź do wprowadzenia <../quickstart/mapproxy_quickstart>`
