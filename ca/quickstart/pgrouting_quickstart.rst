:Author: Daniel Kastl
:Translator: Anna Muñoz Bollas
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

********************************************************************************
Guia d'inici ràpid per pgRouting
********************************************************************************

pgRouting és una extensió de :doc:`PostGIS <../overview/postgis_overview>` que afegeix funcionalitat de càlcul de rutes a les bases de dades :doc:`PostGIS <../overview/postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_.

Aquesta guia d'inici ràpid descriu com obrir una base de dades des de la línia de comandes i com executar una consulta del camí més curt amb unes dades de prova.

Executant pgRouting
================================================================================

* Obri una finestra de terminal :menuselection:`Applications --> Accessories --> Terminal` i estableixi una connexió a la base de dades de ``pgrouting`` :

.. code-block:: bash

	psql -U user pgrouting

* Escrigui :command:`\\d` per mostrar totes les taules disponibles:

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

* Executar la funció de ruta més curta fent ús de l'algorisme de Dijkstra:

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

* Proveu la següent funció per obtenir el resultat d'enrutament en un format diferent:

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

* Amb la instrucció :command:`\\q` sortirà de la consola de PostgreSQL.

I ara qué?
================================================================================

* **Lloc web de pgRouting** - Visiteu el lloc web del projecte http://www.pgrouting.org per aprendre més sobre pgRouting.

* **Taller en DVD** - El taller de pgRouting del FOSS4G 2010 `"FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoExt"` està inclòs en aquest LiveDVD, i disponible a: :file:`/usr/share/pgrouting/workshop/`

.. note::

    Per actualitzar a l'última versió del tutorial, obriu una finestra de terminal, i a continuació, executeu ``sudo apt-get update && apt-get upgrade pgrouting-workshop``

