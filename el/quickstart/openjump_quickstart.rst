:Author: OSGeo-Live
:Author: Landon Blake
:Version: osgeo-live4.0
:License: Creative Commons
:Thanks: OpenJUMP Community

.. _openjump-quickstart:

*******************
OpenJUMP Quickstart 
*******************

OpenJUMP is a desktop GIS program that allows for easy viewing and editing 
of vector GIS data. It also has limited support for the viewing of raster
data.

This Quick Start describes how to:

  * Open an ESRI shapefile with OpenJUMP.
  * Style the layer created from the shapefile for easier viewing.
  * Edit the geometries of the features in the layer.
  * Run a simple attribute query on the features in the layer.

Starting OpenJUMP
=================

To start OpenJUMP, simply double click the openjump.bat file (if your are using a computer 
with a Microsoft Windows operating system) or the oj_linux.sh file 
(if you are using a computer with a Linux operating system) in the
bin folder of OpenJUMP install folder. (Please note: A Java runtime
environment is required to run OpenJUMP. You can download a Java
runtime environment for your computer here: http://java.com/en/download/index.jsp)

Basic User Interface Overview
=============================

The OpenJUMP graphical interface has four (4) basic components. The first is a top-level menu bar.
The second is a main toolbar that sits just below the menu bar. The third is a tree view that shows
all of the layers displayed in the current map view. This is called the layer list. The fourth is the
layer view. This is the actual map where a graphical representatio of the spatial data in each layer is
displayed. Each layer list and layer view are contained as a pair in a task frame or project frame. Each
instance of OpenJUMP  can contain multiple task frames. In our quick start, we will only be working
with a single task frame.


Open an ESRI Shapefile
======================

This section of the quick start briefly explains how to open an ESRI shapfile.

On the top-level menu bar in Open Jump select the File menu. Then select the Open menu item.
This will present you with a dialog box that allows you to open files containing geospatial data.
In our example, you want to browse for an ESRI shapefile. Look for a file with the .shp extension.
Select the file and click the open button on the dialog. After a few moments, you will be able to 
see the data from your shapefile in the Layer View. You will also see a new layer created for your data in the Layer List. The name of the layer will
match the name of the shapefile.

Style a Layer
=============

This section of the quick start briefly explains how to style a layer.

In the Layer List, right click on the layer name. This will show a pop-up menu. Select the Change Styles menu itme
from this pop-up menu. The Change Styles dialog has four (4) tabs that allow you to change how the layer is 
displayed at the Layer View. This includes changing stroke color, changing fill color, chainging stroke or fill
transparency, adding labels, and determining at which maximum and minimum scales the layer is displayed at.


Edit Feature Geometries in a Layer
==================================

This section of the quick start briefly explains how to edit feature geometry for features in a layer.

In the Layer List, right click on the layer name. This will show a pop-up menu. Check the box next to the
Editable menu entry. This will open a new floating toolbar over the Layer View. This toolbar has a set of
toolbar buttons that you can use to edit feature geometry. 

Let's try a quick edit. First, click the button that shows a mouse cursor. Use it to click on and select a single
feature in the Layer View. It should change to yellow and show small yellow squares at each node or angle point in the
feature geometry. As an example, click on the button that shows a blue crosshair with a yellow square in the middle. You
should now see your mouse cursor change to a small black corsshair when you move it over the Layer View. Try using it to move the
node on the geometry you selected.

Other Learning Resources for OpenJUMP
=====================================

This is only the first step on the road to using uDig. There is a lot more great material (and ability) left for your to discover in our walkthroughs.

You can download the user guide for the original JUMP program here:
http://sourceforge.net/projects/surveyos/files/JUMP_PDF_Docs.zip/download

You can read the OpenJUMP wiki here:
http://sourceforge.net/apps/mediawiki/jump-pilot/index.php?title=Main_Page

You can download tutorials for OpenJUMP here:
http://sourceforge.net/projects/jump-pilot/files/Documentation/

You can get help with OpenJUMP on the OpenJUMP users mailing list:
http://groups.google.com/group/openjump-users

