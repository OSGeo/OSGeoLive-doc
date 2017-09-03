:Author: OSGeo-Live
:Author: Micha Silver
:Reviewer: Cameron Shorter, Jirotech
:Translator: Mauricio Miranda
:Translator: David Mateos
:Version: osgeo-live 9.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)


.. TBD: Cameron Review
  We need to explain in words what we aim to achieve by each 
  step. Eg: "Let's find all Villas which include have a geometry and ..."
  This will require an extra sentence for most steps.

 
.. image:: /images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right

********************************************************************************
Guía de Inicio Rápido de SpatiaLite
********************************************************************************

SpatiaLite es un motor de base de datos SQLite al que se le han agregado funciones espaciales.

SQLite es un Sistema Gestor de Bases de Datos (SGBD, *DBMS* por sus siglas en inglés) que es simple, robusto, fácil de usar y muy ligero. Cada base de datos SQLite es simplemente un archivo. Éste se puede copiar, comprimir e intercambiar entre Windows, Linux, MacOs etc.

Esta guía describe cómo abrir una base de datos desde la línea de comandos y cómo usar la interfaz gráfica (GUI).

.. contents:: Contents
  
Usando spatialite-gui
================================================================================

Spatialite-gui proporciona una interfaz gráfica para ver y mantener una base de datos spatialite. Se puede ver fácilmente la estrucutura de las tablas y de los datos a través de funciones accesibles con un clic del ratón, muchas de las cuales construyen consultas SQL comunes; o realizar consultas SQL personalizadas.

Empezamos por visualizar una base de datos y mirar las columnas de una tabla:

* Abrimos la interfaz gráfica de Spatialite seleccionando  :menuselection:`Geospatial->Databases->Spatialite GUI`

.. TBD: Cameron Review Comment:
  We should have continuity in our examples. Ie, Use the same scenario for
  all spaital-gui steps. Use the same table, where each step builds upon the
  previous step. I'd suggest our examples should aim to have a GIS focus to
  them too.

* Hacer clic en el botón :menuselection:`File->Connect existing SQLite DB`.
* Navegar a la carpeta ``/home/user/data/spatialite`` y elegir :file:`trento.sqlite`.

  .. image:: /images/projects/spatialite/spatialite-gui-trento.png
    :scale: 70 %

.. TBD: Cameron Review Comment:
  As above, lets keep the table consistant, to maybe MunicipalHalls

* Hacer clic con el botón derecho en la tabla ``MunicpalHallsView`` y
  seleccionar "Show Columns".

  .. image:: /images/projects/spatialite/spatialite-gui-columns.png
      :scale: 70 %

* La ventana está dividida en tres áreas:

  #. El panel de la izquierda muestra la jerarquía de la base de datos, tal como la lista de tablas y las columnas en cada tabla. Clic derecho sobre los elementos del panel izquierdo permite seleccionar de una lista de acciones comunes en una base de datos.

  #. El panel superior derecho muestra el código SQL de la acción seleccionada. se puede introducir cualquier código SQL personalizado en este panel. T

  #. El panel inferior derecho muestra los resultados de la consulta SQL.

* Hacer clic con el botón derecho en la tabla ``MunicipalHalls`` y
  seleccionar "Edit table rows". Notar la consulta SQL que se ha creado automáticamente en el panel superior derecho y los resultados en el inferior.::

	SELECT ROWID, "PK_UID", "AREA", "PERIMETER", "COMU", "Geometry"
        FROM "MunicipalHalls"
        ORDER BY ROWID

.. TBD: Cameron Review Comment:
  As above, lets try to keep consistancy. I suggest continue using the
  MunicipalHalls table, but how about constrain by a GIS query, such as
  a Bounding Box query instead.

* Ahora vamos a cambiar la sentencia SQL para obtener NOME y (Lat,Long) sólo para los registros que en el campo NOME_PROV incluyan "BRESCIA", esta vez usando MunicipalHallsView.  En el panel superior derecho escribir::

   SELECT NOME, X(Geometry) AS Longitude, Y(Geometry) AS Latitude
        FROM "MunicipalHallsView"
        WHERE NOME_PROV LIKE "BRESCIA";

y hacer clic en el botón "Execute SQL" de la derecha, y ver los resultados en el panel de abajo a la derecha.

  .. image:: /images/projects/spatialite/spatialite-gui-select.png
      :scale: 70 %

Crear una nueva base de datos con spatialite-gui
================================================================================

* Desde la carpeta ``Databases`` en el escritorio arrancar **spatialite_gui**
* Seleccionar :menuselection:`File --> Creating a new SQLite DB`
* Hacer clic en ``Browse`` y navegar a ``/home/user/data/spatialite/``. Introducir un nombre como ``Test.sqlite`` y hacer clic en Save.


Abrir una base de datos existente en **spatialite-gui**
================================================================================

* Hacer clic en el botón "Disconnecting current SQLite DB"
* Hacer clic en el botón "Connect existing SQLite DB"
* Navegar a la carpeta ``/home/user/data/spatialite`` y elegir
  ``trento.sqlite``
* Hacer clic con el botón derecho en la tabla ``MunicpalHallsView`` y
  seleccionar "Show Columns"
* Hacer clic con el botón derecho en la tabla ``PopulatedPlaces`` y
  seleccionar "Edit table rows"
* En el panel SQL superior escribir::

   SELECT NOME, X(Geometry) AS Longitude, Y(Geometry) AS Latitude
   		FROM "MunicipalHallsView"
   		WHERE NOME_PROV LIKE "BRESCIA";

  y hacer clic en el botón "Execute SQL" de la derecha, y ver los resultados en el panel de abajo a la derecha.

  .. image:: /images/projects/spatialite/spatialite-gui-select.png
      :scale: 70 %


Usar spatialite desde la línea de comandos
================================================================================

Los/as usuarios/as que necesitan programar o automatizar consultas encontrarán las ventajas que tiene trabajar con una base de datos spatialite desde la línea de comandos. En este ejemplo, cargaremos un shapefile, y buscaremos colegios que están cerca de la carretera 42.

* Antes de trabajar con la línea de comandos hay que abrir una consola (:menuselection:`LXDE Menu -> Accessories -> LXTerminal`).

* En la terminal abrir una base de datas de ejemplo con **spatialite**::

   spatialite /home/user/data/spatialite/trento.sqlite

* Comando útiles en la interfaz de comandos::

   .help
   .tables
   .quit

* Crear una nueva base de datos spatialite y cargar un shapefile

   - Creamos una nueva base de datos spatialite vacía y cargamos dos shapefiles del conjunto de datos de Carolina del norte (north_carolina)::

	  user@osgeo-6:~$ spatialite test.sqlite
	  SpatiaLite version ..: 3.1.0-RC2      Supported Extensions:
           - 'VirtualShape'        [direct Shapefile access]
           - 'VirtualDbf'          [direct DBF access]
           - 'VirtualXL'           [direct XLS access]
           - 'VirtualText'         [direct CSV/TXT access]
           - 'VirtualNetwork'      [Dijkstra shortest path]
           - 'RTree'               [Spatial Index - R*Tree]
           - 'MbrCache'            [Spatial Index - MBR cache]
           - 'VirtualSpatialIndex' [R*Tree metahandler]
           - 'VirtualFDO'          [FDO-OGR interoperability]
           - 'SpatiaLite'          [Spatial SQL - OGC]
      PROJ.4 version ......: Rel. 4.8.0, 6 March 2012
      GEOS version ........: 3.3.3-CAPI-1.7.4
      SQLite version ......: 3.7.9
      Enter ".help" for instructions
      spatialite>
      spatialite> .loadshp data/north_carolina/shape/schools_wake schools utf-8 3358
      spatialite> .loadshp data/north_carolina/shape/roadsmajor roads utf-8 3358


   - Notar el formato del comando .loadshp: primero el shapefile sin la extensión .shp, después el nombre de la nueva tabla spatialite, luego la codificación de caracteres, y finalmente el código EPSG del CRS del shapefile.

   - Ahora, vamos a hacer una consulta de los colegios cercanos a la carretera 42.::
 
      spatialite> SELECT s.NAMESHORT, s.ADDRNUMBER, s.ADDRROOT
           ...> FROM schools AS s, roads AS r
           ...> WHERE r.ROAD_NAME = "NC-42" AND
           ...> ST_Distance(s.Geometry, r.Geometry) < 1000;
      FUQUAY-VARINA|6600|Johnson Pond Rd
      WILLOW SPRINGS|6800|Dwight Rowland Rd
      FUQUAY-VARINA|109|N Ennis St
      LINCOLN HEIGHTS|307|Bridge St

   - Finalmente, dirigimos la salida de la consulta a un fichero de texto separado por comas "schools_rt42.txt" con los siguientes comandos::

      spatialite> .mode csv
      spatialite> .output "schools_rt42.txt"
      spatialite> SELECT s.NAMESHORT, s.ADDRNUMBER, s.ADDRROOT
          ...> FROM schools AS s, roads AS r
          ...> WHERE r.ROAD_NAME = "NC-42" AND
          ...> ST_Distance(s.Geometry, r.Geometry) < 1000;
      spatialite>.q
  

Cosas para probar
================================================================================

Algunos desafíos más que usted puede probar:

* Inspeccionar geometrías con spatialite-gui.
* Abrir y editar capas de SpatiaLite con QGIS.


¿Qué es lo siguiente?
================================================================================

Para aprender más acerca de SpatiaLite, un buen punto de partida es la `página del proyecto Spatialite`_, y asegúrese de visitar el tutorial `Spatialite cookbook`_.

.. _`página del proyecto Spatialite`: https://www.gaia-gis.it/fossil/libspatialite/index

.. _`Spatialite cookbook`: http://www.gaia-gis.it/gaia-sins/spatialite-cookbook/index.html

