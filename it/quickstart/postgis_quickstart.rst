:Author: Barry Rowlingson
:Author: Astrid Emde
:Author: Regina Obe
:Reviewer: Argyros Argyridis
:Reviewer: Cameron Shorter, Jirotech
:Translator: Elena Mezzini
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. TBD Cameron Review Comment:
  For this quickstart, which targets new users who might not be familiar with
  databases or SQL, I suggest we drop section describing command line
  control of Postgres. If we do keep command line information, I suggest
  it is moved to the end of the quickstart, possibly added into "Things you
  could try".
  Instead, I think the Quickstart should cover:
    * Keep Client/Server overview
    * Create a database in pgAdmin
    * Load a dataset, probably from a shapefile
    * Do some SQL queries on the dataset
    * Use QGis to view data from PostGIS (using the existing Natural Earth data). We should be able to keep most of the existing QGis sections

.. image:: /images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://postgis.net

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
Guida rapida a PostGIS
********************************************************************************

PostGIS aggiunge funzionalità spaziali al database relazionale di PostgreSQL. Amplia
PostgreSQL in modo tale da poter immagazzinare, interrogare e manipolare i dati spaziali.
In questa guida rapida utilizzeremo 'PostgreSQL' per descrivere funzioni basilari dei database,
e 'PostGIS' per descrivere le funzionalità spaziali addizionali disponibili in PostGIS.

Questa guida rapida descrive come:

  * Creare ed interrogare un database spaziale da linea di comando e dall'interfaccia
    grafica di :doc:`Quantum GIS <../overview/qgis_overview>` .
  * Gestire i dati dall'interfaccia ``pgAdmin``.


.. contents:: Contents

Architettura Client-server
================================================================================

PostgreSQL, come molti databases, funziona come un server in un sistema client-server.
Il client fa una richiesta al server che restituisce una risposta. Questo è lo stesso modo
in cui lavora internet - il browser è un client e un server web restituisce la pagina
web. Con PostgreSQL le richieste sono nel linguaggio SQL e la risposta di solito
è una tabella di dati derivati dal database.

Nulla impedisce al server di essere nello stesso computer del client, e questo permette
di utilizzare PostgreSQL su una singola macchina. Il client si connette al server
tramite la connessione di rete interna 'loopback', e non è visibile agli altri computer
a meno che non sia configurato in modo tale da esserlo.

Creare un database spaziale
================================================================================

I clients da linea di comando funzionano attraverso una finestra di un emulatore di Terminale.
Avviare un emulatore di Terminale dal menù Application della sezione Accessories. Si aprirà
una finestra per l'inserimento di comandi Unix. Digitare::

   psql -V

e spingere invio per vedere il numero di versione di PostgreSQL.

Un singolo server PostgreSQL permette di organizzare il lavoro riarrangiandolo in database
separati. Ogni database è un'entità indipendente, con le proprie tabelle, viste, utenti, etc.
Quando ci si connette al server PostgreSQL occorre specificare un database.

Si può ottenre una lista di databases presenti nel server tramite il comando::

   psql -l

Si possono vedere diversi databases usati in alcuni progetti nel sistema.
Per l'utilizzo in questa guida rapida ne verrà creato uno nuovo.

.. tip::
   La lista utilizza un impaginatore standard unix - premere lo spazio per passare
   alla pagina successiva, :kbd:`b` per tornare indietro, :kbd:`q`
   per uscire, h per l'aiuto.

PostgreSQL fornisce un programma per la creazione di databases, ``createdb``. Prima di aggiungere le estensioni
di PostGIS, occorre creare un database. Il database si chiamerà ``demo``.
Quindi il comando è:

::

   createdb demo

.. tip::
   Solitamente si può avere l'aiuto per gli strumenti da linea di comando utilizzando l'opzione ``--help``.


Se ora si lancia ``psql -l`` si dovrebbe vedere il proprio database ``demo`` nella lista.
Non è stata ancora aggiunta l'estensione PostGIS, ma nella prossima sezione si spiegherà come farlo.

Si possono creare databases PostGIS usando il linguaggio SQL. Per prima cosa bisogna cancellare
il database appena creato usando il comando ``dropdb``, poi utilizzare il comando ``psql``
per avere un traduttore di comandi SQL:

::

  dropdb demo
  psql -d postgres

Questo procedimento connette al sistema database principale chiamato ``postgres``.
Ora si inserisce il comando SQL per creare un nuovo database:

::

 postgres=# CREATE DATABASE demo;

Ora occorre spostare la propria connessione dal ``postgres`` database al nuovo ``demo`` database.
Nel futuro ci si può connettere a quest'ultimo direttamente con il comando ``psql -d demo``,
ma qui si fornisce un modo pulito per spostarsi senza uscire dalla linea di comando ``psql``:

::

 postgres=# \c demo


.. tip::
   Premere :kbd:`CTRL` + :kbd:`C` se il prompt dei comandi psql continua ad apparire
   dopo aver premuto invio. Pulirà il proprio input e si riavvia. Probabilmente sta
   aspettando un apice di chiusura, un punto e virgola, or qualcosa.

Si dovrebbe vedere un avviso, ed il prompt dei comandi cambierà facendo vedere che
ci si è connessi al ``demo`` database.

Poi, aggiungere PostGIS 2.0:

::

 demo=# create extension postgis;


Per verificare che il comando abbia funzionato , digitare ``\dt`` per elencare le
tabelle contenute nel database. Si dovrebbe vedere qualcosa di simile a questo:

::

  demo=# \dt
               List of relations
   Schema |       Name       | Type  | Owner
  --------+------------------+-------+-------
   public | spatial_ref_sys  | table | user
  (1 row)

Questa tabella è usata da PostGIS. La tabella ``spatial_ref_sys`` contiene informazioni
sui sistemi di riferimento spaziali validi, e si possono utilizzare alcuni comandi SQL
per darci un'occhiata veloce:

::

  demo=# SELECT srid,auth_name,proj4text FROM spatial_ref_sys LIMIT 10;

   srid | auth_name |          proj4text
  ------+-----------+--------------------------------------
   3819 | EPSG      | +proj=longlat +ellps=bessel +towgs...
   3821 | EPSG      | +proj=longlat +ellps=aust_SA +no_d...
   3824 | EPSG      | +proj=longlat +ellps=GRS80 +towgs8...
   3889 | EPSG      | +proj=longlat +ellps=GRS80 +towgs8...
   3906 | EPSG      | +proj=longlat +ellps=bessel +no_de...
   4001 | EPSG      | +proj=longlat +ellps=airy +no_defs...
   4002 | EPSG      | +proj=longlat +a=6377340.189 +b=63...
   4003 | EPSG      | +proj=longlat +ellps=aust_SA +no_d...
   4004 | EPSG      | +proj=longlat +ellps=bessel +no_de...
   4005 | EPSG      | +proj=longlat +a=6377492.018 +b=63...
  (10 rows)

Ciò conferma che si tratta di un database spaziale. La vista ``geometry_columns`` ha il
compito di dire a PostGIS quali tabelle sono di tipo spaziale. Questo è il prossimo passo.



Creare una Tabella Spaziale Il metodo complicato
================================================================================

Ora che avete un database spaziale si possono fare alcune tabelle spaziali.

Per prima cosa bisogna creare una tabella nel database ordinaria per contenere alcuni dati di città.
Questa tabella ha tre campi - uno per l'ID numerico che identifica la città,
uno per il nome della città, e un altro per la colonna delle geometrie:

::

  demo=# CREATE TABLE cities ( id int4 primary key, name varchar(50), the_geom geometry(POINT,4326) );

Per convenzione questa colonna delle geometrie viene chiamata
``geom`` (la vecchia convenzione PostGIS era ``the_geom``). Questa dice a PostGIS il tipo di geometria
di ogni oggetto (punti, linee, poligoni etc), quante dimensioni
(in questo caso, se avesse 3 o 4 dimensioni bisognerebbe usare POINTZ, POINTM, o POINTZM),
e il sistema di riferimento spaziale. Per le citta sono state usate coordinate EPSG:4326.


Ora se si controlla la tabella delle città si dovrebbe vedere la nuova colonna, e si
dovrebbe ricevere l'informazione che la tabella attualmente non contiene righe.

::

  demo=# SELECT * from cities;
   id | name | the_geom
  ----+------+----------
  (0 rows)

Per aggiungere righe alla tabella si utilizzano alcune istruzioni SQL. Per inserire le geometrie nella
colonna delle geometrie utilizzare la funzione PostGIS ``ST_GeomFromText`` per convertirle
da un formato testuale che fornisce le coordinate e l'id del sistema di riferimento spaziale:

::

  demo=# INSERT INTO cities (id, the_geom, name) VALUES (1,ST_GeomFromText('POINT(-0.1257 51.508)',4326),'London, England');
  demo=# INSERT INTO cities (id, the_geom, name) VALUES (2,ST_GeomFromText('POINT(-81.233 42.983)',4326),'London, Ontario');
  demo=# INSERT INTO cities (id, the_geom, name) VALUES (3,ST_GeomFromText('POINT(27.91162491 -33.01529)',4326),'East London,SA');

.. tip::
   Utilizzare le frecce della tastiera per richiamare e modificare linee di comando precedenti.

Come si può vedere il procedimento diventa velocemente sempre più fastidioso. Fortunatamente
ci sono altri metodi per avere dati nelle tabelle PostGIS che sono molto più semplici.
Ma ora ci sono tre città nel database, e si può lavorare con queste.


Interrogazioni semplici
================================================================================

Tutte le operazioni SQL più comuni possono essere applicate per la selezione di dati da una tabella PostGIS:

::

 demo=# SELECT * FROM cities;
  id |      name       |                      the_geom
 ----+-----------------+----------------------------------------------------
   1 | London, England | 0101000020E6100000BBB88D06F016C0BF1B2FDD2406C14940
   2 | London, Ontario | 0101000020E6100000F4FDD478E94E54C0E7FBA9F1D27D4540
   3 | East London,SA  | 0101000020E610000040AB064060E93B4059FAD005F58140C0
 (3 rows)

Questo comando fornisce una versione esadecimale codificata delle coordinate, non così utile per gli umani.

Se si vuole dare nuovamente un'occhiata alle geometrie in formato WKT, si
possono usare le funzioni ST_AsText(the_geom) o ST_AsEwkt(the_geom). Si possono anche
usare ST_X(the_geom), ST_Y(the_geom) per avere il valore numerico delle coordinate:

::

 demo=# SELECT id, ST_AsText(the_geom), ST_AsEwkt(the_geom), ST_X(the_geom), ST_Y(the_geom) FROM cities;
  id |          st_astext           |               st_asewkt                |    st_x     |   st_y
 ----+------------------------------+----------------------------------------+-------------+-----------
   1 | POINT(-0.1257 51.508)        | SRID=4326;POINT(-0.1257 51.508)        |     -0.1257 |    51.508
   2 | POINT(-81.233 42.983)        | SRID=4326;POINT(-81.233 42.983)        |     -81.233 |    42.983
   3 | POINT(27.91162491 -33.01529) | SRID=4326;POINT(27.91162491 -33.01529) | 27.91162491 | -33.01529
 (3 rows)



Interrogazioni Spaziali
================================================================================

PostGIS aggiunge molte funzioni con funzionalità spaziale a
PostgreSQL. Si è già vista ST_GeomFromText che converte WKT in
geometria. La maggior parte di queste funzioni iniziano con ST (che sta per tipologia spaziale) e sono elencate  in una sezione
della documentazione di PostGIS. Ora se ne userà una per rispondere a una domanda
pratica - quanto distano tra loro queste tre Londra, in metri,
considerando una Terra sferica?

::

 demo=# SELECT p1.name,p2.name,ST_Distance_Sphere(p1.the_geom,p2.the_geom) FROM cities AS p1, cities AS p2 WHERE p1.id > p2.id;
       name       |      name       | st_distance_sphere
 -----------------+-----------------+--------------------
  London, Ontario | London, England |   5875766.85191657
  East London,SA  | London, England |   9789646.96784908
  East London,SA  | London, Ontario |   13892160.9525778
  (3 rows)

Questo comando fornisce la distanza, in metri, tra ogni coppia di città.
Da notare come la parte 'WHERE' del comando non fa restituire le distanze
tra una città e sè stessa (che sarebbero tutte pari a 0) o le distanze contrarie
rispetto a quelle della tabella qui sopra (da London, England a London, Ontario è la stessa
distanza che da London, Ontario a London, England). Provare il comando senza la prate 'WHERE'
e vedere cosa succede.

Si possono anche calcolare le distanze usando uno sferoide mediante una funzione diversa e specificando
il nome dello sferoide, il semi-asse maggiore e l'inverso dei parametri di appiattimento:

::

  demo=# SELECT p1.name,p2.name,ST_Distance_Spheroid(
          p1.the_geom,p2.the_geom, 'SPHEROID["GRS_1980",6378137,298.257222]'
          )
         FROM cities AS p1, cities AS p2 WHERE p1.id > p2.id;
        name       |      name       | st_distance_spheroid
  -----------------+-----------------+----------------------
   London, Ontario | London, England |     5892413.63776489
   East London,SA  | London, England |     9756842.65711931
   East London,SA  | London, Ontario |     13884149.4140698
  (3 rows)



Creare una mappa
================================================================================

Per creare una mappa da dati PostGIS, occorre avere un client che riesce a leggere i dati.
La maggior parte dei programmi GIS desktop open sourece possono farlo - per esempio
Quantum GIS, gvSIG, uDig. Ora si mostrerà come creare una mappa da Quantum GIS.

Avviare Quantum GIS dal menù Desktop GIS e scegliere ``Add PostGIS layers`` dal menù Layer.
I parametri per connettersi ai dati Natural Earth in PostGIS sono già definiti nel meù a tendina
Connections. Qui si possono definire nuove connessioni server, e salvare i settaggi
per richiamarle facilmente. Cliccare ``Edit`` se si vuole vedere quali sono questi parametri
per Natural Earth, oppure cliccare solo ``Connect`` per continuare:

.. image:: /images/screenshots/1024x768/postgis_addlayers.png
  :scale: 50 %
  :alt: Connect to Natural Earth
  :align: center

Verrà restituita una lista delle tabelle spaziali presenti nel database:

.. image:: /images/screenshots/1024x768/postgis_listtables.png
  :scale: 50 %
  :alt: Natural Earth Layers
  :align: center

Scegliere la tabella ne_10m_lakes e cliccare ``Add`` in basso (non ``Load`` in alto
- che carica i parametri di connessione al database), e dovrebbe essere caricato
in QGIS:

.. image:: /images/screenshots/1024x768/postgis_lakesmap.png
  :scale: 50 %
  :alt: My First PostGIS layer
  :align: center

Ora è possibile vedere una mappa dei laghi. QGIS non sa che sono laghi, quindi
potrebbe non colorarli di blu - utilizzare la documentazione di QGIS per capire
come cambiarlo. Zoommare su un gruppo famoso di laghi in Canada.


Creare una Tabella Spaziale Il metodo semplice
================================================================================

La maggior parte degli strumenti desktop di OSGeo hanno funzioni per importare dati
spaziali sottoforma di files, come ad esempio shapefiles, nei databases di PostGIS.
Nuovamente si userà QGIS per mostrare questa procedura.

Si possono importare shapefiles in QGIS mediante un semplice PostGIS Manager plugin.
Per caricarlo, andare nel menù Plugins, selezionare ``Fetch Python Plugins``.
Successivamente QGIS scaricherà la lista più recente dei plugins dal repository
(è necessaria una connessione internet funzionante per questo passaggio). Cercare il
plugin ``PostGIS Manager`` e cliccare il pulsante ``Install plugin``.

.. image:: /images/screenshots/1024x768/postgis_getmanager.png
  :scale: 50 %
  :alt: Fetch PostGIS Manager Plugin
  :align: center

Ora nel menù Database dovrebbe esserci la dicitura PostGIS Manager che permette
di avviare il gestore database. Si può anche cliccare il pulsante con il logo PostGIS
(l'elefante con il mondo) nella barra degli strumenti.

Si connetterà quindi al database Natural Earth. Lasciare
la password vuota se la chiede. Si vedrà la finestra principale del gestore. Sulla
sinistra si può selezionare le tabelle dal database e usare le schede sulla destra
per avere informazioni su di esse. La scheda Preview mostra una piccola mappa. Qui è
stato selezionato il layer ne_10m_populated_places e zoommato su una piccola isola:

.. image:: /images/screenshots/1024x768/postgis_managerpreview.png
  :scale: 50 %
  :alt: PostGIS Manager Preview
  :align: center

Ora si utilizzerà il PostGIS Manager per importare uno shapefile nel database.
Si utilizzeranno i dati della sindrome della morte improvvisa del lattante (SIDS) del
North Carolina che sono compresi in con un add-on del pacchetto R statistics.

Dal menù ``Data`` scegliere l'opzione ``Load data from shapefile``.
Cliccare il pulsante ``...`` e sfogliare fino allo shapefile ``sids.shp`` nel pacchetto
di R ``maptools`` (situato in /usr/local/lib/R/site-library/):

.. image:: /images/screenshots/1024x768/postgis_browsedata.png
  :scale: 50 %
  :alt: Find the shapefile
  :align: center

Lasciare tutto il resto come è e cliccare ``Load``

.. image:: /images/screenshots/1024x768/postgis_importsids.png
  :scale: 50 %
  :alt: Import a shapefile
  :align: center

Lo shapefile dovrebbe essere importato in PostGIS senza errori. Chiudere PostGIS manager e
tornare alla finestra principale di QGIS.

Ora caricare i dati SIDS nella mappa usando l'opzione 'Add PostGIS Layer'.
Riarrangiando e ricolorando un po' i layers, si dovrebbe essere in grado di produrre
una mappa coropletica dei contatori della sindrome della morte improvvisa del lattante nel North Carolina:

.. image:: /images/screenshots/1024x768/postgis_sidsmap.png
  :scale: 50 %
  :alt: SIDS data mapped
  :align: center


Conoscere pgAdmin III
================================================================================

Si può utilizzare il client database grafico ``pgAdmin III`` dal menù Databases per
interrogare e modificare database non-spaziali. Questo è il client ufficiale per
PostgreSQL, e permette di utilizzare SQL per manipolare le tabelle dei dati.
pgAdmin III si può trovare ed essere lanciato dalla cartella Databases, presente
in OSGeo Live Desktop.

.. image:: /images/screenshots/1024x768/postgis_pgadmin_main_window.png
  :scale: 50 %
  :alt: pgAdmin III
  :align: center

Qui, c'è l'opzione per creare una nuova connessione al server PostgreSQL, o ad un server esistente.
In questo caso, ci si connette al server predefinito ``local``.


Una volta stabilita la connessione, si può vedere l'elenco dei databases già esistenti nel sistema.

.. image:: /images/screenshots/1024x768/postgis_adminscreen0.png
  :scale: 50 %
  :alt: pgAdmin III
  :align: center

La "X" rossa sull'immagine della maggior parte dei databases, indica che non ci si
è mai connessi a nessuno di essi (si è connessi solo al database di default ``postgres``).
A questo punto si possono vedere solo i databases presenti nel sistema. Ci si può connettere,
con un doppio click sul nome del database. Farlo per il database natural_earth2.

Ora si può vedere come la X rossa sia scomparsa e sia comparso un "+" sulla sinistra.
Cliccandolo apparirà uno schema ad albero, che mostra il contenuto del database.

Andare al sottinsieme ``schemas``, ed espanderlo. Successivamente espandere
lo schema ``public``. Esplorando ed espandendo le
``Tables``, è possibile vedere tutte le tabelle contenute in questo schema.

.. image:: /images/screenshots/1024x768/postgis_adminscreen1.png
  :scale: 50 %
  :alt: pgAdmin III
  :align: center

Eseguire un'interrogazione SQL da pgAdmin III
================================================================================
pgAdmin III, permette di eseguire interrogazioni su un database relazionale.

Per eseguire un'interrogazione sul database, occorre cliccare il pulsante ``SQL`` dalla
barra degli strumenti principale (quella con la lente di ingrandimento gialla).

Si andrà a calcolare il rapporto della SIDS rispetto alle nascite per ogni città nel 1974.
Dopodichè si ordineranno i risultati, basandosi sui rapporti calcolati. Per fare ciò,
bisogna eseguire la seguente interrogazione (inserirla nell'editor di testo della finestra SQL):

select name, 1000*sid74/bir74 as rate from sids order by rate.

Successivamente, cliccare il pulsante a forma di freccia verde, che punta verso destra (esegui interrogazione).

.. image:: /images/screenshots/1024x768/postgis_adminscreen2.png
  :scale: 50 %
  :alt: pgAdmin III
  :align: center


Cose da provare
================================================================================

Qui ci sono alcuni esercizi aggiuntivi da provare:

#. Provare ulteriori funzioni spaziali come ``st_buffer(the_geom)``, ``st_transform(the_geom,25831)``,
   ``st_x(the_geom)`` - si può trovare la documentazione completa al link http://postgis.net/documentation/

#. Esportare le tabelle come shapefiles con ``pgsql2shp`` da linea di comando.

#. Provare ``ogr2ogr`` da linea di comando per importare/esportare i dati nel/dal proprio database.


Prossimo passo?
================================================================================

Questo è solo il primo passo lungo la strada per usare PostGIS. Ci sono molte più funzionalità
che si possono provare.

Home page del progetto PostGIS

 http://postgis.net

Documentazione di PostGIS

 http://postgis.net/documentation/
