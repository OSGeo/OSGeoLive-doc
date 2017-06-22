:Author: Gérald Fenoy
:Reviewer: Cameron Shorter, Jirotech
:Translator: Zoltan Siki
:Version: osgeo-live7.9
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-Zoo.png
  :alt: project logo
  :align: right
  :target: http://zoo-project.org/

.. image:: /images/logos/OSGeo_incubation.png
  :scale: 100
  :alt: OSGeo Incubation Project
  :align: right
  :target: http://www.osgeo.org

ZOO-Projekt
================================================================================

WPS Szerver
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A ZOO-projekt egy fejlesztő-barát Web Processing Service (WPS) keretrendszert
biztosít Web Processing Service-k létrehozására és láncolására.
A WPS hálóztos hozzáférést biztosít olyan függvényekhez, melyek térbeli 
algoritmusokat futtatnak.
A ZOO-projekt több programnyelvet támogat és két, egyszerű térbeli eszközöket 
biztosító demó alkalmazással szállítják (egy megosztott C könyvtár  és egy
Python modul), melyek a :doc:`GEOS <geos_overview>` és a 
:doc:`OGR <gdal_overview>` könyvtárakra épülnek.

A ZOO három részből áll:

.. image:: /images/screenshots/1024x768/zoo-project-demo-2.png
  :scale: 40 %
  :alt: screenshot
  :align: right

*ZOO rendszermag* : Egy hatékony szerver oldali C rendszermag, mely lehetővé 
teszi a különböző programnyelveken kódolt web szolgáltatások kezelését és
láncolását.

*ZOO szolgáltatások* : Különböző nyílt forráskódú könyvtárakra alapozott
minta web szolgáltatások növekvő gyűjteménye.

*ZOO API* : Egy szerver oldali JavaScript API, mely képes a ZOO szolgáltatások
meghívására és láncolására és egyszerűbbé teszi a fejlesztést és a láncolási
folyamatot.

A ZOO a 'WPS szolgáltatás magra' épül, mely a ZOO rendszermagot alkotja
(másnéven ZOO mag). Ez utóbbi dinamikus könyvtárakat tud betölteni és igény 
szerinti web szolgáltatásként kezelni. A ZOO mag C nyelven készül, de 
számos elterjedt programnyelvet támogat, abból a célból, hogy számos 
könyvtárhoz tudjon kapcsolódni és mindenek előtt a web szolgáltatás fejlesztő
munkáját egyszerűsítse.

A ZOO szolgáltatás egy link, mely egy meta adat fájlból (.zcfg) és az 
implementációnak megfelelő kódból áll. A meta adat fájl írja le az összes
elérhető függvényt, melyeket egy 'WPS Exec Request'-tel hívhatunk meg, és a
tervezett input/outputot is. A szolgáltatások tartalmazzák az algoritmusokat
és a függvényeket és C/C++, Fortran, Java, Python, PHP és JavaScript
nyelveken implementálhatjuk.

Alapfunkciók
--------------------------------------------------------------------------------

* Többnyelvű WPS szerver
* Egyszerű Web szolgáltatás létrehozása és közzététele
* Egyszerű WPS láncolás a ZOO API-val

Implementált szabványok
--------------------------------------------------------------------------------

* OGC WPS 1.0.0

Demó
--------------------------------------------------------------------------------

* `Demo using simple C Services Provider based GEOS and OGR libraries <http://localhost/zoo-demo/spatialtools.html>`_
* `Demo using simple Python Services Provider based GEOS and OGR libraries <http://localhost/zoo-demo/spatialtools-py.html>`_
* `Simple html form to process your request to the ZOO Kernel <http://localhost/zoo-demo/spatialtools.html>`_


Részletek
--------------------------------------------------------------------------------

**Honlap:** http://zoo-project.org

**Licenc:** MIT x/11

**Program verzió:** 1.3.0

**Támogatott platformok:** Windows, Linux, Mac

**Támogatott program nyelvek:** C, Python, Java, PHP, Fortran, Javascript

**Támogatás:** http://zoo-project.org/trac


Gyorstalpaló
--------------------------------------------------------------------------------

* :doc:`Gyorstalpaló dokumentáció <../quickstart/zoo-project_quickstart>`

