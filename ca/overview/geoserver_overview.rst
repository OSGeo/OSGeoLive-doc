:Author: Ian Turton
:Author: Frank Gasdorf
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GeoServer.png
  :scale: 100%
  :alt: project logo
  :align: right
  :target: http://geoserver.org/display/GEOS/Welcome

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GeoServer
================================================================================

Servei web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GeoServer és un servidor web que permet servir mapes i dades de diversos formats diferents a clients estàndard com navegadors web i programes SIG d'escriptori. Això vol dir que pot emmagatzemar les vostres dades espacials en el `format
<http://docs.geoserver.org/stable/en/user/data/index.html>`_ que preferiu i que els vostres usuaris no han de saber res de dades SIG. En el nivell més simple tot el què necessiten és un navegador web per veure els mapes exactament com els heu creat.

GeoServer és la implementació de referència dels estàndards de l'`Open Geospatial 
Consortium <http://www.opengeospatial.org>`_ (OGC) 
:doc:`../standards/wfs_overview` i 
:doc:`../standards/wcs_overview`, 
així com un :doc:`../standards/wms_overview` certificat d'alt rendiment. 
GeoServer és un component clau de la Web Geoespacial. 

.. image:: ../../images/screenshots/800x600/geoserver.gif
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

**Les dades es serveixen com imatges ràpidament i de forma segura emprant el protocol WMS:**
    Donat que les dades es serveixen com una imatge, les vostres dades estàn protogides. A menys que algú les digitalitzi, no hi ha manera de prendre les vostres dades.
    L'aspecte de cada capa del mapa es pot controlar emprant l'estàndard SLD, que permet donar color i posar etiquetes als elements. Combinant aquestes normes amb filtres OGC es pot implementar estils diferents segons l'escala, cosa que permet afegir detall a mida que l'usuari s'acosta al mapa. També s'implementen la gestió de la col·lisió d'etiquetes, l'agrupament i la priorització.

**Les dades vector es poden fer arribar al client emprant el protocol WFS:**
     Un client WFS pot descarregar dades vector i usar-les per fer mapes, anàlisi espacial i altres operacions. Si es tenen permisos, l'usuari també podria modificar les dades i retornar-les al servidor per actualitzar les dades emmagatzemades emprant el protocol WFS-T.
     Les dades es poden tramsmetre utilizant GML (comprimit) o bé altres formats de dades estàndard com shapefile i json.

**Els valors de les dades ràster es poden enviar a un client emprant el protocol WCS:**
    Un client SIG pot demanar les dades raster per usar-les en anàlisi espacial. Això permet als usuaris crear aplicacions que modelen els processos descrits per les vostres dades.

**Reprojecció al vol:**
     GeoServer suporta la majoria de codis EPSG de projeccions i pot reprojectar a qualsevol d'ells sota demanda per permetre als client descarregar al servidor les tasques de reprojecció.

**Cau de tessel·les WMS**
    `GeoWebCache <http://geowebcache.org/>`_ és un client WMS de tessel·lat. S'executa com un servidor proxy entre un client de mapes i un servidor de mapes, desant les tessel·les a mida que es demanen, per eliminar peticions redundants i estalviar gran quantitat de temps de procés. GeoWebCache ha estat integrat a GeoServer.

Estàndards implementats
--------------------------------------------------------------------------------

Suporta nombrosos estàndards de l'Open Geospatial Consortium  (OGC):

  * :doc:`../standards/wms_overview`
  * :doc:`../standards/wfs_overview`, WFS-T (transaccional)
  * :doc:`../standards/wcs_overview`
  * :doc:`../standards/fe_overview`
  * :doc:`../standards/sld_overview` 
  * :doc:`../standards/gml_overview`

Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://geoserver.org/display/GEOS/Welcome

**Llicència:** GNU General Public License (GPL) version 2

**Versió de programari:** 2.1.3

**Sistemes operatius:** All Java 1.5 platforms: - Windows, Linux, Mac

**Interfícies API:** WMS, WFS, WCS, REST

**Suport:** http://geoserver.org/display/GEOS/Commercial+Support

Guia ràpida
--------------------------------------------------------------------------------
    
* :doc:`Documentació de la guia ràpida <../quickstart/geoserver_quickstart>`
