:Author: OSGeoLive
:Author: Landon Blake
:Author: Stefan Steiniger
:Version: osgeolive6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Thanks: OpenJUMP Community

@LOGO_openjump@
@OSGEO_KIND_openjump@

********************************************************************************
@NAME_openjump@ Quickstart
********************************************************************************

OpenJUMP is a desktop GIS program that allows for easy viewing and editing 
of vector GIS data. The PLUS edition also support analysis of raster data.

This Quick Start describes how to:

  * Open an ESRI shapefile with OpenJUMP.
  * Style the layer created from the shapefile for easier viewing.
  * Edit the geometries of the features in a layer.

Starting OpenJUMP
================================================================================

OSGeo Live-DVD: start OpenJUMP link on desktop or run /usr/bin/openjump

General: For Windows, go to the bin folder of the OpenJUMP directory and double 
click the OpenJUMP.exe or oj_windows.bat file. For Linux, execute the oj_linux.sh 
file from a terminal. For MacOSX, click on the OpenJUMP application symbol.

(Please note: A Java runtime environment is required to run OpenJUMP. 
You can download a Java runtime environment for your computer here: 
http://java.com/en/download/index.jsp)

Basic User Interface Overview
================================================================================

The OpenJUMP user interface has four (4) basic components as most other desktop GIS.
(i) The first is a top-level menu bar for accessing most functionality. (ii) The 
second is a main toolbar that sits just below the menu bar. The buttons give 
access to the most important display and navigation functions. (iii) The third 
is a tree view on the left that shows the layer list of the active project. 
(iv) The fourth is the map view. This is the actual map where a graphical 
representation of the spatial data in each layer is given. Finally there is an 
information bar at the bottom displaying mouse pointer coordinates, processing 
reports, and memory usage. A project window contains a layer list and a layer 
view. Each instance of OpenJUMP can contain multiple projects. In our quick 
start, we will only be working with a single window.

.. image:: /images/projects/openjump/openjump_ss_01.png
   :scale: 55 

Open an ESRI Shapefile
================================================================================

This section of the quick start briefly explains how to open an ESRI shapefile.

On the top-level menu bar in OpenJUMP, select the [File] menu. Then select the 
option [Open File...]. This will present you with a dialog box that allows you 
to open files containing geospatial data. In our example, you want to browse for 
an ESRI shapefile. Look for a file with the .shp extension (e.g. on the LiveDVD 
under `/home/user/data/natural_earth2/ne_10m_admin_0_countries.shp`). Select the file 
and click the [Finish] button on the dialog. After a few moments, you will be able 
to see the data from your shapefile in the Map View. You will also see a new 
layer created for your data in the Layer List. The name of the layer will match 
the name of the shapefile.

.. image:: /images/projects/openjump/openjump_ss_02.png
   :scale: 55 

Another quicker option is to directly drag and drop your shapefile in the Layer View.

Style a Layer
================================================================================

This section of the quick start briefly explains how to style a layer.

In the Layer List, right click* on the layer name. This will show a pop-up menu. 
Go to the [Style] menu entry and then choose [Change Styles...]. The Change Styles 
dialog has five (5) tabs that allow you to change how the layer is displayed in 
the Map View. This includes changing the stroke color, the fill color, line
style and line thickness, transparency, adding labels, and determining at which 
maximum and minimum scales the layer is displayed at.

* MacOSX users press the :guilabel:`Ctrl` key to access this menu.

.. image:: /images/projects/openjump/openjump_ss_03.png
   :scale: 55 
   
.. image:: /images/projects/openjump/openjump_ss_04.png
   :scale: 55 

Edit Feature Geometries in a Layer
================================================================================

In the Layer List, right click on the layer name, as in the previous example. 
This will show a pop-up menu. Click on the menu entry "Editable" so that a check mark
is shown. This will open a new floating toolbar over the Map View 
on the right side. This toolbar has a set of buttons that you can use to edit 
the geometry of a geographic feature.

.. image:: /images/projects/openjump/openjump_ss_05.png
   :scale: 55 
   
.. image:: /images/projects/openjump/openjump_ss_06.png
   :scale: 55 

Let's try a quick edit. First we need to select a geometry and then we move a 
point of the geometry. To do that, we first click the button that shows a mouse 
cursor in the editing toolbar (top left button). Activate it and click on a single 
feature in the Layer View to select it. If the selection worked, then the features
line color should change to yellow and small yellow squares appear at each angle 
point (vertex) in the feature geometry. 

.. image:: /images/projects/openjump/openjump_ss_07.png
   :scale: 55 

Next, click on the button that shows a blue crosshair with a yellow square in the 
middle, the :guilabel:`Move Vertex Tool` (Hoovering over the buttons gives you a 
button description). You should now see your mouse cursor change to a small black 
crosshair when you move it over the Map View. 

.. image:: /images/projects/openjump/openjump_ss_08.png
   :scale: 55 

Try using this to move one of the vertices/points of the geometry you selected before
by clicking on one of the vertices and dragging it (leaving the mouse button pressed).

.. image:: /images/projects/openjump/openjump_ss_09.png
   :scale: 55 
   
Other Learning Resources for OpenJUMP
================================================================================

This is only the first step on the road to using OpenJUMP. There is a lot more 
material left for you to discover.

You can download tutorials for the OpenJUMP here:
http://sourceforge.net/projects/jump-pilot/files/Documentation/

You can read the OpenJUMP wiki here:
http://ojwiki.soldin.de/index.php?title=Main_Page

And you can get help fast on the OpenJUMP users mailing list:
http://groups.google.com/group/openjump-users

Finally, the latest OpenJUMP version can be found here:
http://sourceforge.net/projects/jump-pilot/files/OpenJUMP/

