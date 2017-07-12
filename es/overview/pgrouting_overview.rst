:Author: Daniel Kastl
:Reviewer: Cameron Shorter, Jirotech
:Translator: Celia Virginia Vergara Castillo
:Translator: Mauricio Miranda
:Translator: Roberto Antolín
:Version: osgeo-live7.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-pgRouting.png
  :alt: Logo de pgRouting 
  :align: right
  :target: http://www.pgrouting.org/

.. image:: /images/logos/OSGeo_community.png
   :scale: 100
   :alt: OSGeo Community Project
   :align: right
   :target: http://www.osgeo.org

pgRouting
================================================================================

Herramientas SIG.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pgRouting extiende las bases de datos geoespaciales :doc:`PostGIS <postgis_overview>`/`PostgreSQL <http://postgresql.org>`_  proporcionando enrutamiento geoespacial y otras funcionalidad de análisis de redes.

Las ventajas del enfoque de base de datos de enrutamiento son:

* Datos y atributos pueden ser modificados por muchos clientes, como :doc:`Quantum GIS <qgis_overview>` y :doc:`uDig <udig_overview>` a través de JDBC, ODBC o directamente utilizando Pl/pgSQL. Los clientes pueden ser PCs o dispositivos móviles.
* Cambios en los datos pueden ser reflejados instantáneamente a través del motor de enrutamiento. No hay ninguna necesidad de precálculos.
* El parámetro  "cost" puede ser calculado dinámicamente a través de consultas SQL y su valor puede provenir de múltiples campos o tablas.

pgRouting está disponible bajo la licencia GPLv2 y es apoyado por una comunidad creciente de individuos, empresas y organizaciones.

.. image:: /images/screenshots/800x600/pgrouting.png
  :scale: 70 %
  :alt: consulta de pgRouting en pgAdminIII
  :align: right

Características principales
--------------------------------------------------------------------------------

pgRouting proporciona funciones para:

* Camino más corto de todos los pares, algoritmo de Johnson
* Camino más corto de todos los pares, algoritmo de Floyd-Warshall
*  Camino más corto A*
* Camino más corto bidireccional de Dijkstra 
* Camino más corto bidireccional A*
* Camino más corto  de Dijkstra
* Distancia de Manejo
* K caminos más cortos, Múltiples rutas alternativas.
* K-Dijkstra, Camino más corto uno a muchos.
* Problema del Vendedor Viajante
* Camino más corto con restricción de giros (TRSP)

Aprenda más acerca del uso de pgRouting en su aplicación leyendo la `Documentación <http://docs.pgrouting.org>`_.


.. Implementación de normas
   ---------------------

.. * Compatible con los estándares OGC

Detalles
--------------------------------------------------------------------------------

**Página Web:** http://www.pgrouting.org

**Licencia:** GNU General Public License (GPL) version 2

**Version del Software:** 2.0

**Platformas apoyadas:** Linux, Windows, Mac

**Interfaces API:** SQL

**Soporte comercial:** http://www.pgrouting.org/support.html

Iniciando rápidamente
--------------------------------------------------------------------------------

* :doc:`Documentation de Inicio rápido  <../quickstart/pgrouting_quickstart>`
