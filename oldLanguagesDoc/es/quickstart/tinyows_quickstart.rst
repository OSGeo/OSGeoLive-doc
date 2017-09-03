:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Translator: Nacho Varela
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-TinyOWS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://mapserver.org/trunk/tinyows/

********************************************************************************
Guía de inicio rápido de TinyOWS 
********************************************************************************

TinyOWS es un Servicio Web de Eventos Transaccional (WFS-T) de alto rendimiento,
ligero y fácil de desplegar mediante una interfaz CGI o FastCGI 
y usando :doc:`PostGIS <../overview/postgis_overview>` para el almacenamiento de datos.

Esta guía describe como:

  * mostrar una capa WFS en QGIS
  * editar una capa WFS-T en QGIS


Mostrar una capa WFS en QGIS
================================================================================

#. Abrir el programa QGIS :menuselection:`Geospatial --> Desktop GIS --> Quantum GIS`.

#. Pulsar :menuselection:`Capa --> Añadir capa PostGIS...`.

   * Primero mostramos la capa original en PostGIS.

#. Pulsar :guilabel:`Nuevo`.

#. Escribir  **tinyows_demo** como nombre de la Conexión y Base de Datos. 

#. Pulsar :guilabel:`Aceptar`.

#. Pulsar :guilabel:`Conectar`.

#. Seleccionar **france** en el listado de tablas.

#. Presionar :guilabel:`Añadir`.

#. Hacer zoom

#. Seleccionar :menuselection:`Complementos -> Administrar complementos -> Complemento de WFS -> Aceptar`

   * Habilitar el "WFS Layer plugin".

#. Hacer clic en :menuselection:`Capa --> Añadir capa WFS...`.

   * Ahora se añade la capa WFS basada en la misma tabla.

#. Pulsar :guilabel:`Nuevo`.

#. Escribir **tinyows** como nombre y **http://localhost/cgi-bin/tinyows** como URL

#. Pulsar :guilabel:`Aceptar`.

#. Pulsar :guilabel:`Conectar`.

#. Seleccionar **ows:france** en la lista de capas.

#. Habilitar la opción :guilabel:`Solicitar sólo objetos espaciales que solapen con la extensión de la vista actual`.

#. Pulsar :guilabel:`Aceptar`.

   * Ahora la capa WFS layer es mostrada:

.. image:: /images/screenshots/tinyows/tinyows_wfs_layer.png
  :scale: 80 %

Editar datos con WFS-T en QGIS
================================================================================

#. Hacer clic :menuselection:`Capa --> Conmutar Edición`.

#. Hacer clic :menuselection:`Edición --> Herramienta de Nodos`.

#. Mover un vértice (aspa) a otra posición.

#. Hacer clic :menuselection:`Capa --> Guardar Edición`.

#. Oculta la capa desmarcando **tows:france** en el listado de capas.

   * El elemento editado se debería ver con un color diferente procedente directamente de la base de datos PostGIS.


Más información
================================================================================

Para aprender más sobre TinyOWS, un punto de partida es la `TinyOWS Documentation`_ en la página web de MapServer.

.. _`TinyOWS Documentation`: http://mapserver.org/trunk/tinyows/




