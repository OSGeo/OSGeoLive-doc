:Author: Klokan Petr Pridal, Angelos Tzotsos
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Zoltan Siki
:Version: osgeo-live8.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-mapslicer.png
  :alt: projekt logo
  :align: right
..  :target: https://wiki.osgeo.org/wiki/MapSlicer


MapSlicer
================================================================================

Térkép publikálás
--------------------------------------------------------------------------------

A MapSlicer egy asztali alkalmazás, mely a raszter térképek gyors publikálásához
térkép csempéket hoz létre. A geoadatokat Google Maps és Earth kompatibils
csempékké alakítja át - a publikálásra kész eredményt közvetlenül fel lehet
tölteni egy web szerverre vagy a felhőbe (mint pl. Amazon S3).

Nincs szükség széles körű szerver oldali konfigurálásra, bármilyen egyszerű
fájl tárhely megfelelő. A hatékony böngésző funciók biztosítják a dinamikus
kezelés mint például eltolás és nagyítás, markerek és vektor rétegek
rárajzolása.

Az alkalmazás egy használatra kész egyszerű nézegetőt generál, mely az
OpenLayers-en és a Google Maps API-n alapul és könnyen testreszabható.

Alapfunkciók
--------------------------------------------------------------------------------

* Jól ismert Javascript API-kat támogat: OpenLayers, Google Maps API
* Nincs szükség további szerver szoftver telepítésére
* Tárolás majdnem bárhol: felhőben mint például Amazon S3 vagy bármilyen olcsó "korlátlan" web tárhely ftp hozzáféréssel
* Könnyen összeolvasztható kereskedelmi rétegekkel (Google, Bing, Yahoo) vagy OpenStreetMap
* A csempék megfelelnek az OSGEO TMS-nek (Tile Map Service Specifikáció)
* Különböző formátumú raszter adatok feldolgozási képessége: TIFF/GeoTIFF, MrSID, ECW, JPEG2000, Erdas HFA, NOAA BSB, JPEG és továbbiak...

Részletek
--------------------------------------------------------------------------------

**Honlap:** https://wiki.osgeo.org/wiki/MapSlicer

**Licenc:** New BSD License

**Forráskód:** https://github.com/geopython/mapslicer

**Program verzió:** 1.0.rc1

**Támogatott platformok:** Windows, Linux, Mac


Gyorstalpaló
--------------------------------------------------------------------------------
    
* :doc:`Gyorstalpaló dokumentáció <../quickstart/mapslicer_quickstart>`
