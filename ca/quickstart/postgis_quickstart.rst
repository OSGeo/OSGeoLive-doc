:Author: Barry Rowlingson
:Author: Astrid Emde
:Author: Cameron Shorter
:Translator: Anna Muñoz Bollas
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://postgis.org/


********************************************************************************
Guia d'inici ràpid de PostGIS
********************************************************************************

PostGIS afegeix suport espacial a la base de dades relacional PostgreSQL. 
Li dóna a PostgreSQL la capacitat per emmagatzemar, consultar i manipular dades espacials.
En aquesta guia d'inici ràpid s'utilitza 'PostgreSQL' per referir-se a les funcions generals de la base de dades, 
i 'PostGIS' quan es descriu la funcionalitat espacial addicional que li proporciona aquesta extensió.

Arquitectura client-servidor
================================================================================

PostgreSQL, igual que moltes altres bases de dades, funciona com un servidor en un sistema client-servidor.
El client realitza una petició al servidor i rep una resposta. Treballa de la 
mateixa manera que Internet - el navegador web de l'usuari és el client i el servidor web li envia
la pàgina web que ha sol·licitat. Amb PostgreSQL les peticions es realitzen en llenguatge SQL i la
resposta és generalment una taula procedent de la base de dades.

No hi ha res que impedeixi que el servidor estigui en el mateix equip que el client, 
de manera que l'usuari pot usar PostgreSQL en una sola màquina. El client es connecta amb el servidor
a través de la connexió a la xarxa interna "loopback", i no és visible per altres equips
llevat que es configuri així.


Creació d'una base de dades espacial
================================================================================

Un únic servidor PostgreSQL permet organitzar el treball en bases de dades diferents. 
Cada base de dades actua de manera independent, amb les seves pròpies taules, vistes, usuaris, etc. 
Per tant, quan s'estableix una connexió a un servidor PostgreSQL el primer que s'ha de fer és especificar la base de dades.

Es pot obtenir un llistat de les bases de dades disponibles en el servidor amb la comanda ``psql -l``. 
Per defecte, es poden veure diverses bases de dades creades durant la instal·lació. 
A continuació, seguint aquesta guia d'inici ràpid, crearem una nova base de dades.

PostgreSQL proporciona una utilitat per a la creació de bases de dades, ``createdb``. 
Atès que cal crear una base de dades espacial farem servir l'extensió PostGIS, per aquest motiu cal 
indicar quina és la plantilla per crear la base de dades. 
Anomenarem ``demo`` a la nova base de dades que anem a crear. La comanda per fer-ho és la següent:

::

   createdb -T template_postgis demo

.. tip:: Generalment es pot accedir a l'ajuda per a les eines en línia de comandes fent servir ``--help``.


Si ara s'executa ``psql-l``, la nova base de dades ``demo`` hauria d'aparèixer a la llista.

També es poden crear bases de dades PostGIS fent servir el llenguatge SQL. En primer lloc anem a eliminar
la base de dades que acabem de crear amb la comanda ``dropdb``. A continuació, utilitzarem l'ordre ``psql``
per obtenir un intèrpret de comandes SQL:

:: 

  dropdb demo
  psql -d postgres
 
D'aquesta manera es connectarà a la base de dades anomenada ``postgres``, que és una base de dades del sistema que
tots els servidors haurien de tenir. A continuació, caldrà introduir el següent codi SQL per crear la nova base de dades:

:: 

 postgres=# CREATE DATABASE demo TEMPLATE=template_postgis;

Ara canviarem la connexió de la base de dades ``postgres`` a la nova base de dades ``demo``.
En el futur es pot connectar directament escrivint ``psql-d demo``. Altrament es pot fer de 
manera directa dintre de la línia de comandes ``psql`` amb la següent ordre: 

::

 postgres=# \c demo

.. tip:: Premeu Ctrl-C, si l'indicador de psql segueix apareixent després de prémer la tecla return. D'aquesta manera netejarà la seva entrada i tornarà a començar. És probable que el sistema estigui esperant que introdueixi un signe de tancar cometes, punt i coma o algun altre signe. 

A continuació veureu un missatge informatiu, i el prompt canviarà per mostrar-li que ja està connectat a la base de dades ``demo``. 
Per comprovar que el procés s'ha realitzat correctament, escriviu ``\dt`` per poder veure un llistat de les taules que té la base 
de dades. S'hauria de veure alguna cosa d'aquest estil:

::

  demo=# \dt
               List of relations
   Schema |       Name       | Type  | Owner 
  --------+------------------+-------+-------
   public | geometry_columns | table | user
   public | spatial_ref_sys  | table | user
  (2 rows)

PostGIS utilitza aquestes dues taules. La taula ``spatial_ref_sys`` emmagatzema informació de sistemes de referència espacials vàlids, 
i pot usar algunes ordres de SQL per poder veure el seu contingut:

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

Això confirma que tenim una base de dades habilitada per a operacions espacials. El  taula ``geometry_columns`` 
s'encarrega de dir-li a PostGIS les taules que estan habilitades per a operacions espacials. Aquest és el següent pas.

Creació d'una taula espacial (usuaris avançats)
================================================================================

Ara tenim una base de dades espacials on es poden crear taules espacials.

En primer lloc, crearem una taula de base de dades ordinària per emmagatzemar algunes dades de ciutats.
Aquesta taula té dos camps - un per l'ID numèric i un altre per al nom de la ciutat:

::

  demo=# CREATE TABLE cities ( id int4, name varchar(50) );

A continuació, afegirem una columna de geometria per emmagatzemar les localitzacions de les ciutats.
Convencionalment aquesta columna s'anomena ``the_geom``. D'aquesta manera es diu a PostGIS quin tipus 
de geometria té cada entitat (punts, línies, polígons, etc), quantes dimensions
(en aquest cas dos), i el sistema de referència espacial de les dades.
En aquest cas la localització de les ciutats es marcarà usant coordenades en el sistema de referència EPSG:4326.

::

  demo=# SELECT AddGeometryColumn ( 'cities', 'the_geom', 4326, 'POINT', 2);

Si es comprova la taula de les ciutats en aquest moment hauria de veure la nova columna, 
i que la taula no conté cap fila.

::

  demo=# SELECT * from cities;
   id | name | the_geom 
  ----+------+----------
  (0 rows)

Per afegir files a la taula s'usen algunes sentències SQL. Per introduir la geometria 
dins de la columna de geometries farem servir la funció de PostGIS ``ST_GeomFromText``, 
que converteix a partir d'un format de text les coordenades i l'identificador del sistema de referència espacial:

::

  demo=# INSERT INTO cities (id, the_geom, name) VALUES (1,ST_GeomFromText('POINT(-0.1257 51.508)',4326),'London, England');
  demo=# INSERT INTO cities (id, the_geom, name) VALUES (2,ST_GeomFromText('POINT(-81.233 42.983)',4326),'London, Ontario');
  demo=# INSERT INTO cities (id, the_geom, name) VALUES (3,ST_GeomFromText('POINT(27.91162491 -33.01529)',4326),'East London,SA');

.. tip:: Utilitzeu les tecles de fletxa per recuperar i editar línies de comandes.

Com es pot veure, si es fa la introducció de dades d'aquesta manera es converteix ràpidament en un procés molt tediós.
Per sort hi ha altres maneres molt més senzilles per afegir dades en taules PostGIS. Ara però, ja tenim tres ciutats 
en la nostra base de dades, i ja podem treballar amb això.

Consultes simples
================================================================================

Per seleccionar dades d'una taula PostGIS es poden aplicar totes les operacions SQL comunes.

::

 demo=# SELECT * FROM cities;
  id |      name       |                      the_geom                      
 ----+-----------------+----------------------------------------------------
   1 | London, England | 0101000020E6100000BBB88D06F016C0BF1B2FDD2406C14940
   2 | London, Ontario | 0101000020E6100000F4FDD478E94E54C0E7FBA9F1D27D4540
   3 | East London,SA  | 0101000020E610000040AB064060E93B4059FAD005F58140C0
 (3 rows)

D'aquesta manera s'obté una versió hexadecimal del camp geometria difícil d'interpretar.

Si es vol tornar a fer una ullada a la geometria en format WKT, es poden utilitzar les 
funcions ST_AsText(the_geom) o ST_AsEwkt(the_geom). També es pot utilitzar ST_X(the_geom), 
ST_Y(the_geom) per obtenir el valor numèric de les coordenades:

::

 demo=# SELECT id, ST_AsText(the_geom), ST_AsEwkt(the_geom), ST_X(the_geom), ST_Y(the_geom) FROM cities;
  id |          st_astext           |               st_asewkt                |    st_x     |   st_y    
 ----+------------------------------+----------------------------------------+-------------+-----------
   1 | POINT(-0.1257 51.508)        | SRID=4326;POINT(-0.1257 51.508)        |     -0.1257 |    51.508
   2 | POINT(-81.233 42.983)        | SRID=4326;POINT(-81.233 42.983)        |     -81.233 |    42.983
   3 | POINT(27.91162491 -33.01529) | SRID=4326;POINT(27.91162491 -33.01529) | 27.91162491 | -33.01529
 (3 rows)



Consultes espacials
================================================================================

PostGIS afegeix a PostgreSQL moltes funcions amb funcionalitat espacial.
Una d'elles, que ja s'ha vist, és ST_GeomFromText que transforma WKT a geometria.
La major part de les funcions comencen amb ST (per tipus espacial, Spatial Type), i s'enumeren en una secció de
la documentació de PostGIS. Ara farem servir una d'elles per respondre a una qüestió pràctica - 
assumint que la terra és esfèrica, quina distància (en metres) hi ha entre aquestes tres ciutats anomenades Londres?

::

 demo=# SELECT p1.name,p2.name,ST_Distance_Sphere(p1.the_geom,p2.the_geom) FROM cities AS p1, cities AS p2 WHERE p1.id > p2.id;
       name       |      name       | st_distance_sphere 
 -----------------+-----------------+--------------------
  London, Ontario | London, England |   5875766.85191657
  East London,SA  | London, England |   9789646.96784908
  East London,SA  | London, Ontario |   13892160.9525778
  (3 rows)

Això ens dóna la distància, en metres, entre cada parell de ciutats. 
Observeu com el 'WHERE' de la consulta evita que s'obtingui la distància entre una ciutat i si mateixa (que en tots els casos serà zero) 
o les distàncies inverses entre les ciutats que apareixen a la taula de dalt (la distància entre Londres d'Anglaterra i Londres d'Ontario 
és la mateixa que de Londres d'Ontario a Londres d'Anglaterra). 
Intenti fer la mateixa consulta sense incloure la part del 'WHERE' i miri el resultat que obté.

També podem calcular la distància amb un esferoide fent servir una altra funció, especificant el
nom de l'el·lipsoide, el semieix major i l'invers del aplanament:

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



Generar un mapa
================================================================================

Per produir un mapa a partir de dades PostGIS, es necessita un client que pugui obtenir les dades. 
La majoria dels programes SIG d'escriptori de codi obert poden fer-ho - per exemple, Quantum GIS, gvSIG o uDIg.
A continuació veurà com generar un mapa amb Quantum GIS.

Inicieu Quantum GIS i escolliu ``Add PostGIS layer`` en el menú Layer. 
Com que no s'ha usat PostGIS des de QGIS abans, obtindrà una llista buida de connexions PostGIS.

.. image:: ../../images/screenshots/1024x768/postgis_add.png
  :scale: 100 %
  :alt: Afegir capa PostGIS
  :align: center

Premi 'new' i introdueixi els paràmetres per a la connexió. Utilitzarem la base de dades Natural Earth continguda al DVD.
No cal donar nom d'usuari ni contrasenya, ja que la seguretat està configurada per permetre l'accés. 
En cas que estigués activada, desactiveu l'opció de comprovació sobre les taules sense geometria - permetrà fer 
les coses una mica més senzilles.

.. image:: ../../images/screenshots/1024x768/postgis_naturalearth.png
  :scale: 100 %
  :alt: Connexió a Natural Earth
  :align: center

Punxi el botó ``Test Connect``, i si tot està correcte obtindrà un missatge afirmatiu.
Premeu ``OK`` i la seva informació de connexió es guardarà amb el nom en la llista de connexions. 
Ara ja pot punxar ``Connect`` i obtenir un llistat de les taules espacials de la base de dades:

.. image:: ../../images/screenshots/1024x768/postgis_ne_layers.png
  :scale: 100 %
  :alt: Capes de dades de Natural Earth
  :align: center

Trieu la taula de llacs i premi ``Add`` (no ``Load`` - que guarda les consultes), i s'hauria de carregar en QGIS:

.. image:: ../../images/screenshots/1024x768/postgis_ne_lakes.png
  :scale: 50 %
  :alt: La meva primera capa de dades en PostGIS
  :align: center

Ara hauríeu de veure un mapa dels llacs. QGIS no sap que aquesta informació són llacs, de manera 
que potser no els representa de color blau - podeu consultar la documentació de QGIS per saber com canviar-ho. 
Llavors podeu fer zoom a un famós grup de llacs de Canadà.

Creació d'una taula espacial (forma fàcil)
================================================================================

La majoria de les eines d'escriptori d'OSGeo té funcions d'importació de dades espacials des d'arxius, com per exemple shapefiles, 
dintre de bases de dades PostGIS. Un cop més farem servir QGIS per mostrar com es fa això.

La importació d'arxius shapefile a QGIS es pot fer a través del plugin PostGIS Manager. 
Per instal·lar-lo, aneu al menú Plugins, seleccioneu ``Manage Plugins`` i busqueu ``PostGIS Manager``. 
Marqueu aquesta opció i feu click a OK. Al menú de complements hauria d'aparèixer un accés a PostGIS Manager 
per tal de poder iniciar el gestor.

A continuació, PostGIS Manager farà servir la configuració que vostè ha definit prèviament per poder-se connectar a la base de dades Natural Earth.
Si li demana la contrasenya deixi-la en blanc. Veureu la finestra principal del gestor.

.. image:: ../../images/screenshots/1024x768/postgis_ne_manager.png
  :scale: 75 %
  :alt: Plugin de PostGIS Manager 
  :align: center

Podeu utilitzar les altres pestanyes del panell del costat dret per comprovar els atributs de la capa i fins i tot
obtenir un mapa bàsic amb capacitat de zoom i panoràmica. En aquest cas hem seleccionat la capa de poblacions
i hem fet zoom a una petita illa que coneixem:

.. image:: ../../images/screenshots/1024x768/postgis_ne_preview.png
  :scale: 75 %
  :alt: Visualització prévia de PostGIS Manager
  :align: center

Ara utilitzarem l'Administrador de PostGIS per importar un shapefile a la base de dades. 
Usarem les dades de la síndrome de mort sobtada infantil (SIDS, per les seves sigles en anglès) de 
Carolina del Nord que s'inclouen en un dels add-ons del paquet estadístic R.

Triar l'opció ``Load data from shapefile`` al menú ``Data``.
Premi el botó ``...`` i busqui el shapefile ``sids.shp`` en el paquet ``maptools`` de R:

.. image:: ../../images/screenshots/1024x768/postgis_find_shape.png
  :scale: 75 %
  :alt: Buscar el shapefile
  :align: center

Deixi tota la resta com està i premi ``Load``

.. image:: ../../images/screenshots/1024x768/postgis_ne_load.png
  :scale: 75 %
  :alt: Importar un shapefile
  :align: center

El shapefile s'hauria d'haver importat en PostGIS sense errors. 
Tanqui el PostGIS Manager i torni a la finestra principal de QGIS.

A continuació carregarem les dades SIDS al mapa fent ús de l'opció 'Add PostGIS Layer'.
Reorganitzant algunes capes i aplicant color, hauria de ser capaç de produir
un mapa de coropletes dels comptes de síndrome de mort sobtada infantil a Carolina del Nord:

.. image:: ../../images/screenshots/1024x768/postgis_ne_final.png
  :scale: 75 %
  :alt: SIDS data mapped
  :align: center




Conegui pgAdmin III
================================================================================
Podeu utilitzar el client gràfic de la base de dades ``pgAdmin III`` per consultar i modificar una base de dades sense component espacial.
Aquest és el client oficial de PostgreSQL, i li permet manipular les taules de dades mitjançant SQL.

.. image:: ../../images/screenshots/800x600/pgadmin.gif
  :scale: 50 %
  :alt: pgAdmin III
  :align: center

Coses que cal provar
================================================================================

A continuació teniu algunes propostes addicionals perquè intenteu fer pel vostre compte:

#. Provar altres funcions espacials com ``st_buffer(the_geom)``, ``st_transform(the_geom,25831)``, ``x(the_geom)`` - trobareu la documentació completa en http://postgis.org/documentation /

#. Exportar les taules a shapefiles amb la comanda ``pgsql2shp``.

#. Provar la comanda ``ogr2ogr`` per importar i exportar dades a la base de dades.


I ara què?
================================================================================

Això que hem vist són els primers passos per aprendre a usar PostGIS. Hi ha un munt de funcionalitat addicional que es pot provar.

Pàgina Web del Projecte PostGIS 

 http://postgis.org

Documentació de PostGIS

 http://postgis.org/documentation/
 
