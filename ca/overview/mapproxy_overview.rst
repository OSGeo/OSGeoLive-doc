:Author: Oliver Tonnhofer
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Assumpcio Termens
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-mapproxy.png
  :alt: project logo
  :align: right
  :target: http://mapproxy.org/

MapProxy
================================================================================

Proxy WMS i serveis de rajola (tile)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/screenshots/800x600/mapproxy.png
  :alt: MapProxy diagram
  :align: right

MapProxy accelera les aplicacions de mapeig tot previsualitzant i integrant mapes
de múltiples fonts i emmagatzemant-los en una memòria cau local.
Les capes poden ser transparents, les projeccions es poden canviar, diverses capes 
cartogràfiques poden ser transformades en una altra, es poden afegir marques 
d'aigua, i més...

MapProxy és flexible i escala des del senzill cas d'ús fins al més complex: des d'una única
rajola de memòria cau per a un client web OpenLayers fins a un node central SDI que combina,
unifica i accelera desenes de serveis WMS distribuïts.

MapProxy és utilitzat per l'atles de banda ampla alemany per distribuir mapes de milers
d'usuaris i l'Agència Federal Alemanya per a la Cartografia i Geodèsia utilitza MapProxy
per afegir els serveis WMS de tots els 16 estats sobre la marxa.


Característiques Principals
--------------------------------------------------------------------------------

.. image:: ../../images/screenshots/800x600/mapproxy_demo.png
  :width: 796
  :height: 809
  :scale: 70 %
  :alt: MapProxy demo
  :align: right
 
Fonts d'entrada:
  * WMS 1.0.0–1.3.0 (MapServer, GeoServer, etc.)
  * TMS, WMTS (TileCache, GeoWebcache, etc.)
  * Mapserver i Mapnik (directament, sense WMS)
  * qualsevol font compatible amb TileCache, Google Maps o Bing

Serveis:
  * WMS (1.0.0-1.3.0)
  * TMS
  * WMTS
  * KML SuperOverlays

Memòria cau de rajola (tile cache):
  * emmagatzema imatges idèntiques només un cop (ie. rajoles d'oceans)
  * emmagatzema rajoles en arxius del sistema, arxius MBT o CouchDB
  * afegeix marques d'aigua a les rajoles 

Opcions de les fonts:
  * Fonts limit a partir de geometries (de Shapefile per exemple)
  * afegeix transparència a capes opaques 
  * combina múltiples fonts
  * reprojecta a altres SRS

Característiques WMS:
  * genera arbres de capes de diferents fonts
  * crea respostes de la memòria cau ``GetMap``  amb suport per a qualsevol escala i projecció.
  * accelera el WMS existent de 10 a 100 cops
  * respon a peticions ``GetLegendGraphic``
  * cascada de peticions ``GetFeatureInfo`` amb transformacions opcionals XSL
  * reprojeccions a l'instant (on-the-fly)
  * converteix a diferents versions WMS i formats d'imatge

Altres característiques:
  * configuració de format senzilla però potent (YAML / JSON)
  * client de demostració basat en OpenLayers
  * executa múltiples serveis WMS en una instància MapProxy
  * afegeix línies d'atribució a les imatges
  * suporta per a les dades ràster sense imatge com si fos un DEM
  * suporta l'autorització personalitzada amb un control exhaustiu sobre els serveis i les capes
  * moltes més
   
Estàndards implementats
--------------------------------------------------------------------------------

MapProxy implementa les següents especificacions de codi obert:

* OGC WMS 1.0.0, 1.1.0, 1.1.1, 1.3.0
* OGC WMTS 1.0.0 (KVP i RESTful)
* OSGeo TMS 1.0.0
* OGC KML 2.2 SuperOverlays


Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://mapproxy.org/

**Llicència:** `Apache Software License 2.0 <http://www.apache.org/licenses/LICENSE-2.0.html>`_

**Versió de programari:** 1.3.0

**Sistemes operatius:** Linux, Mac, Windows

**Suport:** http://mapproxy.org/support.html


Guia d'inici ràpid
--------------------------------------------------------------------------------
    
* :doc:`Guia ràpida <../quickstart/mapproxy_quickstart>`
