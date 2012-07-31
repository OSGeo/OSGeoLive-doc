:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Version: osgeo-live4.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-QGIS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.qgis.org

********************************************************************************
Breve introduzione all'uso di QGIS 
********************************************************************************

Quantum GIS (QGIS) è un client GIS Desktop user friendly ed open-source per la
gestione, visualizzazione, modifica, analisi di dati geografici
e per la composizione di mappe per la stampa. 

Questa breve introduzione all'uso descrive come:

  * aggiornare un progetto QGIS esistente
  * creare un nuovo progetto QGIS con un semplice layer vettoriale


Modificare un progetto QGIS
================================================================================

#. Cliccare :menuselection:`Desktop --> Desktop GIS --> Quantum GIS`.

#. Selezionare :menuselection:`File --> Apri progetto...` dalla barra del menu.

#. Selezionare :file:`QGIS-NaturalEarth-Example.qgs` e cliccare press :guilabel:`Open`.

   * Dovreste vedere una mappa del mondo.

#. Attivare **10m_populated_places_simple** nella legenda dei layer

   * Il layer "Populated places" viene visualizzato:

     .. image:: ../../images/screenshots/1024x768/qgis.png
        :scale: 50 %

#. Doppio click su **10m_rivers_lake_centerlines** nella legenda.

#. Cambiare il colore in un tono diverso di blu.

#. Cliccare :guilabel:`OK`.

   * Ora i fiumi sono visualizzati con un nuovo colore.

Creare un nuovo progetto QGIS
================================================================================

#. Selezionare :menuselection:`File --> Nuovo progetto`.

#. Selezionare :menuselection:`Layer --> Aggiungi vettore...`.

#. Selezionare il file :file:`/home/user/data/natural_earth/10m_admin_0_countries.shp`.

#. Cliccare :guilabel:`Open`.

   * Dovreste vedere le nazioni del mondo.

Connettersi ad un database spaziale PostGIS
================================================================================

#. Selezionare :menuselection:`File --> Nuovo progetto`.

#. Selezionare :menuselection:`Layer --> Aggiungi vettore PostGIS ...`.

   * Sono disponibili i database Natural Earth e OpenStreetMap.

#. Selezionare OpenStreetMap e cliccare :guilabel:`Connetti`.

   * Apparirà una lista di tabelle del database.

#. Selezionare ``planet_osm_roads`` e cliccare su :guilabel:`Aggiungi`.

   * Riferirsi a :doc:`PostGIS Quickstart <postgis_quickstart>` per informazioni più dettagliate.

Usare gli strumenti GRASS
================================================================================

#. Selezionare :menuselection:`File --> Nuovo progetto`.

#. Selezionare :menuselection:`Plugins --> Gestione plugins...`.

#. Scrivere ``grass`` nella casella Filtro e selezionare il plugin `GRASS`, quindi cliccare su :guilabel:`Ok`.

   * Appariranno una nuovo menu `GRASS` nel menu `Plugins` ed una nuova barra degli strumenti.

#. Selezionare :menuselection:`Plugins --> GRASS --> Apri mapset`.

   * Il database GRASS viene automaticamente impostato sul percorso `~/grassdata`.

#. Selezionare the `nc_basic_smp` come Location e `user1` come mapset, quindi cliccare su :guilabel:`Ok`.

#. Selezionare :menuselection:`Plugins --> GRASS --> Aggiungi raster GRASS`.

   * Selezionare dal mapset PERMANENT la mappa `elevation_shade` e cliccare su :guilabel:`Ok`.

#. Selezionare :menuselection:`Plugins --> GRASS --> Aggiungi vettore GRASS`.

   * Selezionare dal mapset PERMANENT la mappa `elevation` e cliccare su :guilabel:`Ok`.

   * Doppio click su `elevation` nella legenda ed impostare la trasparenza su 65%.

#. Selezionare :menuselection:`Plugins --> GRASS --> Aggiungi vettore GRASS`.

   * Selezionare dal mapset PERMANENT la mappa `roadsmajor` e cliccare su :guilabel:`Ok`.

E' possibile, inoltre, accedere ai potenti moduli GRASS per l'analisi spaziale.

.. maybe describe a raster processing task instead of a NVIZ one?

#. Selezionare :menuselection:`Plugins --> GRASS --> Apri strumenti GRASS`.

   * Apparirà una lunga lista di strumenti di analisi.

#. Scrivere ``nviz`` nella casella Filtro e selezionare `nviz - Visualizzatore 3D (NVIZ)`.

#. Nella scheda del modulo NVIZ, selezionare `elevation` come nome del raster per l'elevazione e `roadsmajor` come vettore di overlay, quindi cliccare su :guilabel:`Run`.

#. Si aprirà una nuova finestra NVIZ. Massimizzarla, impostare `z-exag` a 10.0, `perspective` a 15.0, `height` a 3500 e trascinare verso sinistra il punto di vista.

#. Selezionare :menuselection:`Visualize --> Raster surfaces` ed impostare la risoluzione `fine` ad 1.

Usare la barra degli strumenti Sextante
================================================================================

#. Selezionare :menuselection:`Plugins --> Gestione plugins...`.

#. Scrivere ``sextante`` nella casella Filtro e selezionare il plugin `SEXTANTE`. Cliccare su :guilabel:`Ok`.

   * Apparirà un nuovo menu ed una nuova barra deglistrumenti.

#. Selezionare :menuselection:`SEXTANTE --> SEXTANTE Toolbox`.

   * Apparirà a destra una nuova barra ricca di strumenti di analisi.

Usare il plugin OpenStreetMap
================================================================================

#. Aprire un terminale dal menu Xubuntu :menuselection:`Applicazioni --> Accessori`.

   * Fare una copia dei dati OSM nella cartella `home`:

::

  cp data/osm/feature_city_CBD.osm.bz2 .
  bzip2 -d feature_city_CBD.osm.bz2

#. In QGIS, selezionare :menuselection:`File --> Nuovo progetto`.

#. Selezionare :menuselection:`Plugins --> Gestione plugins...`.

#. Scrivere ``open`` nella casella Filtro e selezionare il plugin  `OpenStreetMap`. Cliccare su :guilabel:`Ok`.

   * Apparirà un nuovo menu `Web` ed una nuova barra di strumenti.

#. Selezionare :menuselection:`Web --> OpenStreetMap --> Carica OSM da file`.

#. Selezionare il file `feature_city_CBD.osm` appena copiato nella cartella `home`.

#. Attivare le caselle `name`, `highway`, e `amenity`.

#. Selezionare il visualizzatore :guilabel:`Medium scale` e cliccare su :guilabel:`Ok`.

Per proseguire
================================================================================

Nella collezione `OSGeo-Live QGIS tutorials`_ sono disponibili tutorial sulle funzionalità più avanzate di QGIS.

Per approfondire la conoscenza di QGIS, visitare la pagina di `Documentazione`_ sul sito del progetto.

OSGeo-Live contiene `A Gentle Introduction to GIS`_  e la `Guida Utente QGIS`_.

.. _`OSGeo-Live QGIS tutorials`: ../../qgis/tutorials/
.. _`Documentazione`: http://www.qgis.org/en/documentation.html http://qgis.org/documentazione.html?lang=it
.. _`A Gentle Introduction to GIS`: ../../qgis/qgis-1.0.0_a-gentle-gis-introduction_en.pdf
.. _`QGIS User Guide`: ../../qgis/qgis-1.7.0_user_guide_it.pdf
