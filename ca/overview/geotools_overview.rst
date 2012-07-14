:Author: Jody Garnett
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

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

GeoTools és una llibreria Java de codi obert (LGPL) que proporciona mètodes que compleixen estàndards per manipular geodades, i usa estructures de dades basades en les especificacions de l'Open Geospatial Consortium (OGC).

.. image:: ../../images/screenshots/800x600/geotools-overview.png
  :scale: 60 %
  :alt: GeoTools és una llibreria modular amb suport per complements per a formats addicionals
  :align: right

GeoTools s'utilitza a força projectes, incloent serveis web, eines de línia de comandes i aplicacions d'escriptori. Algunes de les aplicacions d'OSGeo-Live que inclouen GeoTools són: 
:doc:`52nSOS_overview`, :doc:`52nWPS_overview`, :doc:`atlasstyler_overview`, :doc:`geomajas_overview`, :doc:`geopublisher_overview`, :doc:`geoserver_overview`, i :doc:`udig_overview`.

Característiques principals
--------------------------------------------------------------------------------

* Definició d'interfícies per a conceptes espacials clau i estructures de dades.
  
  * Suport integrat de geometries proporcionat per `JTS Topology Suite (JTS) <http://tsusiatsoftware.net/jts/main.html>`_
  * Atributs i filtres espacials segons les especificacions OGC Filter Encoding 

* Una interfície API d'accés a dades neta que suporta accés a elements, suport de transaccions i bloqueig entre fils
  
  * Accés a dades GIS en diferents formats d'arxiu i bases de dades espacials
  * Suport de sistemes de referència de coordenades i transformació
  * Treballa amb un gran nombre de projeccions
  * Filtra i analitza dades segons els atributs espacials i no espacials

* Processador sense estat amb baix consum de memòria especialment útil per a entorns a la banda del servidor.
  
  * composar i visualitzar mapes amb estils complexos

* Potent tecnologia d'anàlisi *assistida per esquema* utilitzant un esquema XML per enllaçar amb el contingut GML
  
  * La tecnologia d'anàlisi/codificació disposa d'enllaços per diferents estàndards OGC com GML, Filter, KML, SLD, i SE.
  
* GeoTools Plugins: sistema obert de complements per introduïr formats addicionals a la llibreria
  
  * Complement per al projecte ImageIO-EXT que permet a GeoTools llegir formats d'imatge addicionals de GDAL
 
* Extensions per GeoTools

  * Proporciona capacitats addicionals construïdes usant les facilitats espacials de la llibreria.
  
  .. image:: ../../images/screenshots/800x600/geotools-extension.png
     :alt: Extensions construïdes usant la llibreria GeoTools

  * Les extensions proporcionen suport de graf i xarxa (per trobar el recorregut més curt), validació, un client per al servidor web de mapes, enllaços per anàlisi xml i triador de colors.

* Sense suport a GeoTools
  
  * GeoTools també opera com a part d'una comunitat més àmplia, amb una àrea de classificació usada per fomentar nous talents i promoure l'experimentació.
  
  * Alguns punts destacats són el suport d'oscil·lació (utilitzat en tutorials GeoTools), SWT, suport al procés local i web, més simbologia, formats addicionals de dades, generació de xarxes i un parell d'implementacions de l'ISO Geometry.

Formats suportats
-----------------  

* Formats ràster i d'accés a dades:
  
  arcsde, arcgrid, geotiff, grassraster, gtopo30, image (JPEG, TIFF, GIF, PNG), imageio-ext-gdal, imagemoasaic, imagepyramid, JP2K, matlab.
  
* suport de bases de dades "jdbc-ng":
  
  db2, h2, mysql, oracle, postgis, spatialite, sqlserver.

* Formats vector i d'accés a dades:
  
  app-schema, arcsde, csv, dxf, edigeo, excel, geojson, org, property, shapefile, wfs.

* Enllaços XML:

  Estructures Java de dades i enllaços per a:

  xsd-core (xml simple types), fes, filter, gml2, gml3, kml, ows, sld, wcs, wfs, wms, wps, vpf.
  
  Analitzadors/codificadors addicionals per a Geometria, Filtre i Estil disponibles per aplicacions DOM i SAX.
  
Estàndards implementats
--------------------------------------------------------------------------------

suport per nombrosos estàndards Open Geospatial Consortium (OGC):

* Estructures de dades i notor de renderitzat OGC Style Layer Descriptor / Symbology Encoding
* OGC General Feature Model incloent suport per Simple Feature
* Representació d'informació ràster OGC Grid Coverage
* OGC Filter and Common Constraint Language (CQL)
* Clients per Web Feature Service (WFS), Web Map Service (WMS) i suport experimental per Web Process Service (WPS)
* Geometria ISO 19107

Detalls
--------------------------------------------------------------------------------
 
**Lloc web:** http://geotools.org/

**Llicència:** LGPL

**Versió de programari:** 2.7.1

**Sistemes operatius:** Cross Platform Java

**Interfícies API:** Java

**Suport:** `Communication and Support <http://docs.geotools.org/latest/userguide/welcome/support.html>`_

Guia ràpida
--------------------------------------------------------------------------------

* `guia ràpida <http://docs.geotools.org/latest/userguide/tutorial/quickstart/index.html>`_
