:Author: Bob Basques
:Version: osgeolive12.0
:Reviewer: Angelos Tzotsos, OSGeo
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_geomoose@
@OSGEO_KIND_geomoose@

********************************************************************************
@NAME_geomoose@ Quickstart
********************************************************************************

GeoMoose is a browser based mapping framework for displaying distributed cartographic data. It is particularly useful for managing spatial and non-spatial data within county, city and municipal offices (from which GeoMoose originated).

.. contents:: Contents

Getting Started
================================================================================

GeoMoose is a GIS data portal management framework. The installed version of GeoMoose on the Live DVD is an example configuration that displays an example set of layers.

* Go to the "Browser Clients" folder on the desktop.

* Click on the desktop icon "Start GeoMoose". This will launch the default browser which will navigate to the correct location automatically.

* You will be presented with a web page displaying a demo interface of a GeoMoose instance.

  .. image:: /images/projects/geomoose/geomoose_screenshot.png
    :align: right
    :alt: GeoMoose Screenshot

The Interfaces presented above shows:

  1. A banner bar
  #. A tool bar
  #. A map window with

     - A navigation and zoom controls

  #. A side menu with:

     - A "Jump to" location pull down list
     - Control tabs starting with "Catalog", for displaying the layer list.  As needed, additional tabs will appear: an "Information" readout, a "Custom" output tab, and others.
  
  #. A Footer bar with:

     - Multiple coordinate readouts, one each for: X,Y (local dataset coordinates), LAT/LON (Decimal) and United States National Grid (USNG)
     - An editable pull down list for a view scales to choose from or define.


Identifying a location in GeoMoose
================================================================================

You can identify a location in the interface by clicking on the "identify", ("i" in a circle icon) button in the top toolbar, and then clicking a point on the map to identify.

  .. image:: /images/projects/geomoose/geomoose-quickstart-01.png

The catalog along the left side of the Map view will change to the "Super Tab" - a place to where GeoMoose displays results of an action or asks for more information.  In this case, it will show the results of a query of each active and identifiable layer for the point that you clicked in the map.

Measuring in GeoMoose
================================================================================

The GeoMoose measure tool allows you to measure a point (return the coordinates of a picked point), measure the distance along a potentially multi-segment line, and measure the area of a polygon.  Clicking the double ended arrow icon in the top toolbar, will start the measuring tool.  Next select if you want to measure a point, line, or polygon.  Next click on the map where you want to measure.  To measure a point, just click the point on the map you want to measure.  To measure a line or polygon click on the map for each vertex a of the line/polygon.  Double click to end the line/polygon.

Note: you can also measure a pre-existing feature on the map (if it is from a vector layer, including previous query results) without having to manually trace over it.  


  .. image:: /images/projects/geomoose/geomoose-quickstart-02a.png

  .. image:: /images/projects/geomoose/geomoose-quickstart-02b.png

  .. image:: /images/projects/geomoose/geomoose-quickstart-02c.png
		


Selecting Features
================================================================================
You can select features from a Point, Line, Polygon, or from an existing feature.  To start, click on the "Select Features" icon (mouse cursor icon), pick point, line, polygon and start drawing your selection in the map.  You can double click the last point to finish the drawing process.  If you want to adjust your selection you can do that with the "Modify Feature" option.

You also have the option to select features based on a buffered version of what you drew.  The default is to buffer by "0" which does nothing.  Positive values expand what you drew by that distance, negative values shrink your drawing.

Select which layer you want to select features from using the "Query Layer" select-box.  Note: not all layers can be used with the Select Features tool.  To be available for selection, a layer needs to be a vector layer and be configured for selection in the mapbook.

  .. image:: /images/projects/geomoose/geomoose-quickstart-03a.png


Finally, click the "Go" button to actually select the features.  GeoMoose will return a summary of what was selected in the Super Tab as well, highlight the selected features on the map, and show an attribute table of the selected features.


  .. image:: /images/projects/geomoose/geomoose-quickstart-03b.png

If you hover over a line in the table, the corresponding feature on the map will be highlighted.  Additionally, you can use the funnel icons in the table header to further filter results, and use the triangle icons in the table header to sort results.  The results can be downloaded as a CSV file using the download icon to the top and left of the table. 


Searching
================================================================================

You can also search for features by attribute.  To start, hover over the "Search" menu in the toolbar and then click on the "Search Parcels" icon.  Enter your search parameters in the Super Tab then click the "Go!" button.

  .. image:: /images/projects/geomoose/geomoose-quickstart-04a.png

The following screenshot demonstrates a search of all parcel owners containing the name "frank".

  .. image:: /images/projects/geomoose/geomoose-quickstart-04b.png

Three results appear in the list and are highlighted on the map. 

  .. image:: /images/projects/geomoose/geomoose-quickstart-04c.png
  
Clicking the magnifying glass icon/parcel number will zoom you to the specific parcel as illustrated in the following screenshot. 

  .. image:: /images/projects/geomoose/geomoose-quickstart-04d.png
  
  
Printing
================================================================================

This next screenshot shows how the Print tool looks as provided with demo for GeoMoose.  When you click on the Print tool, a dialog appears which asks for a title for the printed map, the page size and rotation, printed resolution, and shows a preview of what will be printed.

  .. image:: /images/projects/geomoose/geomoose-quickstart-05a.png

Clicking the Print button in the dialog will generate a PDF printout that you can open or save.

  .. image:: /images/projects/geomoose/geomoose-quickstart-05b.png


What Next?
================================================================================

This is only the first step on the road to using GeoMoose. There is
a lot more functionality you can try.

GeoMoose Project home

  https://www.geomoose.org/

GeoMoose Tutorial

  https://www.geomoose.org/quickstart.html
