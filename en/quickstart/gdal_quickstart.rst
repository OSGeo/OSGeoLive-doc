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
  * get information about your data with gdalinfo
  * gdal_translate 
  * gdalwarp
  * gdaladdo
   

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

Get information about the raster data with gdalinfo:
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




Things to try
=============

Here are some additional challenges for you to try:

#. QGIS uses GDAL/OGR too to suport many formats. It also provides the GdalTools Plugin to process raster data. This plugin integrates the gdal-tools into QGIS. 

#. Try ogr2ogr to import/export your vector data to other formats like GML, PostGIS. Try the QGIS plugin OGR-Layer-Konverter.


What Next?
==========

This is only the first step on the road to using GDAL and OGR. There is a lot more functionality you can try.

GDAL Project home

  http://www.gdal.org

All about OGR

  http://gdal.org/ogr/index.html

GDAL Tutorial

  http://trac.osgeo.org/gdal/wiki/UserDocs/RasterProcTutorial
