:Author: Astrid Emde, material from Frank Warmedam's RasterTutorial
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _gdal_quickstart:
 
.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://gdal.org/


********************************************************************************
Guía de incio rápido GDAL/OGR 
********************************************************************************

No se necesitará nada más que un terminal para seguir esta guía de inicio rápido. Para visualizar los resultados, se puede usar uno de los programas de SIG de escritorio que hay en el OSGeo-Live como :doc:`../overview/qgis_overview`. 

Esta Guía de inicio rápido se divide en 2 partes: GDAL (datos *raster*) y OGR (datos vectoriales). 

En la guía se describe cómo:

GDAL
  * Explorar imágenes con gdalinfo
  * Transformar formatos con gdal_translate 
  * Reproyectar datos con gdalwarp
  * Hacer mosaicos de datos con gdal_warp o gdal_merge.py
  * Build a *shapefile* as a raster tileindex with gdaltindex
   

OGR
  * Obtener información sobre datos con ogrinfo 
  * Usar ogr2ogr para transformar datos a otros formatos
 

Toma de contacto con GDAL
================================================================================

Los datos de prueba se encuentran en :file:`/usr/local/share/data`. En esta guía, se usarán tambień los datos de :doc:`Natural Earth data <../overview/naturalearth_overview>`. Para ello se utilizará una copia de los datos. Así, el primer paso es copiar el juego de datos en el directorio home.

:: 
  
  cd /home/user
  cp -R /usr/local/share/data/natural_earth/ ./gdal_natural_earth 

 
Hay un fichero Raster y un fichero tfw de NaturalEarth Raster en:
:: 

 cd /home/user/gdal_natural_earth/HYP_50M_SR_W


.. tip:: Se puede abrir el archivo con un SIG de Escritorio como QGIS y visualizar los datos con los que se trabajará.

Obtener información sobre datos *raster* con gdalinfo
================================================================================
:: 
  
      gdalinfo HYP_50M_SR_W.tif 
	Driver: GTiff/GeoTIFF
	Files: HYP_50M_SR_W.tif
	       HYP_50M_SR_W.tfw
	Size is 10800, 5400
	Coordinate System is `'
	Origin = (-179.999999999999972,90.000000000000000)
	Pixel Size = (0.033333333333330,-0.033333333333330)
	Metadata:
	  TIFFTAG_SOFTWARE=Adobe Photoshop CS3 Macintosh
	  TIFFTAG_DATETIME=2009:09:19 10:13:17
	  TIFFTAG_XRESOLUTION=342.85699
	  TIFFTAG_YRESOLUTION=342.85699
	  TIFFTAG_RESOLUTIONUNIT=2 (pixels/inch)
	Image Structure Metadata:
	  INTERLEAVE=PIXEL
	Corner Coordinates:
	Upper Left  (-180.0000000,  90.0000000) 
	Lower Left  (-180.0000000, -90.0000000) 
	Upper Right ( 180.0000000,  90.0000000) 
	Lower Right ( 180.0000000, -90.0000000) 
	Center      (  -0.0000000,   0.0000000) 
	Band 1 Block=10800x1 Type=Byte, ColorInterp=Red
	Band 2 Block=10800x1 Type=Byte, ColorInterp=Green
	Band 3 Block=10800x1 Type=Byte, ColorInterp=Blue

Nota: 
  * El driver es "GTiff/GeoTIFF"
  * El tamaño es 10800x5400
  * Tiene 3 Bandas de tipo Byte. 
  * Coordenadas
  * Sin sistema de coordenadas



Transformaciones simples de formato
================================================================================

Lo primero es conocer los *drivers* que se pueden utilizar. Se puede usar la opción `--formats` de gdal_translate para ver una lista de los formatos disponibles.

Cada formato informa sobre si es de
  * sólo lectura (ro), 
  * lectura/escritura (rw) o
  * lectura/escritura/actualización (rw+).

::

 gdal_translate --formats

La opción de línea de comando `--format` se puede usar para consultar detalles sobre un driver particular, incluyendo opciones de creación, y tipos de dato permitidos. 
::


 gdalinfo --format jpeg
 gdal_translate --format png 

Transformaciones
================================================================================

Las transformaciones se llevan a cabo con el comando gdal_translate. El formato de salida por defecto es GeoTIFF:

::

 gdal_translate datos_entrada datos_salida
  
::

 gdal_translate HYP_50M_SR_W.tif HYP_50M_SR_W.png 

El ejemplo de arriba, a pesar de indicar como archivo de salida HYP_50M_SR_W.png, daría como resultado un GeoTIFF, ya que es este el formato de salida por defecto.
Para seleccionar un formato de salida, se debe usar la opción `-of` y `-co` para especificar una opción de creación:

::

  gdal_translate -of JPEG -co QUALITY=40 HYP_50M_SR_W.tif HYP_50M_SR_W.jpg

Con `-ot` se puede cambiar el tipo de dato de salida.   

::
 
   gdal_translate -ot Int16 HYP_50M_SR_W.tif HYP_50M_SR_W_Int16.tif

Usar gdalinfo para verificar el tipo de dato en cada caso.


Re-escalado
================================================================================

La opción `-outsize` se puede usar para establecer el tamaño del fichero de salida. 

::

    gdal_translate -outsize 50% 50% HYP_50M_SR_W.tif  HYP_50M_SR_W_small.tif

Usar gdalinfo para verificar el tamaño.

La opción `-scale` sirve para re-escalar datos. También se pueden controlar explícitamente los rangos de entrada y salida. La opción `-mm` de gdalinfo permite  ver los valores min/max de píxel. 

Se puede cortar una imagen en dos con `-srcwin` que hace una copia a partir de la localización de de un píxel o línea (xoff yoff xsize ysize). También se puede usar `-projwin` y definir las esquinas en coordenadas georreferenciadas (ulx uly lrx lry).

::

    gdalinfo -mm HYP_50M_SR_W.tif 
    gdal_translate -srcwin 0 0 5400 5400 HYP_50M_SR_W.tif  west.tif
    gdal_translate -srcwin 0 2700 5400 5400 HYP_50M_SR_W.tif  east.tif
   

Formato _raster_ de teselas con gdaltindex
================================================================================

Se puede crear un shapefile que funcione como formato _raster_ de teselas (en inglés _tileindex_). Para cada imagen, se genera un polígono, que tiene como límites los de los bordes de la imagen y contiene la ruta al fichero _raster_. 

::

 gdaltindex index_natural_earth.shp *st.tif

Se puede revisar el shapefile de salida con QGIS y ogrinfo (más adelante se aprenderá más sobre ogrinfo).    

  .. image:: ../../images/screenshots/800x600/gdal_gdaltindex.png
     :scale: 80

::

  ogrinfo ../HYP_50M_SR_W/ index
  INFO: Open of `../HYP_50M_SR_W/'
      using driver `ESRI Shapefile' successful.

  Layer name: index
  Geometry: Polygon
  Feature Count: 2
  Extent: (-180.000000, -90.000000) - (180.000000, 90.000000)
  Layer SRS WKT: (unknown)
  location: String (255.0)
  OGRFeature(index):0
    location (String) = east.tif
    POLYGON ((-0.00000000001796 90.0,179.999999999964047 90.0,179.999999999964047 -89.999999999982009,-0.00000000001796 -89.999999999982009,-0.00000000001796 90.0))

  OGRFeature(index):1
    location (String) = west.tif
    POLYGON ((-179.999999999999972 90.0,-0.00000000001796 90.0,-0.00000000001796 -89.999999999982009,-179.999999999999972 -89.999999999982009,-179.999999999999972 90.0))
  

Reproyección
================================================================================

Para este proceso, se asume que HYP_50M_SR_W.tif ha sido creada correctamente con sus límites. Como se vio con gdalinfo previamente, no tiene sistema de coordenadas asociado. Así que, como primer paso, hay que asignarle WGS84 como sistema de coordenadas. 

::

     gdal_translate -a_srs WGS84 HYP_50M_SR_W.tif HYP_50M_SR_W_4326.tif

El comando gdalwarp se puede usar para reproyectar imágenes. Aquí, se reproyecta la imagen geográfica WGS84 a la proyección de Mercator:

::

   gdalwarp -t_srs '+proj=merc +datum=WGS84' HYP_50M_SR_W_4326.tif mercator.tif

Después se puede usar gdalinfo para verificar los cambios y ver las características de la imagen.

  .. image:: ../../images/screenshots/800x600/gdal_mercator.png
     :scale: 80

Aquí se reproyecta a proyección ortogonal.  

::

   gdalwarp -t_srs '+proj=ortho +datum=WGS84' HYP_50M_SR_W_4326.tif ortho.tif


.. image:: ../../images/screenshots/800x600/gdal_ortho.png
     :scale: 80

Usando QGIS para visualizarlo, se puede ver que los polos están cortados.Esto se debe a que los bordes de los polos no pueden ser reproyectados por gdalwarp ya que no lee todos los datos. Se puede forzar a gdalwarp a leer un racimo de datos alrededor de los trozos sobrantes como forma de resolver esto. Se puede leer más sobre esto en el Tutorial *Raster* http://trac.osgeo.org/gdal/wiki/UserDocs/RasterProcTutorial.



Mosaicos
================================================================================

gdal_merge.py es un script de python que se puede usar para hacer mosaicos simples. Para unir east.tif y west.tif en un sólo fichero:

::

   gdal_merge.py  east.tif west.tif -o merged.tif


La misma tarea se puede realizar con gdalwarp. gdalwarp tiene varias ventajas sobre gdal_merge, pero resulta más lento para juntar muchos archivos:

::

   gdalwarp east.tif west.tif warpmerged.tif



Conociendo OGR
================================================================================

:: 
  
  cd /home/usr/gdal_natural_earth/


.. tip:: Se puede abrir el *shapefile* con un SIG de Escritorio como QGIS para visualizarlo.


Obtener información sobre datos vectoriales con ogrinfo
================================================================================

:: 

  ogrinfo ./natural_earth
  INFO: Open of `../natural_earth/'
      using driver `ESRI Shapefile' successful.
  1: 10m_lakes (Polygon)
  2: 10m_land (Polygon)
  3: 10m_rivers_lake_centerlines (Line String)
  4: 10m-admin-0-countries (Polygon)
  5: 10m_ocean (Polygon)
  6: 10m-urban-area (Polygon)
  7: 10m_populated_places_simple (Point)

Obtener un resumen sobre datos con ogrinfo junto con `-so`.

::

	ogrinfo -so ../natural_earth/ 10m-admin-0-countries
	INFO: Open of `../natural_earth/'
	      using driver `ESRI Shapefile' successful.

	Layer name: 10m-admin-0-countries
	Geometry: Polygon
	Feature Count: 251
	Extent: (-179.999783, -89.999828) - (180.000258, 83.633811)
	Layer SRS WKT:
	GEOGCS["GCS_WGS_1984",
	    DATUM["WGS_1984",
		SPHEROID["WGS_1984",6378137.0,298.257223563]],
	    PRIMEM["Greenwich",0.0],
	    UNIT["Degree",0.0174532925199433]]
	OBJECTID: Integer (9.0)
	COUNTRY: String (100.0)
	FEATURECLA: String (32.0)
	SOV: String (100.0)
	SHAPE_LENG: Real (19.11)
	SHAPE_AREA: Real (19.11)


Si se usa ogrinfo sin ningún parámetro, se obtendrá un resumen de los datos y después una sección para cada conjunto de datos. 

::

	ogrinfo ../natural_earth/ 10m-admin-0-countries


Se puede usar el resultado producido por ogrinfo con un *grep* para filtrarlo y conseguir sólo el atributo COUNTRY.

::

	ogrinfo ../natural_earth/ 10m-admin-0-countries | grep COUNTRY
	
	COUNTRY: String (100.0)
	COUNTRY (String) = Afghanistan
	COUNTRY (String) = Akrotiri Sovereign Base Area
	COUNTRY (String) = Aland
	COUNTRY (String) = Albania
	COUNTRY (String) = Algeria
	COUNTRY (String) = American Samoa
	COUNTRY (String) = Andorra
	etc.


Se pueden convertir los datos a otros formatos. Se puede ver la lista de formatos soportados con `--formats`.

Usar ogr2ogr para convertir entre distintos formatos de archivo 
================================================================================

Se puede usar ogr2ogr para convertir elementos simples entre diferentes tipos de formato. Se puede usar `--formats` para ver la lista de formatos disponibles con información sobre lectura/escritura  

Convertir los países (*countries* en inglés) a GML.

::

  ogr2ogr --formats
  ogr2ogr -f GML countries.xml 10m-admin-0-countries.shp	  


Cosas a probar
================================================================================

Aquí hay algunas operaciones adicionales que se pueden intentar hacer: 

#. Probar gdalwarp o gdal_merge.py para hacer un mosaico de los datos

#. Probar gdaladdo para crear internal overviews

#. QGIS usa GDAL/OGR también para dar soporte a muchos formatos. El plugin GdalTools para el proceso de datos ráster integra las herramientas gdal en QGIS. 

#. Usar ogr2ogr para importar/exportar datos vectoriales a otros formatos como PostGIS. Se puede echar un vistazo a las opciones que proporciona ogr2ogr.

#. Probar el plugin de QGIS plugin OGR-Layer-Konverter.


¿Qué más?
================================================================================

Esto es sólo el primer paso para usar GDAL y OGR. Hay un muchas más funcionalidades que se pueden probar. 

Sitio web del proyecto GDAL 

  http://www.gdal.org

Todo sobre OGR

  http://gdal.org/ogr/index.html

Tutorial GDAL 

  http://trac.osgeo.org/gdal/wiki/UserDocs/RasterProcTutorial
