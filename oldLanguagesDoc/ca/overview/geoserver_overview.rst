:Author: Ian Turton
:Author: Frank Gasdorf
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Anna Muñoz Bollas
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

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

Servei web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GeoServer és un servidor web que permet servir mapes i dades de diversos formats diferents a clients estàndard com navegadors web i programes SIG d'escriptori. Això vol dir que pot emmagatzemar les vostres dades espacials en el format que preferiu i que els vostres usuaris no han de saber res de dades SIG. En el nivell més simple tot el què necessiten és un navegador web per veure els mapes exactament com els heu creat.

GeoServer és la implementació de referència dels estàndards de l'`Open Geospatial 
Consortium <http://www.opengeospatial.org>`_ (OGC) 
:doc:`../standards/wfs_overview` i 
:doc:`../standards/wcs_overview`, 
així com un :doc:`../standards/wms_overview` certificat d'alt rendiment. 
GeoServer és un component clau de la Web Geoespacial. 

.. image:: /images/screenshots/geoserver/geoserver.png
  :scale: 60 %
  :alt: Screen Shot of GeoServer
  :align: right

Característiques principals
--------------------------------------------------------------------------------

**Serveix dades des de diversos magatzems de dades:**
    * Vector
        - Shapefiles, WFS externs
        - PostGIS, ArcSDE, DB2, Oracle Spatial, MySql, SQL Server
    * Raster
        - GeoTiff, JPG i PNG (amb arxiu extern), imatges piramidals, formats GDAL, mosaics d'imatges, Oracle GeoRaster

**Les dades es serveixen ràpidament i de forma segura com imatges emprant els protocols WMS i WMTS:**
    Donat que les dades es serveixen com una imatge, les vostres dades estàn protogides. A menys que algú les digitalitzi, no hi ha manera de prendre les vostres dades.
    L'aspecte de cada capa del mapa es pot controlar emprant l'estàndard SLD, que permet donar color i posar etiquetes als elements. Combinant aquestes normes amb filtres OGC es pot implementar estils diferents segons l'escala, cosa que permet afegir detall a mida que l'usuari s'acosta al mapa. També s'implementen la gestió de la col·lisió d'etiquetes, l'agrupament i la priorització.

**Les dades vector es poden fer arribar al client emprant el protocol WFS:**
     Un client WFS pot descarregar dades vector i usar-les per fer mapes, anàlisi espacial i altres operacions. Si es tenen permisos, l'usuari també podria modificar les dades i retornar-les al servidor per actualitzar les dades emmagatzemades emprant el protocol WFS-T.
     Les dades es poden tramsmetre utilizant GML (comprimit) o bé altres formats de dades estàndard com shapefile i json.

**Els valors de les dades ràster es poden enviar a un client emprant el protocol WCS:**
    Un client SIG pot demanar les dades raster per usar-les en anàlisi espacial. Això permet als usuaris crear aplicacions que modelen els processos descrits per les vostres dades.

**Reprojecció al vol:**
     GeoServer suporta la majoria de codis EPSG de projeccions i pot reprojectar a qualsevol d'ells sota demanda per permetre als client descarregar al servidor les tasques de reprojecció.

**Cau de tessel·les** 
    `GeoWebCache <http://geowebcache.org/>`_, el qual està integrat dins Geoserver, tesel·lat imatges de mapa
	des de diverses fonts com per exemple WMS. Implementa diverses interfaces (tals com WMS-C, WMTS, TMS, Google Maps KML,
	Virtuañ Earth) per tal d'accelerar i optimitzar l'enviament de les imatges. A més pot recombinar tesel·les per tal de 
	treballar amb clients usuals de WMS.
	
**Web Processing Service (WPS)** 
	Algorismes geoespacials, incloent els :doc:`JTS <jts_overview>`, 
	que es poden cridar a traves de la interface de :doc:`WPS <../standards/wps_overview>` de Geoserver.
	Inclou l'encadenament de processos, així com l'ús de transformacions de renderitzat per tal de crear
	visualitzacions de mapes a través de WMS.
	
Estàndards implementats
--------------------------------------------------------------------------------

Suporta nombrosos estàndards de l'Open Geospatial Consortium  (OGC):

  * :doc:`../standards/wms_overview`
  * Web Map Tile Service (WMTS)
  * :doc:`../standards/wfs_overview`, WFS-T (transaccional)
  * :doc:`../standards/wcs_overview`
  * :doc:`../standards/wps_overview`
  * :doc:`../standards/fe_overview`
  * :doc:`../standards/sld_overview` 
  * :doc:`../standards/gml_overview`

Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://geoserver.org/

**Llicència:** GNU General Public License (GPL) version 2

**Versió de programari:** |version-geoserver|

**Sistemes operatius:** All Java 1.5 platforms: - Windows, Linux, Mac

**Interfícies API:** WMS, WFS, WCS, REST

**Suport:** http://geoserver.org/support/

Guia ràpida
--------------------------------------------------------------------------------
    
* :doc:`Documentació de la guia ràpida <../quickstart/geoserver_quickstart>`
