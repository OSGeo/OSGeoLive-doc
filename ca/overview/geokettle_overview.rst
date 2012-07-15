:Author: Thierry Badard 
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-geokettle.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://www.geokettle.org/

GeoKettle
================================================================================

Extract Transform Load (ETL)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GeoKettle és una versió amb capacitas espacials de `Pentaho Data Integration <http://kettle.pentaho.com>`_ (conegut com Kettle). Es una potent eina espacial d'extracció, transformació i càrrega (ETL) impulsada per metadades pensada per a la integració de diferents fonts de dades per construïr i actualitzar bases de dades espacials, magatzems de dades i serveis web.

GeoKettle possibilita l'Extracció de dades des de fonts de dades, la Transformació de dades per corregir errors, netejar dades, canviar estructures de dades, adaptar les dades a estàndards, i la Càrrega de les dades transformades en un sistema de gestió de bases de dades (DBMS), un arxiu GIS o un servei web geoespacial. GeoKettle és molt útil per automatitzar processos de dades complexes i repetitius sense necessitat d'escriure codi específic: convertir entre formats de dades, migrar dades entre bases de dades, carregar dades a bases de dades, etc.

En l'àmbit geoespacial Geokettle es pot comparar amb FME, una eina ETL espacial privativa. GeoKettle és estable, és ràpid, respecta els estàndards, té centenars de funcions i suport per llegir i escriure molts formats d'arxius, serveis i DBMS. GeoKettle s'utilitza a diverses organitzations d'arreu del món, com agències del govern, bancs, asseguradores i integradors de sistemes geoespacials.

.. image:: ../../images/screenshots/1024x768/geokettle-overview.png
  :scale: 50 %
  :alt: project logo
  :align: right

Característiques principals
--------------------------------------------------------------------------------

* Extreu dades de: 

  * Més de 35 tipus de bases de dades: MySQL, PostgreSQL/PostGIS, Oracle, ...
  * Arxius XML
  * Arxius XLS
  * Arxius Xbase (dBase, Foxpro, etc)
  * Informació de sistemes d'arxiu
  * Dades generades
  * Arxius MS Access
  * LDAP
  * Sistemes SOLAP (Spatial OLAP): GeoMondrian
  * Formats de dades geoespacials: Shapefile, GML 3.1.1, KML 2.2, tots els suportats per OGR
  * Serveis web OGC: Web Feature Service (WFS), Sensor Observation Service (SOS), Catalogue Web Service (CSW)

* Transformació de dades:

  * Transferències de dades basades en motor (sense generador de codi)
  * Recerca de dades a bases de dades, arxius o mem?ria
  * Càlculs
  * Scripting: Javascript, SQL, RegExp
  * Divisió
  * Mapeig
  * Selecció
  * Particionat
  * Filtratge
  * Fusió
  * Unió
  * Duplicació
  * Agrupació (MPP)
  * Pivotatge
  * Anàlisi geoespacials: buffer, centroide, distància, intersecció, unió, ...
  * Geoprocès avançat: retall, delaunay, simplificació/suavitzat de geometries, divisió d'elements, ...
  * Agregació espacial
  * Previsualització cartogràfica

* Càrrega de dades en format final:

  * Càrrega a bases de dades: MySQL, PostgreSQL/PostGIS, Oracle, ...
  * Poblament de magatzems de dades
  * Formats de dades geoespacials: Shapefile, GML 3.1.1, KML 2.2, tots els suportats per OGR
  * Serveis web OGC: Catalogue Web Service (CSW), ...
  * Càrregues particionades
  * Càrregues massives
  * Càrregues paral·leles
  * Agrupació

* Entorn:
  
  * GUI complet anomenat "Spoon" per editar totes les opcions de transformació 
  * Eines de línia de comandes: per executar treballs i transformacions
  * Servidor web: execució remota i agrupació en entorns de computació al núvol per al processament de grans conjunts de dades
  * Programació API per Java
  * Ecosistema de complements

Estàndards implementats
--------------------------------------------------------------------------------

* Compleix els estàndards OGC (SFS, CSW, SOS)

Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://www.geokettle.org/

**Llicència:** GNU Lesser General Public License (LGPL) version 2.1

**Versió de programari:** 2.0

**Sistemes operatius:** Windows, Linux, Mac, Solaris

**Interfícies API:** Java, Javascript

**Suport:** http://www.spatialytics.org & http://www.spatialytics.com


Guia ràpida
--------------------------------------------------------------------------------
    
* :doc:`guia ràpida <../quickstart/geokettle_quickstart>`
