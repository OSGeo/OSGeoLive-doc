:Author: Sergio Baños Calvo
:Reviewer: Cameron Shorter, Jirotech
:Translator: Luca Delucchi
:Version: osgeo-live7.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-Kosmo.png
  :alt: project logo
  :align: right
  :target: http://www.opengis.es/index.php?lang=en

Kosmo Desktop
================================================================================

Desktop GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Kosmo - Desktop è una applicazione GIS desktop user friendly che permette di 
esplorare, modificare ed analizzare dati spaziali da una moltitudine di database, 
e formati vettoriali e raster.

Kosmo - Desktop segue gli standards OGC e fornisce un'eccellente integrità topologica. 
La sua archittettura a plugin permette che sia facilmente personalizzazione per specifici scopi.

.. image:: ../../images/screenshots/1024x768/kosmo.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

Caratteristiche principali
--------------------------------------------------------------------------------

Formati Supportati:

* Formati file vettoriali: Shapefiles, GML, DXF, DWG, DGN, CSV (attraverso una estensione)
* Database vettoriali: PostgreSQL + PostGIS, Oracle, MySQL
* Formati file Raster: ECW (*), MrSID (*), (Geo)Tiff, Erdas IMG, ENVI hdr, JPG, GIF, PNG, BMP
* Servizi OGC: WMS 1.0.0/1.1.0/1.3.0, WFS 1.0.0/1.1.0 (incluso WFS-T)

Caratteristiche chiave:

* Interfaccia grafica User friendly, incentrata su una curva di apprendimento facile
* Disponibile in 12 langue (Inglese, Spagnolo, Italiano, Tedesco, Croato, Ceco, Russo, Slovacco, Catalano, Basco, Portoghese Brasiliano, Finlandese, Portuguese)
* Funzionalità avanzate di editing:

  * Diversi strumenti di disegno: disegna punto, linea, poligono, ...
  * Strumenti stile CAD: ruota, ruota tramite angolo, simmetria, perpendicoli, parallele, ... (tramite un'estensione)
  * Diversi modalità di snap: ai vertici, a vertici e linee, ai punti interni di un segmento, al centroide, alla griglia, ...
  * Modalità geometry tracking
* Modulo di stampa avanzato basato sulla suite OpenOffice (attraverso una estensione)
* Regole di consistenza topologica: pre/durante/post modifiche
* Strumenti di validazione e pulizia topologica (intersezione/eliminazione/pulizia)
* Estensione Geoprocessing wizard: buffer/dissolve/merge/clip/intersection/spatial join/difference (attraverso una estensione)
* Strumento georeferenziazione dei raster (attraverso una estensione)
* Integrato Sextante 1.0 (attraverso un'estensione)
* Operazioni di importazione/esportazione massive (tramite un'estensione)

.. note::
  (*) I formati raster ECW e MrSID richiedono un ulteriore pacchetto per funzionare: a causa di
  restrizione della licenza le loro librerie non possono essere distribuite

Standard implementati
--------------------------------------------------------------------------------

* Web Map Service (WMS) 1.0.0/1.1.0/1.3.0
* Web Feature Service (WFS) 1.0.0/1.1.0
* Styled Layer Descriptor (SLD) 1.0/1.1 (importazione/esportazione)


Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://www.opengis.es/index.php?lang=en

**Licenza:** GNU General Public License (GPL) version 2

**Versione Software:** 3.1

**Piattaforme Supportate:** Windows, Linux

**Interfacce API:** Java

**Supporto Commerciale:** http://www.saig.es/index.php?lang=en


Guida rapida
--------------------------------------------------------------------------------
    
* :doc:`Documentazione introduttiva <../quickstart/kosmo_quickstart>`
