:Author: Jody Garnett
:Reviewer: Cameron Shorter, Jirotech
:Translator: Zoltan Siki
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-GeoTools.png
  :alt: projekt logo
  :align: right
  :target: http://geotools.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Projekt
  :align: right
  :target: http://www.osgeo.org

GeoTools
================================================================================

A GeoTools egy nyílt forráskódú (LGPL) Java könyvtár, mely szabványoknak 
megfelelő eljárásokat biztosít a térinformatikai adatok kezeléséhez és az
Open Geospatial Consortium (OGC) specifikációin alapuló adatszerkezeteket 
használ.

.. image:: /images/screenshots/800x600/geotools-overview.png
  :scale: 60 %
  :alt: A GeoTools egy moduláris könyvtár, bővítő modulokkal további formátumokhoz
  :align: right

A GeoTools-t számos projekt használja, többek között web szolgáltatások,
parancssori programok és asztali alkalmazások. GeoTools-t használó OSGeo-Live
alkalmazások:
:doc:`52nSOS_overview`, :doc:`52nWPS_overview`, AtlasStyler, :doc:`geomajas_overview`, Geopublisher, :doc:`geoserver_overview`, and :doc:`udig_overview`.

Alapfunkciók
--------------------------------------------------------------------------------

* Interfész definíció a kulcsfontosságú térbeli fogalmakhoz és adatstruktúrákhoz

  * A `JTS Topology Suite (JTS) <https://sourceforge.net/projects/jts-topo-suite/>` által biztosított integrált geometria
  * Attribútum és térbeli szűrők az OGC Filter Encoding specifikáció felhasználásával

* Egy világos adathozzáférési API az elemek eléréséhez, tranzakció támogatás és a szálak közötti zárolás

  * GIS adatok elérése több fájl formátumból és téradatbázisból
  * Koordinátarendszer és transzformáció
  * Térképi vetületek kiterjedt tartománya használható
  * Térbeli és nem térbeli adatok szűrése és elemzése

* Egy állapotmentes, alacsony memória igényű megjelentés, ez különösen hasznos a szerver oldali megoldásokban.

  * Összetett stílusokat alkalmazó térképek összeállítása és megjelenítése

* Hatékony *sémával segített* XML sémát alkalmazó értelmezési technológia a GML tartalomhoz kötéshez

  * Értelmezési / kódolási technológia számos OGC szabványhoz biztosít kötéseket, többek között GML, Filter, KML, SLD és SE.

* GeoTools modulok: a nyílt modul rendszer lehetővé teszi, hogy további formátumokat kezeljünk a könyvtárral

  * Az ImageIO-EXT projektből származó modul lehetővé teszi, hogy a GeoTools további raszter formátumokat olvasson GDAL-ból

* GeoTools bővítmények

  * További képességeket biztosít a mag könyvtár funkcióinak felhasználásával. 

  .. image:: /images/screenshots/800x600/geotools-extension.png
     :alt: A GeoTools könyvtárral készült bővítmény

  * Bővítmények biztosítják a gráf és a hálózatkezelést (lerövidebb útvonal keresés), az ellenőrzést, egy térkép szerver klienst, az xml értelmezéshez és kódoláshoz kötéseket és a színkezelést.

* GeoTools nem hivatalos

  * A GeoTools egy szélessebb közösség számára egy kísérleti területként is működik, hogy segítse az új tehetségeket és elősegítse a kísérletezést.

  * Néhány kiemelés: a swing támogatás (a geotools oktatóanyagokban használják), swt, helyi és web feldolgozás támogatás, további szimbólum rendszer, további adatformátumok, rács generálás és az ISO Geometria pár megvalósítása.

Támogatott formátumok
---------------------

* Raszter formátumok és adat elérés:

  arcsde, arcgrid, geotiff, grassraster, gtopo30, image (JPEG, TIFF, GIF, PNG), imageio-ext-gdal, imagemoasaic, imagepyramid, JP2K, matlab.

* Adatbázis "jdbc-ng" támogatás:

  db2, h2, mysql, oracle, postgis, spatialite, sqlserver.

* Vektor formátumok és adat elérés:

  app-schema, arcsde, csv, dxf, edigeo, excel, geojson, org, property, shapefile, wfs.

* XML kötések:

  Java adat struktúrák és kötések a következőkhöz:
  xsd-core (xml simple types), fes, filter, gml2, gml3, kml, ows, sld, wcs, wfs, wms, wps, vpf.

  További geometria, szűrő és stílus értelmező/kódoló érhető el a DOM és SAX alkalmazásokból.

Implementált szabványok
--------------------------------------------------------------------------------

Számos Open Geospatial Consortium (OGC) szabvány:

* OGC Style Layer Descriptor / Symbology Encoding data structures and rendering engine
* OGC General Feature Model including Simple Feature support
* OGC Grid Coverage representation of raster information
* OGC Filter and Common Constraint Language (CQL)
* Web Feature Service (WFS), Web Map Service (WMS) kliens és Web Process Service (WPS) kísérleti támogatás
* ISO 19107 geometria

Részletek
--------------------------------------------------------------------------------

**Honlap:** http://geotools.org/

**Licenc:** LGPL

**Támogatott platformok:** Cross Platform Java 6

**API Interfészek:** Java

**Támogatás:** `Communication and Support <http://docs.geotools.org/latest/userguide/welcome/support.html>`_

Gyorstalpaló
--------------------------------------------------------------------------------

* `Gyorstalpaló dokumentáció <http://docs.geotools.org/latest/userguide/tutorial/quickstart/index.html>`_
