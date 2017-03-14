:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Translator: Zoltan Siki
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-openjump.png
  :alt: projekt logo
  :align: right
  :target: http://www.openjump.org

OpenJUMP GIS
================================================================================

Asztali GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
Az OpenJump egy egyszerűen használható, hatékony asztali térinformatikai 
program, mely lehetővé teszi a földrajzi adatok megjelenítését, szerkesztését,
elemzését és egyesítését.
Alap illeve Plusz változatban érhető el, a később hozzáadott számos hasznos 
modullal együtt.
Az OpenJump kíválló az adatszerkesztésben és a GIS függvények prototípusának 
gyors előállításában.

.. image:: ../../images/screenshots/1024x768/openjump-screenshot.png
  :scale: 50 %
  :alt: projekt képernyőkép
  :align: right

Funkciók (alapfunkciók és bővítő modulok*)
--------------------------------------------------------------------------------

* Adatformátumok

    * olvasás (fájlok): GML, SHP, DXF+, MIF*, CSV+, KML+, OSM* és TIFF,
      ASCII grid, JPG, PNG, JPEG2000+, MrSID*, ECW+
    * olvasás (adatbázis): PostGIS, ArcSDE*, Oracle*, MySQL* és SpatiaLite*
    * olvasás (OGC szabványok): WKT, WMS, KML+
    * írás: GML, SHP, WKT, DXF+, CSV+, PostGIS & JPG, TIFF, ASCII grid*, SVG+
    * megjegyzés, a (*)-gal jelőlt formátumokhoz további modul szükséges,
      a (+)-al jelöltek megtalálhatók a Plusz változatban.

* Szerkesztés és egyesítés

    * pontok, törtvonalak, felületek, multi-geometriák, geometria gyűjteményeks
      és körök megjelenítése (eziek keverhetők egy rétegen belül is)
    * töréspontok hozzáadása, mozgatása és törlése
    * forgatás, skálázás, felületek automatikus befejezése
    * törtvonalak és felületek kivágása, összefűzése és egyszerűsítése
    * kép transzformálás, minőség ellenőrző eszközök

* Elemzés és lekérdezés

    * térbeli és attribútum lekérdező funkciók
    * elemzés: övezet, unió, átfedés, centrális, konvex körvonal...
    * statisztika: hossz, terület, réteg statisztika, attribútum statisztika,
      rajzok...
    * szerkesztő eszközök: konvertáló, noder, poligonizáló, planar graph,s
      topológiai tisztítás a PLUS változatban, ...
    * attribútum átviteli eszközök: összekapcsolás, összeillesztés*
    * SEXTANTE raszter elemző eszköztár a PLUS verzióban

* Testreszabás

    * több nyelven (cz, de, en, es, fi, fr, hu, it, ja, pt, ta, zh)
    * API szkriptek a BeanShell és Java Python/Ython könyzetekhez
    * (Java) modul rendszer

Implementált szabványok
--------------------------------------------------------------------------------

.. Writing Tip: List OGC or related standards supported.

* támogatott OGC szabványok: GML2, SFS, WMS, KML and SLD;

Részletek
--------------------------------------------------------------------------------

**Honlap:** http://www.openjump.org

**Licenc:** GPL

**Program verzió:** 1.7.1

**Támogatott platformok:** Windows, Linux, Mac, Unix

**Közösségi támogatás:** http://www.openjump.org/support.html

**Kereskedelmi támogatás:** http://sourceforge.net/apps/mediawiki/jump-pilot/index.php?title=Professional_Support_Page

**Letöltés:** http://sourceforge.net/projects/jump-pilot/files/ 

Gyorstalpaló
--------------------------------------------------------------------------------
    
* :doc:`Gyorstalpaló dokumentáció <../quickstart/openjump_quickstart>`
