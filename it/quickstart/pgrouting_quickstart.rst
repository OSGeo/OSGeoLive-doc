:Author: Daniel Kastl
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: ../../images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

********************************************************************************
Guida rapida su pgRouting
********************************************************************************

pgRouting è un'estensione e aggiunge funzionalità di routing ai database
:doc:`PostGIS <../overview/postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_.

Questa guida rapida descrive come aprire un database con la linea di comando ed eseguire
una semplice interrogazione per il percordo più corto con un set di dati campione.


Eseguire pgRouting
================================================================================

* Aprire una finestra :menuselection:`Applications --> Accessories --> Terminal` e 
  collegarsi al database ``pgrouting``:

.. code-block:: bash

	psql -U user pgrouting

* Digitare :command:`\\d` che vi mostrerà tutte le tabelle disponibili:

.. code-block:: sql

			      List of relations
	 Schema |        Name         |   Type   |  Owner   
	--------+---------------------+----------+----------
	 public | classes         	| table	| user
	 public | geography_columns   | view 	| user
	 public | geometry_columns	| table	| user
	 public | nodes           	| table	| user
	 public | spatial_ref_sys 	| table	| user
	 public | types           	| table	| user
	 public | vertices_tmp    	| table	| user
	 public | vertices_tmp_id_seq | sequence | user
	 public | ways            	| table	| user
	(9 rows)

* Eseguire la funzione per il percorso più corto Dijkstra:

.. code-block:: sql

	SELECT * FROM shortest_path('
			SELECT gid as id, 
				 source::integer, 
				 target::integer, 
				 length::double precision as cost 
				FROM ways', 
			100, 600, false, false); 

.. code-block:: sql

	 vertex_id | edge_id |       cost    	 
	-----------+---------+---------------------
	       100 |    1457 |  0.0152981335887719
	       554 |     543 |  0.0658986376594475
	       553 |     542 |  0.0720522950545032
	       ... |     ... |  ...
	      1803 |    1902 |  0.1000754339802650
	       600 |      -1 |                   0
    (77 rows)

* Provare la funzione wrapper per ottenere il risultato di routing in un formato diverso:

.. code-block:: sql

	SELECT gid, AsText(the_geom) AS the_geom 
		FROM dijkstra_sp('ways', 100, 600);
	
.. code-block:: sql
	
	  gid   |                              the_geom      
	--------+---------------------------------------------------------------
	    533 | MULTILINESTRING((-105.0205242 39.7613979,-105.0205115 39.7620158))
	    534 | MULTILINESTRING((-105.0205115 39.7620158,-105.0205151 39.7632155))
	    535 | MULTILINESTRING((-105.0205151 39.7632155,-105.0205098 39.764433))
		... | ...
	   9395 | MULTILINESTRING((-104.9921535 39.7209342,-104.9921516 39.722527))
	   9400 | MULTILINESTRING((-104.9921793 39.7147876,-104.9923595 39.714781))
	(76 rows)

* Con il comando :command:`\\q` uscirete dalla shell di PostgreSQL.


E poi?
================================================================================

* **pgRouting Website** - Visitate il sito web del progetto http://www.pgrouting.org 
  per imparare di più su pgRouting.

* **Workshop on DVD** - Incluso in questo LiveDVD trovate il workshop FOSS4G 2010 
  pgRouting `"FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoExt"`, 
  disponibile in : :file:`/usr/share/pgrouting/workshop/`

.. note::

	Per aggiornare all'ultima versione del tutorial, aprire una finestra del terminale, 
	ed eseguire ``sudo apt-get update && apt-get upgrade pgrouting-workshop``

