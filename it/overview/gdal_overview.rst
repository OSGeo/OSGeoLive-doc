:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
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

Strumenti di conversione di dati geospaziali
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Geospatial Data Abstraction Library (GDAL/OGR) fornisce strumenti per linea di comando
per convertire e trattare una vasta gamma di formati geospaziali di dati raster 
e vettoriali.

Gli strumenti sono basati su una libreria C++, multipiattaforma, accessibile
attraverso numerosi linguaggi di programmazione. Come libreria, offre 
un'unico modello astratto dei dati per le applicazione che la richiamano per 
tutti i formati supportati.

GDAL/OGR è la libreria più comunemente usata per l'accesso ai dati geospaziali. Fornisce
il motore primario di accesso ai dati per molte applicazioni includendo MapServer,
GRASS, QGIS, and OpenEV. È anche utilizzata da pacchetti come OSSIM,
Cadcorp SIS, FME, Google Earth, VTP, Thuban, ILWIS, MapGuide e ArcGIS.

.. image:: ../../images/screenshots/1024x768/gdal_ogr_proj_overview.png
  :scale: 60 %
  :alt: GDAL supporta molti formati di geodati
  :align: right

Caratteristiche Principali
--------------------------------------------------------------------------------

* Strumenti da linea di comando per conversione dei dati, image warping, subsetting, e diversi e altri comuni tasks
* Altamente efficiente l'accesso di dati raster, approfittando dei tiling e overviews
* Supporto per grandi file - più larghi di 4GB
* Accesso alla libreria da Python, Java, C#, Ruby, VB6 and Perl
* Motore per il sistema di coordinate costruito su PROJ.4 e sulle descrizioni del sistema di coordinate OGC Well Known Text

Formati popolari supportati
--------------------------------------------------------------------------------

GDAL supporta più di 50 formati raster, e OGR più di 20 formati vettoriali.

Questi includono:

* **Raster:** GeoTIFF, Erdas Imagine, SDTS, ESRI Grids, ECW, MrSID, JPEG2000, DTED, e altri ...
* **Vettoriali:** MapInfo (tab and mid/mif), ESRI Shapefile, ESRI Coverages, ESRI Personal Geodatabase, DGN, GML, PostGIS, Oracle Spatial, e altri ...

Standards implementati
--------------------------------------------------------------------------------

Il modello dati vettoriale OGR è compatibile con le specifiche OGC Simple Features.

Dettagli
--------------------------------------------------------------------------------

**Sito Web:**  http://www.gdal.org

**Licenza:** `X/MIT style Open Source license <http://trac.osgeo.org/gdal/wiki/FAQGeneral#WhatlicensedoesGDALOGRuse>`_

**Versione Software:** 1.7.0 (1.9.1)

**Piattaforme Supportate:** Windows, Linux, Mac

**Interfacce API:** C, C++, Python, Java, C#, Ruby, VB6 and Perl

**Supporto:** http://lists.osgeo.org/mailman/listinfo/gdal-dev, http://www.osgeo.org/search_profile

Presentazione veloce
--------------------------------------------------------------------------------
    
* :doc:`Documentazione introduttiva <../quickstart/gdal_quickstart>`
