:Author: Jorge Sanz
:Author: Manuel Madrid
:Reviewer: Cameron Shorter, Jirotech
:Translator: Zoltan Siki
:Version: osgeo-live7.9
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-gvSIG.png
  :alt: projekt logo
  :align: right
  :target: http://www.gvsig.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Projekt
  :align: right
  :target: http://www.osgeo.org/


gvSIG Desktop
================================================================================

Asztali GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A gvSIG egy asztali térinformatikai rendszer (GIS), melyet bármilyen földrajzi
adat digitalizálásra, tárolására, kezelésére elemzésére és haználatára 
terveztek, abból a célból, hogy komplex szervezési és tervezési problémákat 
oldjanak meg. A gvSIG közismert a felhasználó barát felületéről és, hogy képes
az összes elterjedt vektoros és raszteres formátumot kezelni. A 
térinformatikai adatokkal történő munkához az eszközök egy széles tárházát
kínálja (lekérdezés, nyomtatási összeállítás, geoprocessing, hálózatok, stb.),
melyek a gvSIG-et egy ideális eszközzé változtatják a szárazföldi területen
dolgozó felhasználók számára.

A gvSIG ezekről ismert:

* helyi és OGC szabványokon keresztül távoli adatok integrálása ugyanabba a nézetbe.
* egyszerűen bővíthető, lehetővé teszi a folyamatos alkalmazás fejlesztést, mint ahogy a testreszabott megoldások fejlesztését.
* több mint 20 nyelven áll rendelkezésre (spanyol, angol, német, francia, olasz, ...).
* használható Windowson és Linuxon (van egy nem hivatalos Mac OS X verzió is).

.. image:: /images/screenshots/1024x768/gvsig_desktop.png
  :scale: 50 %
  :alt: képernyőkép
  :align: right

Alapfunkciók
--------------------------------------------------------------------------------

* Az általános GIS eszközöket biztosítja mint az adatok betöltése, térkép navigáció, térképi adatok lekérdezése mint alfanumerikus adatok, távolságmérés, tematikus katográfia, jelmagyarázat
* Általános GIS eszközöket biztosít mint adatbetöltés, térkép navigáció, alfanumerikus térképi adatok lekérdezése, távolságmérés, tematikus megjelenítés, jelmagyarázat általános stílusokkal, címke feliratok, elemek szelektálása több szelkció típussal, adattáblák statisztikával, rendezés, tábla kapcsolatok, lap összeállítás, feldolgozás eszközök, CAD, raszter felolgozás, stb.
* Interoperabilis: a legtöbb ismert adatformátummal képes dolgozni:

  * raszter : ecw,  ENVI hdr, ERDAS img, (Geo)TIFF, GRASS, NetCDF...
  * vektor & CAD: shapefile, NetCDF, GML, KML, DGN, DXF, DWG
  * adatbázisok: PostGIS, MySQL, Oracle, ArcSDE
  * távoli adatok: OGC szabványok (WMS, WMTS, WFS, WCS), OSM, ECWP, ArcIMS

* Szolgáltatás felismerő kliens, az SDI (katalógus és gazetter szolgáltatás) adat forrásainak lokalizálására

  * KAtalógusok: Z3950, SRW, CSW (ISO/19115 és ebRIM)
  * Gazetteers: ADL, WFS, WFS-G

* Több mint 300 geo algoritmus a SEXTANTE könyvtáron keresztül

* Integrált haladó CAD eszközök:

  * vektor adatok: elemek módosítása, létrehozása és törlése
  * parancs konzol, a CAD szoftverek tipikus eleme
  * eszközök mint súgó, rács, paracs stack, komplem elem szelekció
  * eszközök elemek beillesztésére mint pont, felület, vonal, ellipszis, stb.
  * eszközök elemek forgatására, átméretezésére, tükrözésére, stb.

* Integrált haladó raszter eszközök:

  * georeferálás és vetület váltás
  * export, vágás
  * look up tables, hisztogram
  * szűrők, vektorizálás
  * áttekintők és érdekes területek kezelés

* Más funkciók
  * Szkript támogatás (vektor és paszter adatokhoz is)
  * Hatékony vetület váltás a PROJ4-el
  * Szimbólum készletek import/export 
  * Térkép lap összeállítás
  * Grafikonok
  * Haladó szimbólika eszközök
  * Haladó címkéző eszközök

Implementált szabványok
--------------------------------------------------------------------------------

Számos Open Geospatial Consortium (OGC) szabvány kifinomult kliens támogatása

* WMS, WMTS, WFS és WCS rétegek betöltése
* SLD jelmagyarázat export/import
* Web térkép (WMC) export/import
* CSW keresés katalógusokban (ISO/19115 and ebRIM)
* Keresés gazetteers-ben a WFS-G ajánlás alkalmazásával

Részletek
--------------------------------------------------------------------------------

**Honlap:** http://www.gvsig.org/

**Licenc:** GNU General Public License (GPL) version 2

**Program verzió:** |version-gvsig|

**Támogatott platformok:** Windows, Linux

**Támogatás:** http://www.gvsig.org/web/organization/services


.. _gvSIG: http://www.gvsig.org

Gyorstalpaló
--------------------------------------------------------------------------------

* :doc:`Gyorstalpaló dokumentáció <../quickstart/gvsig_quickstart>`
