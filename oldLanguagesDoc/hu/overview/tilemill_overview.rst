:Author: OSGeo-Live
:Author: Javier Sanchez, GeoNaTec
:Reviewer: Cameron Shorter, Jirotech
:Translator: Zoltan Siki
:Version: osgeo-live8.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-tilemill.png
  :alt: TileMill
  :align: right
  :target: http://www.tilemill.com

TileMill
================================================================================


Tervező studió Web térképekhez
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A TileMill egy tervező studió szép, web alapú, interaktív térképek
létrehozására, létező téradatok széles skálája alapján.

.. Review Comment
  If MBTiles is an Open Standard, we probably should provide a link to it.

A generált web térképek felbukkanó tippeket, kattintásra felbukkanó ablakokat,
interaktív grafikonokat és képeket, SVG markereket, gazdag mintázatokat és több
réteget képesek kezelni. A testreszabott térképek különböző formátumokba 
exportálhatók mint például: .png, .pdf, .svg és MBTiles. Az MBTiles specifikáció
definiálja hogyan tároljuk a csempéket egyetlen fájlba, mint egy SQLite
adatbázis.

Az adatok jöhetnek vektor adatokból (CSV, shapefile, KML, GeoJSON), raszterekből
(GeoTiff), mint ahogy nagy adatforrásokból mint OpenStreetMap,
PostgreSQL/PostGIS és SQLite.

A TileMill felhasználja a :doc:`Mapnik <mapnik_overview>` térkép megjelenítő 
könyvtárat (az OpenStreetMap is használja) és a CartoCSS-t mint stíluslap
nyelvet.

A TileMill-t tipikusan együtt használják az adatok előkészítése során egy
asztali GIS-sel (pl. QGIS), az ikonok és kitöltési minták létrehozása során
pedig egy grafikus szerkesztőprogrammal (pl. Gimp).

.. image:: /images/projects/tilemill/tilemill_interface2.png
  :scale: 50 %
  :alt: TilleMill felhasználói interfész
  :align: right

Alapfunkciók
--------------------------------------------------------------------------------

* Adatok betöltése a források széles skálájából
  
  * ESRI Shapefile
  * KML
  * GeoJSON
  * GeoTiff
  * CSV táblázatok
  * OpenStreetMap

* Kapcsolódás téradatbázisokhoz

  * PostgreSQL + PostGIS
  * SQLite

* Testreszabott rétegek kezelése

* Megjelenítési stílusok beállítása

  * Stílus előre beállított vagy egyéni színekkel
  * Feltételes stílusok

* Felbukkanó tippek és jelmagyarázatok hozzáadása

* Publikálás

  * Képfájlok: .png, .pdf, .svg, MBTiles.
  * Publikálás mint weblap
  * Weblapba vagy tartalomkezelő rendszerbe (WordPress, Drupal) ágyazott térkép

* JavaScript API

Implementált szabványok
--------------------------------------------------------------------------------

* A TileMill nem támogatja az OGC szabványokat mint WMS vagy WFS.

Inkább a bevett gyakorlatnak számító, a Google és az OSM által használt z/x/y 
csempe sémát használja, mely az MBTiles és az UTFGris specifikáción alapul.

Részletek
--------------------------------------------------------------------------------

**Honlap:** http://tilemill.com

**Licenc:** BSD

**Program verzió:** 0.10.2

**Támogatott platformok:** Windows, Linux, Mac

**API interfészek:** JavaScript

**Támogatás:** http://www.tilemill.com


Gyorstalpaló
--------------------------------------------------------------------------------
    
* :doc:`Gyorstalpaló dokumentáció <../quickstart/tilemill_quickstart>`
