:Author: OSGeo Live
:Author: Pirmin Kalberer
:Version: osgeo-live4.5
:License: Creative Commons

.. _qgis_mapserver-quickstart:
 
.. image:: ../../images/project_logos/logo-qgis_mapserver.png
  :scale: 100 %
  :alt: project logo
  :align: right

***************************************
Guía de inicio rápido de QGIS mapserver
***************************************

QGIS mapserver ofrece un servicio web de mapas (WMS) basado en la librerías de la aplicación de escritorio de Quantum GIS (QGIS).

Esta Guía de Inicio Rápido describe como:

  * actualizar un proyecto de QGIS y representarlo con QGIS Mapserver
  * crear un nuevo proyecto de QGIS y abrir el WMS directamente en un navegador

Iniciar el visor GeoExt
=======================

OSGeo Live contiene un ejemplo de visor web de mapas basado en el marco de desarrollo Javascript
GeoExt y usando QGIS mapserver para representar el mapa.

* Clic en :menuselection:`Escritorio --> Spatial Tools --> QGIS Mapserver`

Debe ver una ventana del navegador con un visor web de mapas mostrando un mapa del mundo.
   
.. image:: ../../images/screenshots/800x600/qgis_mapserver_browser.jpg

Ahora se va a cambiar el estilo del mapa usando QGIS.


Editar el proyecto de QGIS
==========================

#. Clic en :menuselection:`Escritorio --> Desktop GIS --> Quantum GIS`.

#. Seleccione :menuselection:`Archivo --> Abrir proyecto...` en la barra de menús.

#. Seleccione :file:`QGIS-NaturalEarth-Example.qgs` y pulse :guilabel:`Abrir`.

   * Debe ver el mismo mapa del mundo representado por QGIS.
     Ahora se va a cambiar el estilo de los ríos y ver el resultado en el visor web de mapas.

#. Doble clic en **10m_rivers_lake_centerlines** en el árbol de capas.

#. Cambie el color en Opciones de línea exterior a un diferente tono de azul.

#. Pulse :guilabel:`Aceptar`.

   * Los ríos ahora son representados en un nuevo color.

#. Guarde el proyecto desde :menuselection:`Archivo --> Guardar proyecto`.

#. Volver abrir el navegador web

#. Acercar

   * Ahora debe ver los ríos representados con el nuevo color.


Crear un nuevo proyecto de QGIS
===============================

#. Volver abrir QGIS

#. Seleccione :menuselection:`Archivo --> Nuevo proyecto`.

#. Clic en :menuselection:`Capa --> Añadir capa vectorial...`.

#. Navegar a los datos :file:`/home/user/data/natural_earth/10m_admin_0_countries.shp`.

#. Pulse :guilabel:`Abrir`.

   * Debe ver todos los países del mundo.

#. Guarde el proyecto desde :menuselection:`Archivo --> Guardar proyecto`.

#. Use el nombre de archivo :file:`/home/user/world.qgs` y pulse :guilabel:`Guardar`.

#. Abra la `URL WMS <http://localhost/cgi-bin/qgis_mapserv?map=/home/user/world.qgs&SERVICE=WMS&VERSION=1.3.0&REQUEST=GetMap&BBOX=-91.901820,-180.000000,83.633800,180.000000&CRS=EPSG:4326&WIDTH=722&HEIGHT=352&LAYERS=10m_admin_0_countries&STYLES=default&FORMAT=image/png&DPI=96&TRANSPARENT=true>`_.

   * Debe ver los países de mundo, esta vez representados por QGIS mapserver.


¿Qué sigue ahora?
=================

Para aprender más sobre QGIS mapserver, puede seguir los artículos del blog de  `Linfiniti <http://linfiniti.com/2010/08/qgis-mapserver-a-wms-server-for-the-masses/>`_ o `3LIZ <http://www.3liz.com/blog/rldhont/index.php/2010/12/03/355-qgis-mapserver-an-wysiwyg-open-source-wms-server>`_.
