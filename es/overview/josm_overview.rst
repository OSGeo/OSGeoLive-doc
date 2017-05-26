:Author: OSGeo-Live
:Author: Javier Sanchez, GeoNaTec
:Reviewer: Cameron Shorter, Jirotech
:Translator: Aitor Freire Astray
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-josm.png
  :alt: project logo
  :align: right
  :target: http://josm.openstreetmap.de

JOSM
================================================================================

Editor de escritorio de datos de OpenStreetMap
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

JOSM es un editor de escritorio offline para datos de OpenStreetMap con muchas características y extensible, escrito en Java.

Soporta la carga de tracks GPX independientes, datos de tracks GPX así como la edición de datos existentes en la base de datos OSM: nodos (puntos), vías (líneas), etiquetas de metadatos (información de nombre/valor) y relaciones (secuencias ordenadas de puntos y líneas).
Los tracks GPX, normalmente se descargan previamente de GPS o de otras fuentes.

Hay muchos plugings especializados para JOSM, disponibles para descargar e instalar.

.. image:: ../../images/screenshots/1024x768/josm_inteface.png
  :scale: 55 %
  :alt: JOSM Editor.
  :align: right

Funciones principales
--------------------------------------------------------------------------------

* Herramientas comunes con SIG de escritorio:

  * Personalización de la barra de herramientas, control de la Vista (zoom, pan. etc), estilos, gestión de iconos y capas.

* Descarga y carga de datos vectoriales OSM.

* Carga de datos locales:

  * Archivos NMEA-0183: .nmea, .nme, .nma, .log, .txt
  * Archivos OSM: .osm, .xlm, .osmbz2, .osmbz
  * Archivos de intercambio de OSM: .osc, .osc.bz2, .osc.bz, .osc.gz
  * imágenes (.jpg)

* Imágenes:
  
  * Visualizado de mapas base de OSM, Bingsat, Lansat, satélite MapBox, MapQuest Open Aerial u otras fuentes WMS.

* Herramientas de edición:

  * Nodos: fundir, unir, despegar, distribuir, alinear en círculo, alinear, unir un nodo a una vía, y mucho más.
  * Vías: cortar, combinar, invertir, simplificar, despegar vías, y mucho más.
  * Áreas: unir áreas superpuesas, crear multipolígonos, y mucho más.

* Audio mapping: manejo de fuentes de audio.

* Foto mapping: manejo de fuentes de fotos.
 
* Plugins: Listado de plugins especializados disponibles para descargar.


Estándares implementados
--------------------------------------------------------------------------------

* JOSM visualiza capas WMS, pero emplea la `OSM API <http://wiki.openstreetmap.org/wiki/API_v0.6>`_ para comunicarse con la base de datos de OSM.


Detalles
--------------------------------------------------------------------------------

**Sitio web:** http://http://josm.openstreetmap.de/

**Licencia:** GNU General Public License (GPL) versión 2. Nota: los plugings de JOSM podrían emplear otra licencia.

**Versión de software:** r11427

**Plataformas soportadas:** Windows, Linux, Mac

**Interfaces API:** Java

**Soporte:** http://www.osgeo.org/search_profile


.. Guía rápida
.. --------------------------------------------------------------------------------
.. 
.. * :doc:`Guía de inicio rápido <../quickstart/josm_quickstart>`
