:Author: Barry Rowlingson
:Author: Astrid Emde
:Author: Cameron Shorter
:Version: osgeo-live5.0
:License: Creative Commons

.. _postgis_quickstart:
 
.. image:: ../../images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://postgis.org/



***************************************
Guía de inicio rápido de PostGIS
***************************************

PostGIS añade soporte espacial a la base de datos relacional PostgreSQL. 
Le da a PostgreSQL la capacidad de almacenar, consultar y manipular datos espaciales. En este documento
se usa 'PostgreSQL' para referirse a las funciones generales de la base de datos, y 'PostGIS' para
hablar sobre las funcionalidades espaciales adicionales que le proporciona.


Arquitectura Cliente-servidor
===============================

PostgreSQL, al igual que muchas otras bases de datos, trabaja como servidor en un sistema 
cliente-servidor.
El cliente hace una petición al servidor y obtiene una respuesta. Trabaja de la misma forma que internet 
- el navegador Web del usuario es el cliente y el servidor Web le envía la página Web que ha solicitado.
En el caso de PostgreSQL las peticiones se realizan en lenguaje SQL y la respuesta es generalmente
una tabla de datos procedente de la base de datos.

No hay nada que impida que el servidor esté en el mismo ordenador que el cliente, con lo cual, el usuario 
puede usar PostgreSQL en la misma máquina. El cliente del usuario conecta con el servidor a través de
la conexión de red 'loopback' interna, y no es visible a otros ordenadores a menos que el usuario lo 
configure para que lo sea.

Crear una base de datos espacial 
============================================================

.. comentario de revisión: Sugiere proporcionar una captura de pantalla (o 2) que muestre como seleccionar y abrir un terminal. Cameron

Un único servidor PostgreSQL le permite organizar el trabajo en bases de datos separadas. Cada base de datos actúa como una entidad 
independiente, con sus propias tablas, vistas, usuarios, etc. Cuando conecte a un servidor PostgreSQL debe indicar a qué base 
de datos quiere acceder.

Puede obtener un listado de las bases de datos que hay disponibles en el servidor con el comando ``psql -l`` . Por defecto debería poder ver varias bases de 
datos creadas en la instalación. Creará una nueva base de datos al seguir esta guía.

.. tip:: La lista usa un pager de unix estándar - pulse espacio para ir a la página siguiente, b para volver a la anterior, q para salir, h para acceder a la ayuda.

PostgreSQL le da un comando unix para crear bases de datos, ``createdb``. Necesita crear una base de datos con las extensiones PostGIS, 
por eso debe indicarle cuál es la plantilla para crear la base de datos. Llamaremos a la nueva base de datos ``demo``. El comando es el siguiente:

::

   createdb -T template_postgis demo

.. tip:: Generalmente puede acceder a la ayuda de las herramientas de línea de comandos tecleando --help 

Si ejecuta en este momento ``psql -l`` , su base de datos ``demo`` debería aparecer en el listado.

También puede crear bases de datos PostGIS usando el lenguaje SQL. En primer lugar daberá borrar la base de datos
que acaba de crear usando el comando ``dropdb`` . A continuación use el comando ``psql`` para obtener un intérprete
de comandos SQL:

:: 

  dropdb demo
  psql -d postgres

De esta forma conectará con la base de datos ``postgres`` , que es una base de datos del sistema
que todos los servidores deberían tener. A continuación introduzca la instrucción SQL para crear una nueva 
base de datos:

:: 

 postgres=# CREATE DATABASE demo TEMPLATE=template_postgis;

Ahora cambie la conexión de la base de datos ``postgres`` a la nueva base de datos ``demo`` . En el futuro puede
conectarse directamente con el comando ``psql -d demo``, pero hay una forma ingeniosa de conectarse dentro de
la línea de comandos ``psql`` :

::

 postgres=# \c demo

.. tip:: 
	Pulse Ctrl-C si el prompt de psql continúa apareciendo después de pulsar la tecla return. De esa forma limpiará su entrada 
	y empezará otra vez. Es probable que el sistema esté esperando que introduzca un signo de cerrar comillas, punto y coma o algún otro signo.

Debería poder ver un mensaje informativo, y el prompt cambiará para mostrarle que ya está conectado a la base de
datos ``demo``. Para comprobar que el proceso se ha realizado correctamente, teclee ``\dt`` para poder ver un listado de
las tablas que tiene la base de datos. Debería ver algo cómo esto:

::

  demo=# \dt
               List of relations
   Schema |       Name       | Type  | Owner 
  --------+------------------+-------+-------
   public | geometry_columns | table | user
   public | spatial_ref_sys  | table | user
  (2 rows)

PostGIS usa esas dos tablas. La tabla ``spatial_ref_sys`` almacena información de sistemas de referencia espaciales 
válidos, y puede usar algunas órdenes de SQL para poder ver su contenido:

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

Esta tabla confirma que tiene una base de datos con capacidad espacial. La función de la tabla ``geometry_columns`` es 
decirle a PostGIS qué tablas tienen carácter espacial. Este es el siguiente paso.


Crear una tabla espacial (para usuarios avanzados)
======================================================

Ahora que tiene una base de datos espacial puede crear tablas espaciales. 

Primero cree una tabla de base de datos ordinaria para almacenar algunos datos de ciudades. Esta tabla debe
tener 2 campos - uno para el ID numérico y otro para el nombre de la ciudad:

::

  demo=# CREATE TABLE cities ( id int4, name varchar(50) );

A continuación debe añadir una columna de geometría para almacenar las localizaciones de las ciudades. Por convención se le suele llamar
``the_geom`` . Esto le dice a PostGIS que tipo de geometría tiene cada
registro (puntos, líneas, polígonos,etc.), cuántas dimensiones
(en este caso dos), y el sistema de referencia espacial. 
En este caso la localización de las ciudades se marcará usando coordenadas del sistema de 
referencia EPSG:4326.

::

  demo=# SELECT AddGeometryColumn ( 'cities', 'the_geom', 4326, 'POINT', 2);

Si comprueba en este momento la tabla cities debería ver la nueva columna y que
la tabla no tiene actualmente ninguna fila.

::

  demo=# SELECT * from cities;
   id | name | the_geom 
  ----+------+----------
  (0 rows)

Para añadir filas a la tabla se usan algunas sentencias SQL. Para introducir la geometría dentro de la columna de 
geometrías use la función de PostGIS ``ST_GeomFromText`` , que convierte las coordenadas y el id del 
sistema de referencia espacial, introducidas en formato texto:

::

  demo=# INSERT INTO cities (id, the_geom, name) VALUES (1,ST_GeomFromText('POINT(-0.1257 51.508)',4326),'London, England');
  demo=# INSERT INTO cities (id, the_geom, name) VALUES (2,ST_GeomFromText('POINT(-81.233 42.983)',4326),'London, Ontario');
  demo=# INSERT INTO cities (id, the_geom, name) VALUES (3,ST_GeomFromText('POINT(27.91162491 -33.01529)',4326),'East London,SA');

.. tip:: Use las teclas de las flechas del teclado para reutilizar y editar sentencias en la línea de comandos.

Como puede ver, este paso llega a ser tedioso rápidamente. Afortunadamente hay formas mucho más fáciles de 
introducir datos dentro de las tablas PostGIS. Pero ahora hay tres ciudades en su base de datos y ya puede trabajar con 
esos datos.


Consultas simples
=========================

Para seleccionar datos de una tabla PostGIS se pueden aplicar todas las operaciones SQL comunes.

::

 demo=# SELECT * FROM CITIES;
  id |      name       |                      the_geom                      
 ----+-----------------+----------------------------------------------------
   1 | London, England | 0101000020E6100000BBB88D06F016C0BF1B2FDD2406C14940
   2 | London, Ontario | 0101000020E6100000F4FDD478E94E54C0E7FBA9F1D27D4540
   3 | East London,SA  | 0101000020E610000040AB064060E93B4059FAD005F58140C0
 (3 rows)

De esta forma obtiene una versión hexadecimal del campo geometría difícil de interpretar.

Si desea volver a echar un vistazo a su geometría en formato WKT, puede usar las funciones ST_AsText(the_geom) o ST_AsEwkt(the_geom). 
También puede usar ST_X(the_geom), ST_Y(the_geom) para obtener el valor numérico de las coordenadas:

::

 demo=# SELECT id, ST_AsText(the_geom), ST_AsEwkt(the_geom), ST_X(the_geom), ST_Y(the_geom) FROM CITIES;
  id |          st_astext           |               st_asewkt                |    st_x     |   st_y    
 ----+------------------------------+----------------------------------------+-------------+-----------
   1 | POINT(-0.1257 51.508)        | SRID=4326;POINT(-0.1257 51.508)        |     -0.1257 |    51.508
   2 | POINT(-81.233 42.983)        | SRID=4326;POINT(-81.233 42.983)        |     -81.233 |    42.983
   3 | POINT(27.91162491 -33.01529) | SRID=4326;POINT(27.91162491 -33.01529) | 27.91162491 | -33.01529
 (3 rows)


Consultas espaciales
======================

PostGIS añade a PostgreSQL muchas funciones con funcionalidad espacial.
Una de ellas, y que ya ha visto, es ST_GeomFromText que convierte WKT a geometría.
La mayor parte de las funciones empiezan con ST (para tipo espacial). Hay un listado 
de ellas en una sección de la documentación de PostGIS.  A continuación, 
usará una para responder una cuestión práctica - ¿Qué distancia en metros hay entre estas tres ciudades llamadas Londres, unas de otras, si asumimos que
la tierra es esférica? 

::

 demo=# SELECT p1.name,p2.name,ST_Distance_Sphere(p1.the_geom,p2.the_geom) from cities as p1, cities as p2 where p1.id > p2.id;
       name       |      name       | st_distance_sphere 
 -----------------+-----------------+--------------------
  London, Ontario | London, England |   5875766.85191657
  East London,SA  | London, England |   9789646.96784908
  East London,SA  | London, Ontario |   13892160.9525778
  (3 rows)

Con lo cual obtiene la distancia, en metros, entre cada par 
de ciudades. Tenga en cuenta que la parte 'where' de la consulta es 
lo que evita que obtenga la distancia entre una ciudad y sí misma
(que en todos los casos será cero) o las distancias inversas entre las 
ciudades que aparecen en la tabla de arriba (la distancia entre Londres de Inglaterra 
y Londres de Ontario es la misma que de Londres de Ontario a Londres de Inglaterra). Intente hacer la misma 
consulta sin incluir la parte del 'where' y mire el resultado que obtiene.

También puede medir la distancia empleando un elipsoide mediante una función diferente, 
especificando el nombre del elipsoide, el semieje mayor y el parámetro del inverso del aplanamiento:

::

  demo=# SELECT p1.name,p2.name,ST_Distance_Spheroid(
          p1.the_geom,p2.the_geom, 'SPHEROID["GRS_1980",6378137,298.257222]'
          ) 
         from cities as p1, cities as p2 where p1.id > p2.id;
        name       |      name       | st_distance_spheroid 
  -----------------+-----------------+----------------------
   London, Ontario | London, England |     5892413.63776489
   East London,SA  | London, England |     9756842.65711931
   East London,SA  | London, Ontario |     13884149.4140698
  (3 rows)



Generar un mapa
======================

Para producir un mapa a partir de datos PostGIS, necesita un cliente que pueda obtener los datos. La mayoría 
de los programas SIG de escritorio de código abierto pueden hacerlo - por ejemplo, Quantum GIS, gvSIG o uDig. 
A continuación verá cómo generar un mapa con Quantum GIS.

Inicie Quantum GIS y elija ``Añadir capa PostGIS`` del menú Capa. Como no ha usado PostGIS desde QGIS
antes, obtendrá un lista vacía de conexiones PostGIS.

.. image:: ../../images/screenshots/1024x768/postgis_add.png
  :scale: 100 %
  :alt: Add a PostGIS layer
  :align: center

Pinche en 'nuevo' y introduzca los parámetros de conexión. Usaremos la base de datos Natural Earth 
que se encuentra en el DVD. No hay nombre de usuario ni contraseña porque la seguridad está configurada 
para permitir que acceda. Desactive la opción sobre tablas sin geometrías si está activada. De esa forma 
las cosas serán un poco más fáciles.

.. image:: ../../images/screenshots/1024x768/postgis_naturalearth.png
  :scale: 100 %
  :alt: Connect to Natural Earth
  :align: center

Pinche el botón ``Probar conexión``, y si todo está correcto obtendrá un mensaje afirmativo. 
Pinche ``OK`` y su información de conexión se guardará con el nombre en la lista de conexiones. Ahora ya puede 
pinchar ``Conectar`` y obtener un listado de las tablas espaciales de la base de datos:

.. image:: ../../images/screenshots/1024x768/postgis_ne_layers.png
  :scale: 100 %
  :alt: Natural Earth Layers
  :align: center

Elija la tabla lagos y pinche ``Añadir`` (no ``Cargar`` - que guarda las consultas). Esta capa se debería cargar en QGIS:

.. image:: ../../images/screenshots/1024x768/postgis_ne_lakes.png
  :scale: 50 %
  :alt: My First PostGIS layer
  :align: center

Debería poder ver un mapa de los lagos. Como QGIS no sabe que son lagos, es posible que no los pinte
con color azul. Use la documentación de QGIS para averiguar cómo cambiarlo. A continuación, haga zoom 
a un famoso grupo de lagos de Canadá.


Crear una tabla espacial de forma fácil
==============================================

La mayor parte de las herramientas de escritorio de OSgeo tienen funciones para importar datos espaciales desde archivos, 
como por ejemplo shapefiles, dentro de bases de datos PostGIS. También usaremos QGIS para mostrar cómo se hace.

Se pueden importar shapefiles a QGIS a través de un práctico plugin PostGIS Manager. Para instalarlo, vaya al menú 
Complementos, seleccione ``Administrar complementos`` y seleccione el ``PostGIS Manager``. Marque esa opción y pulse OK. 
En el menú Complementos debería tener un acceso al PostGIS Manager que le da la opcción de iniciar el gestor.

Entonces el gestor usará las preferencias que usted ha definido previamente para conectar a la base de datos Natural Earth. 
Si le pide la contraseña déjela en blanco. Verá la ventana principal del gestor.

.. image:: ../../images/screenshots/1024x768/postgis_ne_manager.png
  :scale: 75 %
  :alt: PostGIS Manager Plugin
  :align: center

Puede usar las otras pestañas del panel de la derecha para comprovar los atributos de la capa e incluso 
puede obtener un mapa básico con capacidad de zoom y panorámica. En este caso hemos seleccionado la capa de lugares poblados 
y hemos hecho zoom a una pequeña isla que concemos:

.. image:: ../../images/screenshots/1024x768/postgis_ne_preview.png
  :scale: 75 %
  :alt: PostGIS Manager Preview
  :align: center

Ahora use el PostGIS manager para importar un shapefile dentro de la base de datos. Usará los datos del 
síndrome de muerte súbita infantil (SIDS, por sus siglas en inglés) de Carolina del Norte  que están 
incluidos en uno de los complementos del paquete de estadísticas de R.

Dentro del menú ``Datos`` elija la opción ``Cargar datos desde shapefile``. Pinche el
botón ``...`` y busque el shapefile ``sids.shp`` en el paquete ``maptools`` de R:

.. image:: ../../images/screenshots/1024x768/postgis_find_shape.png
  :scale: 75 %
  :alt: Find the shapefile
  :align: center

No cambie nada más y pulse ``Cargar``.

.. image:: ../../images/screenshots/1024x768/postgis_ne_load.png
  :scale: 75 %
  :alt: Import a shapefile
  :align: center

El shapefile se debería importar a PostGIS sin errores. Cierre el PostGIS Manager y vuelva a la ventana principal de QGIS.

A continuación cargue los datos de SIDS en el mapa usando la opción 'Añadir capa PostGIS'. 
Cambiando de orden algunas capas y coloreando un poco debería ser capaz de obtener un mapa de coropletas del recuento
de síndromes de muerte súbita infantil en Carolina del Norte:

.. image:: ../../images/screenshots/1024x768/postgis_ne_final.png
  :scale: 75 %
  :alt: SIDS data mapped
  :align: center




Conozca pgAdmin III
=======================

Puede usar el cliente gráfico de bases de datos ``pgAdmin III`` para consultar y modificar sus bases 
de datos no espaciales. Este es el cliente oficial de PostgreSQL, y permite que use el lenguaje SQL para manipular sus tablas de datos. 

.. image:: ../../images/screenshots/800x600/pgadmin.gif
  :scale: 50 %
  :alt: pgAdmin III
  :align: center

Inténtelo
=============

A continuación se presentan algunos desafíos adicionales para que los intente llevar a cabo:

#. Pruebe más funciones espaciales como ``st_buffer(the_geom)``, ``st_transform(the_geom,25831)``, ``x(the_geom)`` .
Puede consultar documentación completa en http://postgis.org/documentation/

#. Exporte sus tablas a shapefiles con ``pgsql2shp`` desde la línea de comandos.

#. Intente usar ``ogr2ogr`` desde línea de comandos para importar/exportar datos a su base de datos.


Lo próximo
==============

Éste es solamente el primer paso en el proceso de usar PostGIS. Hay muchas más funcionalidades que puede probar.

Página Web del Proyecto PostGIS 

http://postgis.org

Documentación de PostGIS 

http://postgis.org/documentation/
