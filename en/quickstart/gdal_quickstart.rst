:Author: Astrid Emde
:Version: osgeo-live4.5p
:License: Creative Commons

.. _gdal_quickstart:
 
.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://gdal.org/


******************
GDAL/OGR Quickstart
******************

You will need nothing but a a terminal for this quickstart. If you want to visualize the results in a Desktop GIS you can use one of the Desktop GIS Software on OSGeo-Live. 

This Quick Start is devided in two parts GDAL (raster data) and OGR (vector data). We will start with GDAL.

This Quick Start describes how to:

GDAL
  * Explore your image data with gdalinfo
  * Format translations with gdal_translate 
  * Reproject your data with gdalwarp
  * Mosaic your data with gdal_warp or gdal_merge.py
   

OGR
  * get information about your data with ogrinfo 
  * use ogr2ogr to transform your data to other formats
 

Get to know GDAL
================

You find the Data at /usr/local/share/data. Open a terminal and change directory.

:: 
  
  cd /usr/local/share/data
 

You find a NaturalEarth Raster file and a tfw-file at:
:: 
  
  cd /usr/local/share/data/natural_earth/HYP_50M_SR_W


.. tip:: Open the file with a Desktop GIS like Quantum GIS. And have a look.

Get information about the raster data with gdalinfo
===================================================
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

Look at your data with openev!
==============================
::

    openev  HYP_50M_SR_W.tif 

.. tip:: You can point at pixels and see the elevations, and everything is georeferenced. Right click on the layer in layer dialog and look at the "Coordinate System" and "Image Info" tabs for some info similar to gdalinfo.


Simple Format Translation
===========================

Get to know your drivers

The --formats commandline switch of gdal_translate can be used to see a list of available format drivers.  

Each format reports if it is 
  * read only (ro), 
  * read/write (rw) or 
  * read/write/update (rw+).

::
 
 gdal_translate --formats

The --format commandline switch can be used to query details about a particular driver, including creation options, and permitted data types.

::

 gdalinfo --format jpeg
 gdal_translate --format png 

Translation
===========

Translations are accomplished with the gdal_translate command.  The default output format is GeoTIFF:

::

 gdal_translate HYP_50M_SR_W.tif HYP_50M_SR_W.png 

The -of flag is used to select an output format and the -co flag is used to specify a creation option:

::

  gdal_translate -of JPEG -co QUALITY=40 HYP_50M_SR_W.tif HYP_50M_SR_W.jpg


Rescaling
=========

The -scale switch can be used to rescale data.  

::
    gdal_translate -of JPEG -scale HYP_50M_SR_W.tif HYP_50M_SR_W.jpg 

Explicit control of the input and output ranges is also available, and the gdalinfo -mm switch can be used to see pixel min/max values:

::

    gdalinfo -mm HYP_50M_SR_W.tif 
    gdal_translate -of JPEG -scale -100 678 0 255 HYP_50M_SR_W.tif  HYP_50M_SR_W.jpg


Reprojecting
============

For this process we assume that HYP_50M_SR_W.tif has been properly created with
bounds and coordinate system info.

The gdalwarp command can be used to reproject mages.  Here we reproject
the WGS84 geographic image to the Mercator projection:

::

   gdalwarp -t_srs '+proj=merc +datum=WGS84' HYP_50M_SR_W.tif mercator.tif

   Compare the images with OpenEV

::

   openev mercator.tif
   openev HYP_50M_SR_W.tif 

Here we reproject to the Ortho projection.  

::

   gdalwarp -t_srs '+proj=ortho +datum=WGS84' HYP_50M_SR_W.tif ortho.tif

::  
   openev ortho.tif

Note how the poles are clipped?  This is because the edges at the pole
can't be reprojected gdalwarp does not read all the data.  We can force
gdalwarp to read a bunch of surplus data around chunks as one way to 
resolve this. 

::

   gdalwarp -wo SOURCE_EXTRA=125 -t_srs '+proj=ortho +datum=WGS84' 
             HYP_50M_SR_W.tif ortho.tif

gdalwarp can also be cause to treat particular values as nodata and to produce alpha values in the output.  In this example we cause oceans to be treated as transparent, and generate alpha in the output. 

::

   gdalwarp -wo SOURCE_EXTRA=125 -srcnodata "11 10 50" -dstalpha
             -t_srs '+proj=ortho +datum=WGS84' 
             geoworld.tif ortho.tif


Mosaicing
---------

gdal_merge.py is a python script that can be used for simple mosaicing tasks.  Mosaic the east.dem and west.dem into a single file:

::

   gdal_merge  east.dem west.dem -o mergeddem.tif

The same task can be accomplished with gdalwarp.  gdalwarp has a variety of advantages over gdal_merge, but can be slow to merge many files:

::

   gdalwarp east.dem west.dem warpmerged.tif


Get to know OGR
===============
:: 
  
  cd /usr/local/share/data/


.. tip:: Open the shape file with a Desktop GIS like Quantum GIS. And have a look.

Get information about the vector data with ogrinfo:
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

Get a summary about your data with ogrinfo together with -so.
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
	....

You can convert your data to other formats. Get the list of the supported formats with --formats.

Convert the countries to GML.
::

  ogr2ogr -f GML countries.xml 10m-admin-0-countries.shp	  


Things to try
=============

Here are some additional challenges for you to try:

#. Try gdalwarp or gdal_merge.py to mosaic your data

#. Try gdaladdo to build internal overviews

#. Try gdaltindex to build tileindexes

#. QGIS uses GDAL/OGR too to suport many formats. It also provides the GdalTools Plugin to process raster data. This plugin integrates the gdal-tools into QGIS. 

#. Try ogr2ogr to import/export your vector data to other formats like PostGIS. Have a look at the options ogr2ogr provides.

#. Try the QGIS plugin OGR-Layer-Konverter.


What Next?
==========

This is only the first step on the road to using GDAL and OGR. There is a lot more functionality you can try.

GDAL Project home

  http://www.gdal.org

All about OGR

  http://gdal.org/ogr/index.html

GDAL Tutorial

  http://trac.osgeo.org/gdal/wiki/UserDocs/RasterProcTutorial
