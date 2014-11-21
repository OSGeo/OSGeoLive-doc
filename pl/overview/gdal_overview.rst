:Author: OSGeo-Live
:Translator: Milena Nowotarska, OSGeo
:Reviewer:
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GDAL.png
  :alt: project logo
  :align: right
  :target: http://gdal.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GDAL/OGR
================================================================================

Geospatial Data Translation Tools
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Geospatial Data Abstraction Library (GDAL/OGR) dostarcza narzędzi wiersza poleceń
do przeliczania i przekształcania szerokiego spektrum danych przestrzennych
zapisanych w formatach rastrowych i wektorowych.

Narzędzia zbudowane są w oparciu o wieloplatformową bibliotekę C++ 
dostępną z poziomu wielu języków programowania. Biblioteka prezentuje aplikacjom
wywołującym ujednolicony model danych dla wszystkich obsługiwanych formatów.

GDAL/OGR jest najszerzej stosowaną geoprzestrzenną biblioteką dostępu do danych.
Zapewnia silnik dostępu do danych, wielu aplikacjom, w tym korzysta z niej 
MapServer, GRASS, QGIS, i OpenEV. Jest również wykorzystywana przez takie 
programy jak OSSIM, Cadcorp SIS, FME, Google Earth, VTP, Thuban, ILWIS, 
MapGuide and ArcGIS.

.. image:: ../../images/screenshots/1024x768/gdal_ogr_proj_overview.png
  :scale: 60 %
  :alt: GDAL supports many geodata formats
  :align: right

Główne funkcje
--------------------------------------------------------------------------------

* Narzędzia wiersza poleceń do przeliczania, odkształcania obrazów, selekcji informacji, i wielu innych powszechnych zadań
* Bardzo wydajny dostęp do danych rastrowych, wykorzystujący kaflowanie i podglądy
* Obsługa dużych plików - większych niż 4GB
* Dostęp do biblioteki za pomocą języków Python, Java, C#, Ruby, VB6 and Perl
* System obsługi układów odniesienia oparty na bibliotekach PROJ.4 oraz OGC Well Known Text

Popularne obsługiwane formaty
--------------------------------------------------------------------------------

GDAL obsługuje ponad 50 formatów danych rastrowych, OGR ponad 20 wektorowych.

Między innymi są to:

* **Raster:** GeoTIFF, Erdas Imagine, SDTS, ESRI Grids, ECW, MrSID, JPEG2000, DTED, i wicej ...
* **Wektor:** MapInfo (tab i mid/mif), ESRI Shapefile, ESRI Coverages, ESRI Personal Geodatabase, DGN, GML, PostGIS, Oracle Spatial, i wicej ...

Zaimplementowane standardy
--------------------------------------------------------------------------------

Model danych OGR jest zgodny ze specyfikacją OGC Simple Feature.

Szczegóły
--------------------------------------------------------------------------------

**Strona internetowa:**  http://www.gdal.org

**Licencja:** `X/MIT style Open Source license <http://trac.osgeo.org/gdal/wiki/FAQGeneral#WhatlicensedoesGDALOGRuse>`_

**Wersja programu:** |version-gdal|

**Systemy operacyjne:** Windows, Linux, Mac

**Interfejsy API:** C, C++, Python, Java, C#, Ruby, VB6 and Perl

**Wsparcie:** http://lists.osgeo.org/mailman/listinfo/gdal-dev, http://www.osgeo.org/search_profile

Wprowadzenie
--------------------------------------------------------------------------------
    
* :doc:`Przejdź do wprowadzenia <../quickstart/gdal_quickstart>`
