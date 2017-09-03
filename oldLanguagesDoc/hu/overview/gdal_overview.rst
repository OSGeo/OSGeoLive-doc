:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Translator: Zoltan Siki
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-GDAL.png
  :alt: projekt logo
  :align: right
  :target: http://gdal.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Projekt
  :align: right
  :target: http://www.osgeo.org

GDAL/OGR
================================================================================

Térinformatikai adatátalakító eszközök
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Geospatial Data Abstraction Library (GDAL/OGR) parancssori segédprogramokat
biztosít a raszter és vektor adatok széles körének átalakítására és 
feldolgozására.

A segédprogramok platform független C++ könyvtárra épülnek, mely számos
programnyelvből hozzáférhető. Egyetlen absztrakt adatmodellt  jelenit meg a 
könyvtár a felhasználó alkalmazás felé az összes támogatott adatformátumra.

A GDAL/OGR a legszélesebb körben használt térinformatikai adat hozzáférést 
biztosító programkönyvtár. Ez szolgáltatja az elsődlege adat hozzáférési 
motort számos alkalmazásnak ezek közé tartozik a MapServer, GRASS, QGIS és
OpenEV. Programcsomagok is használják mint például az OSSIM, 
Cadcorp SIS, FME, Google Earth, VTP, Thuban, ILWIS, MapGuide és ArcGIS.

.. image:: /images/screenshots/gdal/gdal_ogr_proj_overview.png
  :scale: 60 %
  :alt: A GDAL sok geoadat formátumot támogat
  :align: right

Alapfunkciók
--------------------------------------------------------------------------------

* Parancssori segédprogramok adatátalakításra, kép transzformálásra, rész
  kivágására és külöböző alapfeladatokra
* Nagyon hatékony raszter adat hozzáférés, a csempék és az áttekintők
  előnyeit kihasználva
* Nagy fájlok kezelése - nagyobb mint 4GB
* A könyvtár elérése Python, Java, C#, Ruby, VB6 és Perl nyelvekből
* PROJ.4-re épülő koordináta rendszer kezelés és OGC WKT koordináta rendszer
  leírások

Támogatott népszerű formátumok
--------------------------------------------------------------------------------

A GDAL több mint 50 raszter formátumot, az OGR több mint 20 vektor formátumot
támogat.

Ezek közé tartoznak:

* **Raszter:** GeoTIFF, Erdas Imagine, SDTS, ESRI Grids, ECW, MrSID, JPEG2000,
  DTED és még továbbiak ...
* **Vektor:** MapInfo (tab és mid/mif), ESRI Shapefile, ESRI Coverages,
  ESRI Personal Geodatabase, DGN, GML, PostGIS, Oracle Spatial és még továbbiak
  ...

Implementált szabványok
--------------------------------------------------------------------------------

Az OGR vektor adatmodell megfelel az OGC Simple Features specifikációnak.

Részletek
--------------------------------------------------------------------------------

**Honlap:**  http://www.gdal.org

**Licenc:** `X/MIT style Open Source license <http://trac.osgeo.org/gdal/wiki/FAQGeneral#WhatlicensedoesGDALOGRuse>`_

**Program verzió:** |version-gdal|

**Támogatott platformok:** Windows, Linux, Mac

**API Interfészek:** C, C++, Python, Java, C#, Ruby, VB6 és Perl

**Támogatás:** http://lists.osgeo.org/mailman/listinfo/gdal-dev, http://www.osgeo.org/search_profile

Gyorstalpaló
--------------------------------------------------------------------------------
    
* :doc:`Gyorstalpaló dokumentáció <../quickstart/gdal_quickstart>`
