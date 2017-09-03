:Author: OSGeo-Live
:Author: Petr Pridal
:Author: Christopher Fleet
:Author: Angelos Tzotsos
:Translator: Mario Andino
:Translator: David Mateos
:Version: osgeo-live8.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-mapslicer.png
  :scale: 100 %
  :alt: project logo
  :align: right

Inicio Rápido de MapSlicer
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`MapSlicer <https://wiki.osgeo.org/wiki/MapSlicer>`_ Provee una forma sencilla de crear un conjunto de mosaicos a partir de cualquier mapa de imagen georeferenciado. Los mosaicos pueden ser representados como una capa de mapas georeferenciados en un servidor web. De acuerdo a la especificación de la `Open Source Geospatial Foundation's (OSGeo's) <http://www.osgeo.org/>`_ `Tile Map Service (TMS) <http://wiki.osgeo.org/wiki/Tile_Map_Service_Specification>`_.

* **Opciones de Origen**: Cualquier archivo de imagen georeferenciado, ej. un TIFF, JPEG de ArcGIS, QGIS.
* **Opciones de Salida**: Un conjunto de directorios con mosaicos de imagenes que pueden ser copiadas a un servidor web para representación como capa georeferenciada.
* **Fortalezas**: MapSlicer es simple, gratis, software de fuente abierta, con un aistente fácil, descrito a continuación, para guía a través de las opciones.

MapSlicer toma ventaja del hecho de que  `Google Maps <http://maps.google.com/>`_ , `Microsoft Bing <http://maps.bing.com>`_ , `Yahoo Maps <http://maps.yahoo.com/>`_ , y otros proveedores de mapas online como `OpenStreetMap <http://www.openstreetmap.org/>`_  utilizan la misma proyección y la misma forma, por lo tanto los mosaicos son compatibles. La página `Tiles à la Google Maps <http://www.maptiler.org/google-maps-coordinates-tile-bounds-projection/>`_ describe e ilustra acerca de esto. MapSlicer prepara los mosaicos usando esta especificación como una forma fácil y rápida de preparar un mapa georeferenciado en una página web híbrida.

Inicio de MapSlicer
--------------------------------------------------------------------------------

1. Descarga MapSlicer a tu computadora o inicialo directamente desde este LiveDVD.

2. Selecciona **Tile Profile**. Elige *Google Maps Compatible (Spherical Mercator)* para una publicación web standard. Elige *Google Earth (KML SuperOverlay)* si también deseas generar un archivo kml para Google Earth. Clic en *Continue*.

.. image:: /images/projects/mapslicer/mapslicer1.jpg
    :width: 60 %
    :align: center

3. Elige los **Archivos de origen de datos**. navega para seleccionar la imagen raster de la cual crear mosaicos. Tambien es posible seleccionar un color (Sin datos) que aparecerá como transparente en la imagen resultante. Clic en *Continue*.

.. image:: /images/projects/mapslicer/mapslicer2.jpg
    :width: 60 %
    :align: center

4. Especifica el **Sistema de Referencia Espacial / Sistema de Coordenadas** de la imagen. Especifica el numero de id de la base de datos EPSG/ESRI. Si tienes datos por ejemplo de Reino Unido la transformación debería incluir el parametro `EPSG:27700 con TOWGS84 <http://help.maptiler.org/coordinates/europe/uk>`_. Clic en *Continue*.

.. image:: /images/projects/mapslicer/mapslicer3.jpg
    :width: 60 %
    :align: center

5. Especifica los detalles acerca de la **Pirámide de mosaicos**. Los parámetros normales de niveles de zoom y formato de archivo son normalmente los mejor. Clic en *Continue*.

.. image:: /images/projects/mapslicer/mapslicer4.jpg
    :width: 60 %
    :align: center

6. Especifica los detalles sobre **Carpetas de destino y direcciones / URLs** para el conjunto de mosaicos. Si no los conoces, pueden ser agregados por defecto a archivos de *googlemaps.html* y *openlayers.html* después de la generación de los mosaicos. Clic en *Continue*.

.. image:: /images/projects/mapslicer/mapslicer5.jpg
    :width: 60 %
    :align: center

7. Marca las  **visualizaciones que deberian ser generados**. Por defecto, son generados un archivo *googlemaps.html* y *openlayers.html*. también puedes seleccionar crear un archivo kml de superposición para Google Earth. Clic en *Continue*.

.. image:: /images/projects/mapslicer/mapslicer6.jpg
    :width: 60 %
    :align: center

8. Especifica los **Detalles para generar las visualizaciones**, como el titulo, Derechos de copia, y licencia de las API. Si no los conoces, pueden ser agregados a los archivos por defecto de *googlemaps.html / openlayers.html* despues de la generación de los mosaicos. Clic en *Continue*.

.. image:: /images/projects/mapslicer/mapslicer7.jpg
    :width: 60 %
    :align: center

9. Click en **Render** para iniciar la preparación de la imagen. Cuando termine, MapSlicer muestra un link al conjunto de mosaicos terminado. Abre el archivo *googlemaps.html* o *openlayers.html*  en un navegador para ver el conjunto de mosaicos superpuesta en el mapa en vivo. Para publicarlo en la web, solo copia el conjunto de mosaicos entero y todos los subdirectorios a un servidor web, y edita el archivo googlemaps.html o openlayers.html como lo desees.

10. Cuando termine, MapSlicer muestra un link al conjunto de mosaicos terminado.

.. image:: /images/projects/mapslicer/mapslicer9.jpg
    :align: center

11. Abre el archivo *openlayers.html*  en un navegador para ver el conjunto de mosaicos superpuesta en el mapa en vivo. Para publicarlo en la web, solo copia el conjunto de mosaicos entero y todos los subdirectorios a un servidor web, y edita el archivo googlemaps.html o openlayers.html como lo desees.

.. image:: /images/projects/mapslicer/mapslicer10.jpg
    :align: center

Uso de gdal2tiles para crear una base de datos MBTiles
--------------------------------------------------------------------------------

MapSlicer es esencialmente una interfaz gráfica para el script `gdal2tiles.py`. En el DVD Live también está presente una versión actualizada de  `gdal2tiles.py`. Los árboles de teselas resultantes creados por ese programa se pueden usar con el programa `mb-util` para crear una base de datos mbtiles, para su uso con software de smartphone como  `Geopaparazzi <http://geopaparazzi.github.io/geopaparazzi/>`.

Para crear una base de datos SQLite de MBTiles a partir del arbol de teselas (mosaicos) recientemente creado, abrir una terminal 

::

  cp data/raster/bluemarble.tif .
  mapslicer    # (seleccionar /home/user/bluemarble.tif para la entrada, JPEG como formato)
  mb-util --scheme=tms --image_format=jpg bluemarble bluemarble.mbtiles
  qgis bluemarble.mbtiles

Ver `gdal2tiles.py --help` y `mb-util --help` para información adicional sobre el uso de estas herramientas. 

