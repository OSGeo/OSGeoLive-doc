:Author: Daniel Kastl
:Version: osgeo-live4.0
:License: Creative Commons

.. _pgrouting-quickstart:
 
.. image:: images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

********************
pgRouting Quickstart
********************

pgRouting is an extension of `PostGIS <http://www.postgis.org>`_ and adds routing functionality to `PostGIS <http://www.postgis.org>`_/`PostgreSQL <http://www.postgresql.org>`_.

This Quick Start describes how to open a database with the command line and run a basic shortest path query with the sample test data.


Running pgRouting
=================

* Open a terminal window and login to the ``pgrouting`` database:

.. code-block:: bash

	psql -U user pgrouting

* Type ``\d`` will list you all available tables:

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
			605, 359, false, false); 

.. code-block:: sql

     vertex_id | edge_id |        cost         
    -----------+---------+---------------------
    	   605 |    5575 |  0.0717467247513547
    	  1679 |    2095 |   0.148344716070272
    	   588 |    2094 |  0.0611856933258344
    	   ... |     ... |  ...
    	   359 |      -1 |                   0
    (82 rows)

* Try the wrapper function to get the routing result in a different format:

.. code-block:: sql

	SELECT gid, AsText(the_geom) AS the_geom 
		FROM dijkstra_sp('ways', 605, 359);
	
.. code-block:: sql
	
      gid   |                              the_geom      
    --------+---------------------------------------------------------------
    	168 | MULTILINESTRING((2.1633077 41.3802886,2.1637094 41.3803008))
    	169 | MULTILINESTRING((2.1637094 41.3803008,2.1638796 41.3803093))
    	170 | MULTILINESTRING((2.1638796 41.3803093,2.1640527 41.3803265))
    	... | ...
       5575 | MULTILINESTRING((2.1436976 41.3897581,2.143876 41.3903893))
    (81 rows)

* With ``\q`` command leave the PostgreSQL shell.


What next?
==========

* **pgRouting Website** - Visit the project website http://www.pgrouting.org to learn more about pgRouting.

* **Workshop on DVD** - Included on this LiveDVD is the FOSS4G 2010 pgRouting workshop "FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoEx", available in: file:///usr/share/pgrouting/workshop/

.. note::

	To update to the latest version of the tutorial, open a terminal window, then run ``sudo apt-get update && apt-get upgrade pgrouting-workshop``

