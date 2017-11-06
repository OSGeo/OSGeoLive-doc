:Author: Alan Boudreault, Steve Lime
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-mapserver-new.png
  :alt: project logo
  :align: right
  :target: http://mapserver.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


MapServer
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

MapServer è un motore per rappresentazione di dati geografici 
`Open Source <http://www.opensource.org>`_ scritto in C. Al di la della navigazione 
di dati GIS, Mapserver permette di create "mappe geografiche", che possone essere 
visualizzate dagli utenti attraverso il web. Per esempio, il Minnesota DNR 
`Recreation Compass <http://www.dnr.state.mn.us/maps/compass.html>`_ fornisce 
agli utenti più di 10,000 pagine, report e mappe attraverso una stessa applicazione. 
La stessa applicazione servea come un "motore di mappe" per altre parti del sito, 
fornendo contenuti spaziali dove necessari.

MapServer fu orininalmente sviluppato dal progetto ForNet dell'Università del Minnesota 
(UMN) in cooperazione con la NASA, e il Minnesota Department of Natural Resources 
(MNDNR). Dopo fu mantenuto dal progetto TerraSIP, un progetto sponsorizzato dalla NASA, 
tra la UMN e una corsorzio di enti interessati alla gestione del territorio.

MapServer è ora un progetto di `OSGeo <http://www.osgeo.org>`_, ed è mantenuto da un 
numero crescente di sviluppatori (circa 20) da tutto il monto. È supportato da un 
gruppo di diverse organizzazione che finanziano miglioramenti e mantenimento,
e amministrano con OSGeo il MapServer Project Steering Committee costituito di sviluppatori 
e altri contributori.

Caratteristiche principali
--------------------------------------------------------------------------------

.. image:: /images/projects/mapserver/mapserver.png
  :scale: 50 %
  :alt: screenshot
  :align: right

* Risultati cartografici avanzati

  * Scale dependent feature drawing and application execution
  * Etichettature degli elementi includendo mediazione delle collisioni delle etichette
  * Supporto dei font TrueType per etichettatura e simbologia
  * Elemente della mappa (barra della scala, mappa di referenza, e legenda)
  * Mappature tematica usando classi basato su espressioni logiche o regolari
  * Supporto per motori di rendering tramite driver AGG, Cairo, GD, OpenGL e altri
  * Dotazione speciale per la produzione di tile
  * Layer per maschera
  * Posizionamento preciso dei simboli
  * Multi simbologia/etichette complesse
  * Campi vettoriali
  * Spostamento etichette
  * Simbologia SVG
  * Supporto per font multipli

* Supporto per interrogazioni spaziali sofisticate

  * Identificare gli elementi attraverso attributi, punti, bounding box o geometria in uno o più layers
  * Supporto per interrogazioni su raster
  * Completamente personalizzabile, attraverso un modello di risultato
  * Generazione di output su interrogazioni basate su OGR

* Supporto per i più popolari ambienti di scripting e sviluppo

  * CGI/FastCGI
  * PHP, Python, Perl, Ruby, Java, and .NET

* Supporto multipiattaforma

  * Linux, Windows, Mac OS X, Solaris, and more

* Moltissimi formati di dati raster e vettoriali

  * Supporto nativo per ESRI shapefiles, PostGIS, ESRI ArcSDE and Oracle Spatial
  * Molti altri formati tramite GDAL e OGR

* Supporto per le proiezione delle mappe

  * Riproiezione di mappe al volo con circa 1000 delle proiezioni attraverso la libreria Proj.4

Standard implementati
--------------------------------------------------------------------------------

* Supporto di numerosi standard Open Geospatial Consortium (OGC)

  * :doc:`../standards/wms_overview` (client/server), :doc:`../standards/wfs_overview` WFS (non-transactional, client/server), WMC, :doc:`../standards/wcs_overview`, :doc:`../standards/fe_overview`, :doc:`../standards/sld_overview`, :doc:`../standards/gml_overview`, SOS, OM

* conforme al INSPIRE View Service

Demo
--------------------------------------------------------------------------------

* `Itasca <http://localhost/mapserver_demos/itasca/>`_

Documentazione
--------------------------------------------------------------------------------

* `MapServer 6.4 Documentation <../../mapserver/doc/index.html>`_

Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://www.mapserver.org/

**Licenza:** `MIT-style license <http://mapserver.org/copyright.html#license>`_

**Versione Software:** 6.4.1

**Piattaforme Supportate:** Windows, Linux, Mac

**Interfacce API:** C, PHP, Python, Perl, Ruby, Java, and .NET

**Supporto:** http://mapserver.org/community/

Guida rapida
--------------------------------------------------------------------------------
    
* :doc:`Documentazione introduttiva <../quickstart/mapserver_quickstart>`
