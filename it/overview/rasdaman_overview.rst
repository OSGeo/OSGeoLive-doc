:Author: Peter Baumann
:Author: Jinsongdi Yu
:Author: Dimitar Misev
:Author: Michael Owonibi
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Luca Delucchi
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-rasdaman.png
 :scale: 100 %
 :alt: project logo
  :align: right
  :target: http://rasdaman.org

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100
  :alt: OSGeo Incubation Project
  :align: right
  :target: http://www.osgeo.org

Rasdaman
================================================================================

Database Raster Multi-Dimensionale
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Rasdaman estende database relazionali standard per garantire l'archiviazione e il recupero dei dati multi-dimensionali raster (es., arrays) di illimitata dimensione usando un liguaggio di interrogazione dei raster stile SQL con al
Rasdaman extends standard relational databases to provide storage and retrieval of multi-dimensional raster data (i.e., arrays) of unlimited size using an SQL-style raster query language con alte afficaci ottimizzazioni lato server. I dati sono archiavati in un database PostgreSQL, thereby achieving tight information integration. Un driver di rasdaman fa parte della libreria GDAL (Geospatial Data Abstraction Library) per i dati geospaziali, una integrazione con MapServer è disponibile in versione beta.
Le interfacce con cui si può accedere sono OGC WCS, WCPS e WPS, così come API C++ e Java oltre al linguaggio di interrogazione rasdaman.

La tecnologia rasdaman e stabile e matura,  utilizzato in produzione da più di 10 anni; l'Istituto Geografico Nazionale Francese usa rasdaman su una dozina di Terabyte di immagine aeree. Alla confernza ACM Principles of Database Systems nel 2007, l'esperto di database raster Rona Machlin caratterizza rasdaman come "l'implementazione più completa di un tale sistema".

.. image:: ../../images/screenshots/1024x768/rasdaman-collage.png
  :scale: 50 %
  :align: right

Caratteristiche Principali
--------------------------------------------------------------------------------

    * multi-divensionalità reale - da 1-D passando 2-D fino 3-D, 4-D, ed oltre
    * potente e flessibile linguaggio di interrogazione per attività quali visualizzazione, classificazione, convolution, aggregazione, e molte altre operazioni geospaziali
    * indicizzazione spaziale e una tassellatura (tiling) adattiva per un rapido accesso ai dati
    * flusso di tile per scalabilità e prestazioni elevate su hardware moderato
    * supporto multi-utente support attraverso server multiplexing
    * piena integrazione di informazione dei dati raster con tutti gli altri dati geografici nel database PostgreSQL

Standard Implementati
--------------------------------------------------------------------------------

    * OGC WCS 2.0, WCPS 1.0, WPS 1.0

Dettagli
--------------------------------------------------------------------------------

**Sito Web:** www.rasdaman.org

**Licenza:**

* clients and petascope: GNU Lesser General Public License (LGPL) version 3
* server engine: GNU General Public License (GPL) version 3

**Versione Software:** 8.3.1

**Piattaforme Supportate:** Linux, Mac, Solaris

**Interfacce API:** rasql, C++, Java; OGC-based WCS, WCPS, WCS-T, and WPS interfaces

**Supporto:**  www.rasdaman.com

Presentazione Veloce
--------------------------------------------------------------------------------

* :doc:`Documentazione introduttiva <../quickstart/rasdaman_quickstart>`


