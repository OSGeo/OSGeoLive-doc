:Author: Hamish Bowman
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: (c) 2011 by The OSGeo Foundation

.. _osm-quickstart-es:
 
.. image:: ../../images/project_logos/logo-osm.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.osm.org


********************************************************************************
Guía de inicio rápido de OpenStreetMap 
********************************************************************************

Programas
================================================================================

JOSM
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**JOSM** (Java OpenStreetMap Editor) es un editor para OpenStreetMap (OSM)
escrito en Java. La versión actual soporta trazas GPX únicas, datos de trazas 
GPX almacenadas en la base de datos OSM y nodos existentes, segmentos de líneas 
y etiquetas de metadatos de la base de datos OSM.

* Web: http://josm.openstreetmap.de

La colección de extensiones para JOSM contiene los siguientes complementos:

* agpifoj	     - Crea una nueva capa con imágenes geoetiquetadas.
* colorscheme	     - Permite crear diferentes esquemas de colores.
* livegps	     - Soporta GPS en vivo junto con gpsd.
* measurement	     - Añade un diálogo y una capa para medir la longitud y el ángulo de segmentos y crear rutas de medición.
* openvisible	     - Permite abrir archivos gpx y osm que interseccionan con el área visible mostrado en la pantalla.
* slippymap	     - Muestra el slippy map en JOSM.
* surveyor	     - Permite añadir marcadores/nodos en las posiciones gps actuales.
* utilsplugin	     - Varios programas de ayuda.
* validator	     - Validador de datos.
* wmsplugin	     - Muestra imágenes de fondo de cualquier fuente WMS.


Lecturas adicionales
--------------------------------------------------------------------------------

* Manual en línea: http://www.use-it.be/europe/docs/OSMmanual/
* Guía del usuario: http://wiki.openstreetmap.org/wiki/JOSM/Guide
* `Videotutorial <http://showmedo.com/videotutorials/video?name=1800050&amp;fromSeriesID=180>`_
* Para abrir lo datos de ejemplo ir a :menuselection:`Archivo --> Abrir... --> 
  /usr/local/share/data/osm/feature_city.osm.bz2`
* Hay otras instrucciones adicionales que se muestran cuando se inicia la aplicación.


Merkaartor
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

** Merkaartor ** es un editor de mapas para OpenStreetMap que utiliza la biblioteca Qt.
Es un poco más fácil de usar que JOSM, pero dispone de menos funcionalidades.

* Web: http://merkaartor.be
* Ayuda en línea: http://www.merkaartor.org/Documentation/


Gosmore
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

** Gosmore ** es un visor de OpenStreetMap, enrutador y cliente de búsqueda con
soporte para la síntesis de voz y para obtener la ubicación actual del usuario 
actual utilizando GPS 'gpsd <http://gpsd.berlios.de>_'.

* Web: http://wiki.openstreetmap.org/index.php/Gosmore
* Wiki de ayuda en línea: http://wiki.openstreetmap.org/wiki/Gosmore#User_Interface
* Antes de poner en funcionamiento Gosmore necesitarás convertir un fichero de 
  datos `planet-*.osm`. Algunos datos le son proporcionados en el directorio 
  `/usr/local/share/osm/`.

Importar con:

::

  bzip2 -dc /usr/local/share/data/osm/feature_city.osm.bz2 | gosmore rebuild

Esto creará un archivo gosmore.pak


Osmarender
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	
** Osmarender ** es una herramienta de renderizado basado en reglas para generar 
imágenes SVG proveniente de datos OSM. Toma como entrada un conjunto de datos de 
OpenStreetMap y un archivo de reglas. Genera una imagen SVG que es representada 
de acuerdo con los estilos definido en el archivo de reglas. 

* Web: http://wiki.openstreetmap.org/wiki/Osmarender

Ejemplo:

..note:: Esto requiere aproximadamente 1GB libre de RAM y lleva unos días para 
         procesar la totalidad de la ciudad. Una sencilla localidad o suburbio 
         debería ser bastante más manejable. Ver 
         `Xapi <http://wiki.openstreetmap.org/wiki/Xapi>`_ en la Wiki de OSM 
         para mas detalles acerca de cómo descargar paquetes más pequeños en un 
         archivo de ''.osm'', o utilizar *JOSM* o *Merkaartor* para descargar 
         una porción más pequeña.

::

  cp /usr/local/share/data/osm/feature_city.osm.bz2 .
  bzip2 -d feature_city.osm.bz2
  osmarender feature_city.osm

Puede ver los resultados en un visor de imágenes SVG como `Inkscape` o `Firefox`:

::

  firefox feature_city.svg


osm2pgsql
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

** osm2pgsql ** es un programa que convierte datos OpenStreetMap (.OSM) en un 
formato que se puede cargar en PostgreSQL (PostGIS). A menudo es utilizada para 
representar datos OSM visualmente mediante Mapnik, ya que Mapnik puede realizar 
consultas PostgreSQL sobre datos del mapa, pero no funciona directamente con 
archivos OSM.

* Web: http://wiki.openstreetmap.org/wiki/Osm2pgsql

