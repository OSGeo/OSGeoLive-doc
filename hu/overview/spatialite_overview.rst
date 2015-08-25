:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Zoltan Siki
:Version: osgeo-live7.9
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-spatialite.png
  :alt: projekt logo
  :align: right
  :target: http://www.gaia-gis.it/gaia-sins/


SpatiaLite
================================================================================

Téradatbázis
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A SpatiLite egy térbeli függvényekkel kibővített  SQLite_ adatbázis.

Az SQLite egy egyszerű, robosztus, könnyen használható és könnyűsúlyú adatbázis
kezelő rendszer. Minden SQLite adatbázis egyszerűen egy fájl. Szabadon
másolhatja, tömörítheti átviheti Windows, Linux, MacOs, stb. között.

.. _SQLite: http://www.sqlite.org/

.. image:: ../../images/screenshots/1024x768/spatialite.jpg
  :scale: 50 %
  :alt: képernyőkép
  :align: right

Alapfunkciók
--------------------------------------------------------------------------------

A SpatiaLite bővítmény az OGC specifikációnak megfelelő téradat kezelést tesz 
lehetővé a SQLite-ban.

Kiemelkedő funkciók:

* Felhasználó barát GUI 
* Szabványos WKT és WKB formátumok
* SQL térbeli függvények mint például AsText(), GeomFromText(), Area(),
  PointN() ...
* GEOS könyvtár által szolgáltatott OpenGis térbeli elemző függvények, mint
  például Overlaps(), Touches(), Union(), Buffer() ...
* Az OpenGIS spacifikációnak megfelelő teljes térinformatikai metaadat
* Többféle geometria ábrázolás - EWKT, GML, KML és GeoJSON
* Shape fájl import és export
* Vetületi átszámítás PROJ.4 segítségével, EPSG paraméterek alapján
* Helyi kódlap használata GNU libiconv segítségvel
* Térbeli index az SQLite RTree bővítményen keresztül
* Shape fájlok elérése virtuális táblaként, SQL lekérdezések hajthatók végre
  külső shape fájlokon anélkül, hogy importálnák vagy konvertálnánk őket
* Külső CSV/TxtTab fájlok vagy xls számolótáblák elérése virtuális táblaként
* Tömörített bináris BLOB objektumokban tárolt XML dokumentumok elérése, 
  beleértve a szintaktikailag "jól formázott" és XFS séma ellenőrzést. Speciális
  ISO-Metaadat támogatás, SLD/SE stílusok és SVG grafika.  XML dokumentumok
  lekérdezhetők a szabványos XPath szintaxissal
* Lekérdezés külső WF szerveből
* Külső DXF fájlok (minden verzió) értelmezése a megtalált rétegek és geometriai  elemek tárolása
* DXF fájl generálás és export

Részletek
--------------------------------------------------------------------------------

**Honlap:** http://www.gaia-gis.it/gaia-sins/

**Licenc:** MPL v1.1 and GPL v3

**Program verzió:** spatialite 4.1.1 / spatialite-gui 1.7.1

**Támogatott platformok:** Linux, Mac, Windows

**API interfészek:** C


Gyorstalpaló
--------------------------------------------------------------------------------

* :doc:`Gyorstalpaló dokumentáció <../quickstart/spatialite_quickstart>`

