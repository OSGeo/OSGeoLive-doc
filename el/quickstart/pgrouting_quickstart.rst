:Συγγραφέας: Daniel Kastl
:Έκδοση: osgeo-live4.0
:Άδεια: Creative Commons

.. _pgrouting-quickstart:
 
.. image:: ../../images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

********************
Εγχειρίδιο Γρήγορης Εκκίνησης pgRouting
********************

Το pgRouting είναι μια επέκταση στην `PostGIS <http://www.postgis.org>`_ στην οποία προσθέτει διαδικασίες δρομολόγησης στις `PostGIS <http://www.postgis.org>`_/`PostgreSQL <http://www.postgresql.org>`_.

Αυτό το κείμενο περιγράφει πώς να ανοίξετε μια βάση δεδομένων από την γραμμή εντολών και να εκτελέσετε μια απλή αναζήτηση ελάχιστης διαδρομής στα δεδομένα επίδειξης.


Εκτελώντας το pgRouting
=================

* Ανοίξτε ένα παράθυρο :menuselection:`Applications --> Accessories --> Terminal` και συνδεθείτε στην ``pgrouting`` βάση δεδομένων:

.. code-block:: bash

	psql -U user pgrouting

* Πληκτρολογήστε :command:`\\d` και θα δείτε όλους τους διαθέσιμους πίνακες:

.. code-block:: sql

			      Πίνακας σχέσεων
	 Σχήμα  |       Όνομα         |  Τύπος   | Χρήστης   
	--------+---------------------+----------+----------
	 public | geography_columns   | view     | postgres
	 public | geometry_columns    | table    | postgres
	 public | spatial_ref_sys     | table    | postgres
	 public | vertices_tmp        | table    | postgres
	 public | vertices_tmp_id_seq | sequence | postgres
	 public | ways                | table    | postgres
	(6 γραμμές)

* Εκτελέστε στην συνάρτηση ελάχιστης διαδρομής Dijkstra:

.. code-block:: sql

	SELECT * FROM shortest_path('
			SELECT gid as id, 
				 source::integer, 
				 target::integer, 
				 length::double precision as cost 
				FROM ways', 
			605, 359, false, false); 

.. code-block:: sql

     vertex_id | edge_id |       Κόστος         
    -----------+---------+---------------------
    	   605 |    5575 |  0.0717467247513547
    	  1679 |    2095 |   0.148344716070272
    	   588 |    2094 |  0.0611856933258344
    	   ... |     ... |  ...
    	   359 |      -1 |                   0
    (82 γραμμές)

* Δοκιμάστε την συνάρτηση μετατροπής (wrapper) ώστε να πάρετε το αποτέλεσμα σε μια άλλη μορφή:

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

* Με την εντολή :command:`\\q` εγκαταλείπετε το κέλυφος της PostgreSQL.


Τεκμηρίωση
==========

* **pgRouting Website** - Επισκεφτείτε τον ιστοχώρο http://www.pgrouting.org για να μάθετε περισσότερα για το pgRouting.

* **Workshop on DVD** - Σε αυτό το DVD περιλαμβάνονται τα αρχεία του FOSS4G 2010 pgRouting workshop `"FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoEx"`, διαθέσιμα στο: :file:`/usr/share/pgrouting/workshop/`

.. σημείωση::

	Για να εγκαταστήσετε την τελευταία έκδοση από το εγχειρίδιο εκμάθησης ανοίξτε ένα τερματικό και εκτελέστε την ακόλουθη εντολή ``sudo apt-get update && apt-get upgrade pgrouting-workshop``

