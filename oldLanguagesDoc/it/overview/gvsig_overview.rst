:Author: Jorge Sanz
:Author: Manuel Madrid
:Author: Mario Carrera
:Reviewer: Cameron Shorter, Jirotech
:Translator: Antonio Falciano
:Translator: Luca Delucchi
:Version: osgeo-live7.9
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-gvSIG.png
  :alt: project logo
  :align: right
  :target: http://www.gvsig.com/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html


gvSIG Desktop
================================================================================

Desktop GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

gvSIG_ è un'applicazione desktop GIS (Sistema Informativo Geografico) progettata 
per acquisire, immagazinare, manipolare, analizzare e implementare qualsiasi 
tipo di informazione geografica georeferenziata al fine di risolvere problemi 
di pianificazione e gestione complessi. gvSIG è noto per la sua interfaccia 
user-friendly e la capacità di accesso ai formati vettoriali e raster più comuni. 
Comprende un'ampia serie di strumenti per lavorare con l'informazione geografica 
(query, creazione di layout, geoprocessi, reti, ecc.), che rende gvSIG uno strumento 
ideale per gli utenti che lavorano in ambito geografico.

gvSIG è noto per:

* la sua capacità di integrare all'interno di una stessa vista sia dati locali che 
  remoti tramite gli standard OGC. 
* è facilmente estendibile, consentendo il continuo miglioramento dell'applicazione, 
  così come lo sviluppo di soluzioni su misura.
* è disponibile in oltre 20 linguaggi (spagnolo, inglese, tedesco, francese, 
  italiano, ecc.).
* è disponibile per i sistemi operativi Windows, Linux (esistono anche versioni
  non ufficiali per Mac OS X):

.. image:: ../../images/screenshots/1024x768/gvsig_desktop.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Caratteristiche principali
--------------------------------------------------------------------------------

* Dispone delle comuni funzionalità GIS come il caricamento dei dati, navigazione di mappa, 
  interrogazione delle informazioni alfanumeriche, misura delle distanze, cartografia 
  tematica, editazione delle legende usando gli usuali tipi di legende, etichettatura, 
  diverse tipi di selezione degli elementi, tabelle con statistiche, ordinamento, 
  relazioni tra tabelle, collegamento tra tabelle, gestione dei layout di 
  stampa, geoprocessi, strumenti CAD, processi raster, ecc.

* Interoperabilità: è in grado di lavorare con i formati di dati più comuni:

  * raster: ecw,  ENVI hdr, ERDAS img, (Geo)TIFF, GRASS, NetCDF...
  * vettoriali & CAD: shapefile, NetCDF, GML, KML, DGN, DXF, DWG
  * database: PostGIS, MySQL, Oracle, ArcSDE
  * remoti: OGC standards (WMS, WMTS, WFS, WCS), OSM, ECWP, ArcIMS

* Comprende client di ricerca per localizzare risorse di dati con una SDI (servizi di catalogo e gazeteer)
  
  * Cataloghi: Z3950, SRW, CSW (ISO/19115 e ebRIM)
  * Gazetteer: ADL, WFS, WFS-G
  
* Più di 300 geoalgoritmi tramite la libreria SEXTANTE
  
* Comprende strumenti CAD avanzati:

  * dati vettoriali: modifica, creazione e eliminazione elementi
  * riga di comando tipica dei software CAD
  * strumenti come l'help, grid, lista dei comandi, selezione complessa di elementi
  * strumenti per l'inserimento di elementi come punti, poligoni, linee, ellissi, ecc.
  * strumenti per modificare le proprietà rotazione, simmetria,...
    
* Comprende strumenti raster avanzati:

  * georeferenziazione e riproiezione
  * esportazione, ritaglio
  * tabelle dei colori, istogrammi
  * filtri, vettorizzazione
  * gestione delle piramidi e delle regioni di interesse

* 3D View

* Other features:

  * Supporto scripting
  * Potente motore di riproiezione via PROJ4
  * Importazione/esportazione di set di simboli
  * Compositore di mappe
  * Grafici
  * Strumenti avanzati della simbologia
  * Strumenti avanzati per le etichette
  * Estensione per la pubblicazione
  * Viste portabili
  * Distribuzioni personalizzate

Standard implementati
--------------------------------------------------------------------------------

Supporto client avanzato di numerosi standard dell'Open Geospatial Consortium (OGC)

* Caricamento di layer WMS, WMTS, WFS e WCS
* Esportazione/importazione di legende SLD
* Esportazione/importazione di Web Map Context (WMC)
* Ricerca su cataloghi con CSW (ISO/19115 e ebRIM)
* Ricerca su gazetteer secondo le raccomandazioni WFS-G

Dettagli
--------------------------------------------------------------------------------

**Sito web:** http://www.gvsig.com/

**Licenza:** GNU General Public License (GPL) version 2

**Versione software:** |version-gvsig|

**Piattaforme supportate:** Windows, Linux

**Supporto:** http://www.gvsig.com/en/gvsig-association, http://www.gvsig.com/en/community/mailing-lists


.. _gvSIG: http://www.gvsig.com

Guida rapida
--------------------------------------------------------------------------------
    
* :doc:`Documentazione introduttiva <../quickstart/gvsig_quickstart>`
