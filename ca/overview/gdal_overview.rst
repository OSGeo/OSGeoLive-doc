:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Anna Muñoz
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: logo del projecte
  :align: right
  :target: http://gdal.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: Projecte OSGeo
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GDAL/OGR
================================================================================

Eines per a la lectura/escriptura de dades geoespacials
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Geospatial Data Abstraction Library (GDAL/OGR) proporciona un conjunt d'utilitats
en línea de comandes per a la traducció i el procés d'un ampli ventall de formats
de dades geoespacials, tant ràster com vectorial.

Aquestes eines es basen en una llibreria C++, multiplataforma, accessible des d'un gran nombre de llenguatges de programació.
Com llibreria, presenta un únic model abstracte de dades per a tots els formats suportats.

GDAL/OGR és la llibreria d'accés a dades geoespacials d'ús més comú. 
Per a moltes aplicacions és el motor principal d'accés a dades, incloent MapServer, GRASS, QGIS, i OpenEV.
Altres aplicacions com: OSSIM, Cadcorp SIS, FME, Google Earth, VTP, Thuban, ILWIS, MapGuide i ArcGIS també la utilitzen.

.. image:: ../../images/screenshots/1024x768/gdal_ogr_proj_overview.png
  :scale: 60 %
  :alt: GDAL supports many geodata formats
  :align: right
 
  
Característiques Principals
--------------------------------------------------------------------------------

* Eines en línea de comandes per a la conversió de dades, transformació d'imatges, extracció de dades, així com altres tasques habituals.
* Accés molt eficient a dades ràster, aprofitant la generació de tiles i la generalització.
* Suport per arxius grans de més de 4GB.
* Accés a les llibreries des de Python, Java, C#, Ruby, VB6 i Perl.
* Motor de Sistema de Coordenades basat en PROJ.4 i OGC WKT (Well Known Text).

Suport de Formats Populars
--------------------------------------------------------------------------------

GDAL suporta més de 50 formats ràster, i OGR suporta més de 20 formats vectorials.

Aquests inclouen:

* **Raster:** GeoTIFF, Erdas Imagine, SDTS, ESRI Grids, ECW, MrSID, JPEG2000, DTED, i més ...
* **Vector:** MapInfo (tab i mid/mif), ESRI Shapefile, ESRI Coverages, ESRI Personal Geodatabase, DGN, GML, PostGIS, Oracle Spatial, i més ...

Estàndards implementats
--------------------------------------------------------------------------------

El model de dades vectorial d'OGR segueix l'especificació Simple Features de l'OGC.


Detalls
--------------------------------------------------------------------------------

**Lloc web:**  http://www.gdal.org

**Llicència:** `X/MIT style Open Source license <http://trac.osgeo.org/gdal/wiki/FAQGeneral#WhatlicensedoesGDALOGRuse>`_

**Versió del programari:** 1.8.0

**Plataformes suportades:** Windows, Linux, Mac

**Interfícies de desenvolupament:** C, C++, Python, Java, C#, Ruby, VB6 and Perl

**Suport:** http://gdal.osgeo.org/#index_maillist, http://www.osgeo.org/search_profile


Guia d'inici ràpid
--------------------------------------------------------------------------------
    
* :doc:`Documentació de la guia d'inici ràpid <../quickstart/gdal_quickstart>`
