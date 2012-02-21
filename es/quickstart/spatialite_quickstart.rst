:Author: OSGeo-Live
:Author: Micha Silver
:Version: osgeo-live5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _spatialite-quickstart:
 
.. image:: ../../images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right

********************************************************************************
Guía de Inicio Rápido de SpatiaLite
********************************************************************************

SpatiaLite es un motor de base de datos SQLite al que se le han agregado funciones espaciales.

Esta guía describe cómo abrir una base de datos desde la línea de comandos y cómo usar la interfaz gráfica.


Usando spatialite
================================================================================

* Abrir una consola y abrir una base de datas de ejemplo con **spatialite**::

   spatialite /home/user/data/spatialite/regions.sqlite

* Comando útiles en la interfaz de comandos::

   .help
   .tables
   .quit

* Algunas consultas espaciales de ejemplo::
   
    SELECT lc.NOME, lc.NOME_PROV, lc.COM, mh.Perimeter 
        FROM LocalCouncils AS lc, MunicipalHalls AS mh 
        WHERE CONTAINS(lc.Geometry,mh.Geometry) AND lc.NOME LIKE 'VILLA%' 
        ORDER BY lc.NOME;
   .headers ON
   SELECT COMUNE, LOCALITA, Area(Geometry)/1000000 AS "Area Sq.km." 
        FROM PopulatedPlaces ORDER BY "Area Sq.km." DESC LIMIT 10 ; 
   SELECT lc.NOME AS "Provence Name", X(mh.Geometry) AS X_COORD, Y(mh.Geometry) AS Y_COORD 
        FROM LocalCouncils AS lc, MunicipalHalls AS mh 
        WHERE mh.COMU=lc.COM ORDER BY "Provence Name" LIMIT 10;


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

  y hacer clic en el botón "Execute SQL" de la derecha
   
   
Usando spatialite-gis
================================================================================

* Desde la carpeta GIS del Escritorio ejecutar spatialite-gis
* Hacer clic en el botón "Connecting existing SQLite DB"y conectar con
  ``/home/user/data/spatialite/trento.sqlite``
  
Deberías ver un mapa de la provincia de Trento en Italia.

- Haz clic con el botón derecho en la capa Highways y
  selecciona :menuselection:`Hide`
- Haz clic con el botón derecho en la capa LocalCouncilsTrento y selecciona
  :menuselection:`Layer Configuration->Classify` y elige para la columna
  "Shape Area". Selecciona cuatro clases y haz clic en las manchas máxima
  y mínima para seleccionar los colores oscuro y claro. Ahora haz clic
  para ver un mapa de coropletas de las áreas de la provincia.
- Cambia el color del borde haciendo clic con el botón derecho en
  LocalCouncils y selecciona :menuselection:`Layer configuration->Graphics`
  y elige un color diferente en Border Graphics.
- Acérquese ligeramente. Haga clic con el botón derecho en la capa
  PopulatedPlaces y seleccione :menuselection:`Indentify on`. Ahora haga
  clic en una de las zonas pobladas para ver los atributos de esa entidad.


Cosas para probar
================================================================================

Algunos desafíos más que usted puede probar:

* Inspeccionar geometrías con spatialite-gui
* Abrir y editar capas de SpatiaLite con QGIS


¿Qué es lo siguiente?
================================================================================

Para aprender más acerca de SpatiaLite, un buen punto de partida es la `página del proyecto Spatialite`_, y asegúrese de visitar el tutorial `Spatialite cookbook`_.



.. _`página del proyecto Spatialite`: https://www.gaia-gis.it/fossil/libspatialite/index

.. _`Spatialite cookbook`: http://www.gaia-gis.it/gaia-sins/spatialite-cookbook/index.html



