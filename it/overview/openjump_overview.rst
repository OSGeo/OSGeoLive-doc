:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Translator: Luca Delucchi
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-openjump.png
  :alt: project logo
  :align: right
  :target: http://www.openjump.org

OpenJUMP GIS
================================================================================

Desktop GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
OpenJUMP è un GIS desktop potente e facile da usare che permette agli utenti di 
visualizzare, moficare, analizzare e unire dati geografici.
Viene distribuito in un versione CORE e una PLUS,  con le ultime modifiche e tanti utili plugins. 
OpenJUMP e eccellente per l'editing dei dati e un rapido modellamento di funzioni GIS.

.. image:: ../../images/screenshots/1024x768/openjump-screenshot.png
  :scale: 50 %
  :alt: project screenshots
  :align: right

Caratteristiche (Principali e PlugIns*)
--------------------------------------------------------------------------------

* Formati dati

    * legge (file): GML, SHP, DXF*, MIF*, CSV+, KML+, OSM* & TIFF, ASCII grid, JPG, PNG, JPEG2000+, MrSID*, ECW+
    * legge (DB): PostGIS, ArcSDE*, Oracle*, MySQL* SpatiaLite*, H2 Spatial+, MariaDB+
    * legge (standards OGC): WKT, WMS, KML+, GeoPackage
    * scrive: GML, SHP, WKT, DXF+, CSV+, PostGIS & JPG, TIFF, ASCII grid*, SVG+
    * si noti che i formati marcati con (*) funzionano con plugin extra, con (+) sono invece parte della versione PLUS.

* Editing & Unione

    * disegnare punti, linee, poligono, multi-geometrie, collezioni di geometrie e cerchi (eventualmente unito in un unico layer)
    * aggiungere, muovere, eliminare vertici
    * ruotare, scalare, auto-completare poligoni
    * tagliare, unire, simplificare poligoni e linee
    * warping, strumenti per controllo di qualità
    * conversione di coordinate attraverso CRS

* Analisi & Interrogazione

    * funzioni per l'interrogazione spaziale e tramite attributi
    * analisi : buffer, unione, overlay, centroidi, convex hull...
    * statistiche : lunghezza, area, statistiche sul layer, statistiche sugli attributi, grafici...
    * strumenti per editing : convertitore, noder, crea poligoni, planar graph, pulizia topologica nell'edizione PLUS, ...
    * strumenti per gli attributi : join, matching*
    * SEXTANTE toolbox per l'analisi raster incluso nell'edizione PLUS

* Personalizzazione

    * internazionalizzazione (cz, de, en, es, fi, fr, hu, it, ja, pt, ta, zh)
    * fornisce una API, utilizzabile tramite script in BeanShell, Java e Python/Ython
    * Sistema di plugin (Java)
   

Standard implementati
--------------------------------------------------------------------------------

.. Writing Tip: List OGC or related standards supported.

* standards OGC supportati: GML2, SFS, WMS, KML, SLD, GeoPackage (reading);

Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://www.openjump.org

**Licenza:** GPL

**Versione Software:** 1.9.0

**Piattaforma Supportate:** Windows, Linux, Mac, Unix

**Supporto della communità:** http://www.openjump.org/support.html

**Supporto Commerciale:** http://ojwiki.soldin.de/index.php?title=Professional_Support_Page

**Page per lo scaricamento:** http://sourceforge.net/projects/jump-pilot/files/ 

Guida Rapida
--------------------------------------------------------------------------------
    
* :doc:`Documentation introduttiva <../quickstart/openjump_quickstart>`
