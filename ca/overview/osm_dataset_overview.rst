:Author: Hamish Bowman
:Reviewer: Cameron Shorter
:Translator: Anna Muñoz Bollas
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-osm.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.osm.org/


OpenStreetMap
================================================================================

Dades Cartogràfiques
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

OpenStreetMap és un mapa creat a partir multitud de fonts d'arreu del món que ha crescut 
fins a esdevenir una de les fonts més detallades de dades cartogràfiques disponibles a escala local. 
Milers de voluntaris d'arreu del món generen i mantenen aquestes dades, amb processos similars al manteniment de l'enciclopèdia Viquipèdia.

L'aspecte més visible d'OSM és la interfície web basada en tessel·les, accessible a través de http://osm.org. 
Però els mapes també es poden visualitzar, importar o editar en altres aplicacions com Quantum GIS, OpenLayers, ArcGIS o
altres aplicacions específiques de OSM.

El nucli del projecte són les dades que hi ha per sota, que qualsevol pot editar, visualitzar o utilitzar per crear mapes personalitzats. 
Fonamentalment, OSM s'enfoca en les dades i els mapes resultants són simplement una conseqüència d'això.

La distribució OSGeo-Live inclou un extracte de les dades de OSM a nivell de ciutats, 
que s'utilitza en els exemples d'altres aplicacions.

.. image:: ../../images/screenshots/1024x768/osm-screenshot.jpg 
  :scale: 55 %
  :alt: OSM screenshot
  :align: right

Característiques Principals
--------------------------------------------------------------------------------

* Les dades vectorials estan etiquetades amb noms i altres atributs.
* És possible extreure subconjunts locals de les dades.
* Les dades s'emmagatzemen com a nodes WGS84 (latitud-longitud) i cadenes de nodes, així com les metadades es poden guardar a nivell de punt, polilínia i cobertura completa.
* Etiquetatge enriquit, normalment molt més detallat que qualsevol altra font de dades.
* Repositori global de coneixement local.


Conjunts de Dades que inclou la distribució OSGeo-Live
--------------------------------------------------------------------------------

Denver.osm.bz2:
 Un extracte de l'àrea urbana més gran de Denver en un arxiu de text XML comprimit amb BZip2.
 
Denver_CBD.osm.bz2:
 Un subconjunt de dades més petit que cobreix només el districte central de negocis de Denver.
 
Detalls
--------------------------------------------------------------------------------

**Lloc Web:** http://www.osm.org

**Llicència:** Creative Commons CC-By-SA

**Versió de les Dades:** Live database

**Format de les Dades:** XML

**Sistema de Coordenades Espacial:** Lat-Long WGS84

**Suport:** http://wiki.osm.org

