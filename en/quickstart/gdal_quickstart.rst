:Author: Astrid Emde, material from Frank Warmedam's RasterTutorial
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://gdal.org/


********************************************************************************
GDAL/OGR Quickstart
********************************************************************************

You will need nothing but a terminal for this quickstart. If you want to
visualize the results, you can use one of the Desktop GIS Software
applications on OSGeo-Live like :doc:`../overview/qgis_overview`. 

This Quick Start is devided in two parts GDAL (raster data) and OGR
(vector data). We will start with GDAL.

This Quick Start describes how to:

GDAL
  * Explore your image data with gdalinfo
  * Format translations with gdal_translate 
  * Reproject your data with gdalwarp
  * Mosaic your data with gdal_warp or gdal_merge.py
  * Build a shapefile as a raster tileindex with gdaltindex
   

OGR
  * get information about your data with ogrinfo 
  * use ogr2ogr to transform your data to other formats
 

Get to know GDAL
================================================================================

You will find the demo data at :file:`/usr/local/share/data`. We want to have a
look at the :doc:`Natural Earth data <../overview/naturalearth_overview>` in this quickstart. We want to work with a
copy of the data. So the first step is to copy the data to your home
directory.

:: 
  
  cd /home/user
  cp -R /usr/local/share/data/natural_earth/ ./gdal_natural_earth 

 
You find a NaturalEarth Raster file and a tfw-file at:
:: 

 cd /home/user/gdal_natural_earth/HYP_50M_SR_W


.. tip:: Open the file with a Desktop GIS like QGIS. And have a look.

Get information about the raster data with gdalinfo
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

Note: 
  * Driver is "GTiff/GeoTIFF"
  * Size is 10800x5400
  * 3 Bands of type Byte. 
  * Coordinates
  * no coordinate system



Simple Format Translation
================================================================================

First get to know your drivers. The `--formats` commandline switch of
gdal_translate can be used to see a list of available format drivers.  

Each format reports if it is 
  * read only (ro), 
  * read/write (rw) or 
  * read/write/update (rw+).

::

 gdal_translate --formats

The `--format` commandline switch can be used to query details about a
particular driver, including creation options, and permitted data types.

::

 gdalinfo --format jpeg
 gdal_translate --format png 

Translation
================================================================================

Translations are accomplished with the gdal_translate command. The
default output format is GeoTIFF:

::

 gdal_translate HYP_50M_SR_W.tif HYP_50M_SR_W.png 

The `-of` flag is used to select an output format and the -co flag is used
to specify a creation option:

::

  gdal_translate -of JPEG -co QUALITY=40 HYP_50M_SR_W.tif HYP_50M_SR_W.jpg

The `-ot` switch can be used to alter the output data type.  

::
 
   gdal_translate -ot Int16 HYP_50M_SR_W.tif HYP_50M_SR_W_Int16.tif

Use gdalinfo to verify data type.


Rescaling
================================================================================

The `-outsize` switch can be used to set the size of the output file. 

::

    gdal_translate -outsize 50% 50% HYP_50M_SR_W.tif  HYP_50M_SR_W_small.tif

Use gdalinfo to verify the size.

The `-scale` switch can be used to rescale data. Explicit control of the
input and output ranges is also available. The gdalinfo `-mm` switch can
be used to see pixel min/max values. 

Let's split our image into two with `-srcwin` which makes a copy based on
pixel/line location (xoff yoff xsize ysize). You also could use `-projwin`
and define the corners in georeferenced coordinates (ulx uly lrx lry).

::

    gdalinfo -mm HYP_50M_SR_W.tif 
    gdal_translate -srcwin 0 0 5400 5400 HYP_50M_SR_W.tif  west.tif
    gdal_translate -srcwin 5400 0 5400 5400 HYP_50M_SR_W.tif  east.tif


Raster tileindex with gdaltindex
================================================================================

You can build a shapefile as a raster tileindex. For every image a
polygon is generated with the bounds of the extent of the polygon and
the path to the file.

::

 gdaltindex index_natural_earth.shp *st.tif

Have a look at your output shapefile with QGIS and ogrinfo (you
will learn more about ogrinfo later in this tutorial)

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
  

Reprojecting
================================================================================

For this process we assume that HYP_50M_SR_W.tif has been properly
created with bounds. As we saw before with gdainfo no coordinate system 
was set. So we assign WGS84 as coordinate system to the image in the
first step.

::

     gdal_translate -a_srs WGS84 HYP_50M_SR_W.tif HYP_50M_SR_W_4326.tif

The gdalwarp command can be used to reproject images. Here we reproject
the WGS84 geographic image to the Mercator projection:

::

   gdalwarp -t_srs '+proj=merc +datum=WGS84' HYP_50M_SR_W_4326.tif mercator.tif

Use gdalinfo to verify the change and have a look at the image.

  .. image:: ../../images/screenshots/800x600/gdal_mercator.png
     :scale: 80

Here we reproject to the Ortho projection.  

::

   gdalwarp -t_srs '+proj=ortho +datum=WGS84' HYP_50M_SR_W_4326.tif ortho.tif


.. image:: ../../images/screenshots/800x600/gdal_ortho.png
     :scale: 80

Note how the poles are clipped?  This is because the edges at the pole
can't be reprojected gdalwarp does not read all the data.  We can force
gdalwarp to read a bunch of surplus data around chunks as one way to 
resolve this. Read more about this in the RasterTutorial http://trac.osgeo.org/gdal/wiki/UserDocs/RasterProcTutorial.



Mosaicing
================================================================================

gdal_merge.py is a python script that can be used for simple mosaicing
tasks. Mosaic the east.tif and west.tif into a single file:

::

   gdal_merge.py  east.tif west.tif -o merged.tif


The same task can be accomplished with gdalwarp. gdalwarp has a variety
of advantages over gdal_merge, but can be slow to merge many files:

::

   gdalwarp east.tif west.tif warpmerged.tif



Get to know OGR
================================================================================

:: 
  
  cd /home/usr/gdal_natural_earth/


.. tip:: Open the shape file with a Desktop GIS like QGIS. And have a look.


Get information about the vector data with ogrinfo
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

Get a summary about your data with ogrinfo together with `-so`.

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


If you run ogrinfo without a parameter you will get a summary about your data and afterwards a section for every dataset.

::

	ogrinfo ../natural_earth/ 10m-admin-0-countries


You can forward the result from ogrinfo to grep to filter and get only the attribute COUNTRY.

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


You can convert your data to other formats. Get the list of the
supported formats with `--formats`.

Use ogr2ogr to convert data between file formats 
================================================================================

You can use ogr2ogr to converts simple features data between file
formats. You can use `--formats` to get the list of the supported formats
with read/write information. 

Convert the countries to GML.

::

  ogr2ogr --formats
  ogr2ogr -f GML countries.xml 10m-admin-0-countries.shp	  


Things to try
================================================================================

Here are some additional challenges for you to try:

#. Try gdalwarp or gdal_merge.py to mosaic your data

#. Try gdaladdo to build internal overviews

#. QGIS uses GDAL/OGR too to suport many formats. It also provides the GdalTools Plugin to process raster data. This plugin integrates the gdal-tools into QGIS. 

#. Try ogr2ogr to import/export your vector data to other formats like PostGIS. Have a look at the options ogr2ogr provides.

#. Try the QGIS plugin OGR-Layer-Konverter.


What Next?
================================================================================

This is only the first step on the road to using GDAL and OGR. There is
a lot more functionality you can try.

GDAL Project home

  http://www.gdal.org

All about OGR

  http://gdal.org/ogr/index.html

GDAL Tutorial

  http://trac.osgeo.org/gdal/wiki/UserDocs/RasterProcTutorial
