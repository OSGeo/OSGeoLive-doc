:Author: Daniel Kastl
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

********************************************************************************
Начало работы с pgRouting
********************************************************************************

pgRouting — это расширение, добавляющее функции роутинга 
в :doc:`PostGIS <../overview/postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_ 
базы данных.

В данном "введении" описано, как получить доступ к базе данных из командной строки
и выполнить простейший запрос расчёта кратчайшего пути
на примере тестовых данных.


Запуск pgRouting
================================================================================

* Откройте терминал :menuselection:`Applications --> Accessories --> Terminal` и подключитесь к базе данных ``pgrouting``:

.. code-block:: bash

	psql -U user pgrouting

* Команда :command:`\\d` отобразит список доступных таблиц:

.. code-block:: sql

			      List of relations
	 Schema |	 Name	      |   Type	 |  Owner
	--------+---------------------+----------+----------
	 public | classes		| table | user
	 public | geography_columns   | view	| user
	 public | geometry_columns	| table | user
	 public | nodes			| table | user
	 public | spatial_ref_sys	| table | user
	 public | types			| table | user
	 public | vertices_tmp		| table | user
	 public | vertices_tmp_id_seq | sequence | user
	 public | ways			| table | user
	(9 rows)

* Выполните функцию поиска кратчайшего пути по алгоритму Дейкстры:

.. code-block:: sql

	SELECT * FROM shortest_path('
			SELECT gid as id,
				 source::integer,
				 target::integer,
				 length::double precision as cost
				FROM ways',
			100, 600, false, false);

.. code-block:: sql

	 vertex_id | edge_id |	     cost
	-----------+---------+---------------------
	       100 |	1457 |	0.0152981335887719
	       554 |	 543 |	0.0658986376594475
	       553 |	 542 |	0.0720522950545032
	       ... |	 ... |	...
	      1803 |	1902 |	0.1000754339802650
	       600 |	  -1 |			 0
    (77 rows)

* Попробуйте специальную функцию, позволяющую получать результаты роутинга в другом формате:

.. code-block:: sql

	SELECT gid, AsText(the_geom) AS the_geom
		FROM dijkstra_sp('ways', 100, 600);

.. code-block:: sql

	  gid	|			       the_geom
	--------+---------------------------------------------------------------
	    533 | MULTILINESTRING((-105.0205242 39.7613979,-105.0205115
	    39.7620158))
	    534 | MULTILINESTRING((-105.0205115 39.7620158,-105.0205151
	    39.7632155))
	    535 | MULTILINESTRING((-105.0205151 39.7632155,-105.0205098
	    39.764433))
		... | ...
	   9395 | MULTILINESTRING((-104.9921535 39.7209342,-104.9921516
	   39.722527))
	   9400 | MULTILINESTRING((-104.9921793 39.7147876,-104.9923595
	   39.714781))
	(76 rows)

* Наберите команду :command:`\\q` для выхода из консоли PostgreSQL.


Что дальше?
================================================================================

* **Сайт pgRouting** — чтобы узнать больше о pgRouting, посетите сайт проекта http://www.pgrouting.org.

* **Учебное пособие**: материалы мастер-класса `"FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoExt"`, проходившего в рамках FOSS4G 2010, представлены на данном LiveDVD и доступны здесь: :file:`/usr/share/pgrouting/workshop/`

.. note::

	Для обновления материалов учебного пособия запустите терминал
	и выполните ``sudo apt-get update && apt-get upgrade
	pgrouting-workshop``

