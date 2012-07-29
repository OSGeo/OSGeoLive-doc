********************************************************************************
SpatiaLite: presentazione veloce
********************************************************************************

SpatiaLite rappresenta l'estensione Spatial per il motore di database SQLite.

Questa presentazione veloce descrive come aprire un database sia usando il tool a riga di comando che l'applicazione GUI.


Eseguire spatialite
================================================================================

* Aprite una console e quindi aprite un database campione con **spatialite**::

   spatialite /home/user/data/spatialite/trento.sqlite
   
* Comandi utili per l'interfaccia a riga di comando::

   .help
   .tables
   .quit

* Alcuni esempi di interrogazioni spaziali::

   SELECT lc.NOME, lc.NOME_PROV, lc.COM, mh.Perimeter
        FROM LocalCouncils AS lc, MunicipalHalls AS mh
        WHERE CONTAINS(lc.Geometry,mh.Geometry) AND lc.NOME LIKE 'VILLA%'
        ORDER BY lc.NOME;
   .headers ON
   SELECT COMUNE, LOCALITA, Area(Geometry)/1000000 AS "Area Sq.km."
        FROM PopulatedPlaces ORDER BY "Area Sq.km." DESC LIMIT 10 ;
   SELECT lc.NOME AS "Provence Name", X(mh.Geometry) AS X_COORD, Y(mh.Geometry) AS Y_COORD
        FROM LocalCouncils AS lc, MunicipalHalls AS mh
        WHERE mh.COMU=lc.COM ORDER BY "Provence Name" LIMIT 10;


Come creare un nuovo database con **spatialite-gui**
================================================================================
* Lanciare **spatialite_gui** dalla cartella Databases sul Desktop
* Selezionare :menuselection:`File --> Creating a new SQLite DB`
* Da `Esplora altre cartelle` posizionarsi sulla cartella /home/user/data/spatialite/. Digitare un nome come "Test.sqlite" e premere Salva.

Come aprire un database già esistente con **spatialite-gui**
================================================================================

* Premere il bottone "Disconnecting current SQLite DB"
* Premere il bottone "Connect existing SQLite DB"
* Posizionarsi sulla cartella /home/user/data/spatialite e selezionare trento.sqlite
* Premere il tasto destro del mouse sulla tavola MunicipalHallsView e selezionare "Show Columns"
* Premere il tasto destro del mouse sulla tavola PopulatedPlaces e selezionare "Edit table rows"
* Digitare nel pannello superiore SQL::

   SELECT NOME, X(Geometry) AS Longitude, Y(Geometry) AS Latitude
        FROM "MunicipalHallsView"
        WHERE NOME_PROV LIKE "BRESCIA";

  e quindi premere il bottone "Execute SQL" sulla destra

 
Eseguire spatialite-gis
================================================================================

* Lanciare spatialite-gis dalla cartella Desktop GIS sul Desktop
* Premere il bottone "Connecting existing SQLite DB" e connetersi a /home/user/data/spatialite/trento.sqlite

Dovrebbe apparire una mappa della Provincia di Trento

- Premere il tasto destro del mouse sul layer Highways e selezionare :menuselection:`Hide`
- Premere il tasto destro del mouse sul layer LocalCouncilsTrento e selezionare :menuselection:`Layer Configuration->Classify` poi scegliere "Shape Area" per la colonna. Impostare 4 Classi e premere i bottoni Min e Max per selezionare un colore chiaro ed uno scuro. Apparirà una mappa tematica per le varie aree provinciali.
- Per modificare il colore del contorno premere il tasto destro del mouse su LocalCouncils e selezionare :menuselection:`Layer configuration->Graphics` quindi impostare un colore differente per Border Graphics.
- Ingrandire leggermente la mappa. Premere il bottone destro del mouse sul layer PopulatedPlaces e selezioanre :menuselection:`Indentify on`. Ora battete un click su una qualsiasi Località Abitata per consultare gli attributi corrispondenti.


Altre cose da provare
================================================================================
Ecco alcuni esercizi aggiuntivi che puoi provare da solo:

* Ispazionare le geometrie con spatialite-gui
* Aprire ed editare qualche layer SpatiaLite tramite QGIS


Prossimo passo ?
================================================================================

Per imparare di più su SpatiaLite, un punto di inizio è  `SpatiaLite project page`_.

.. _`SpatiaLite project page`: https://www.gaia-gis.it/fossil/libspatialite/index

assicuratevi di leggere il tutorial `Spatialite cookbook`_

.. _`Spatialite cookbook`: http://www.gaia-gis.it/gaia-sins/spatialite-cookbook/index.html