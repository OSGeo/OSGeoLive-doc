:Author: Daniel Kastl
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _pgrouting-quickstart:
 
.. image:: ../../images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

********************************************************************************
pgRouting Quickstart
********************************************************************************

pgRouting is an extension and adds routing functionality to :doc:`PostGIS <../overview/postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_ databases.

This Quick Start describes how to open a database with the command line and run a basic shortest path query with the sample test data.


Running pgRouting
================================================================================

* Open a :menuselection:`Applications --> Accessories --> Terminal` window and connect to the ``pgrouting`` database:

.. code-block:: bash

	psql -U user pgrouting

* Type :command:`\\d` will list you all available tables:

.. code-block:: sql

			      List of relations
	 Schema |        Name         |   Type   |  Owner   
	--------+---------------------+----------+----------
	 public | geography_columns   | view     | postgres
	 public | geometry_columns    | table    | postgres
	 public | spatial_ref_sys     | table    | postgres
	 public | vertices_tmp        | table    | postgres
	 public | vertices_tmp_id_seq | sequence | postgres
	 public | ways                | table    | postgres
	(6 rows)

* Run the Dijkstra shortest path function:

.. code-block:: sql

	SELECT * FROM shortest_path('
			SELECT gid as id, 
				 source::integer, 
				 target::integer, 
				 length::double precision as cost 
				FROM ways', 
			24340, 69453, false, false); 

.. code-block:: sql

     vertex_id | edge_id |        cost         
    -----------+---------+---------------------
	     24340 |  159414 |   0.155428268463703
	     27646 |  159415 |   0.178580861083004
	     15074 |  159416 |   0.175711834233665
    	   ... |     ... |  ...
	     69453 |      -1 |                   0
    (25 rows)

* Try the wrapper function to get the routing result in a different format:

.. code-block:: sql

	SELECT gid, AsText(the_geom) AS the_geom 
		FROM dijkstra_sp('ways', 24340, 69453);
	
.. code-block:: sql
	
      gid   |                              the_geom      
    --------+---------------------------------------------------------------
	 159414 | MULTILINESTRING((-104.9916497 39.7338548,-104.9916497 39.7352526))
	 159415 | MULTILINESTRING((-104.9916497 39.7352526,-104.9916591 39.7368586))
	 159416 | MULTILINESTRING((-104.9916591 39.7368586,-104.9916503 39.7384388))
	    ... | ...
	 104888 | MULTILINESTRING((-104.9873865 39.7509603,-104.986246 39.7517975))
	(24 rows)


* With :command:`\\q` command leave the PostgreSQL shell.


What next?
================================================================================

* **pgRouting Website** - Visit the project website http://www.pgrouting.org to learn more about pgRouting.

* **Workshop on DVD** - Included on this LiveDVD is the FOSS4G 2010 pgRouting workshop `"FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoExt"`, available in: :file:`/usr/share/pgrouting/workshop/`

.. note::

	To update to the latest version of the tutorial, open a terminal window, then run ``sudo apt-get update && apt-get upgrade pgrouting-workshop``

