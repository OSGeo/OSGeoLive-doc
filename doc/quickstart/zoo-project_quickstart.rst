:Author: Gérald Fenoy
:Reviewer: Angelos Tzotsos
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/zoo-simple.png
  :scale: 100 %
  :alt: project logo
  :align: right

.. image:: /images/logos/OSGeo_community.png
  :scale: 100
  :alt: OSGeo Community Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
ZOO Project Quickstart 
********************************************************************************

The ZOO-Project provides a developer friendly Web Processing Service (WPS) framework for creating and chaining Web Processing Services.
A WPS provides web access to functions which run spatial algorithms.

This Quick Start describes how to:

  * Apply processes to a WFS from a web browser.

.. contents:: Contents
  

Running
================================================================================

*       To run the ZOO Project demo from the OSGeo-Live DVD, click on the "ZOO Project" link you will find it in the menu-items under "Geospatial" > "Web Services".

*       Firefox will open the ZOO Project demonstration landing page. From here, you can decide what is the demonstration you want to use.

.. image:: /images/screenshots/zoo/zoo-demo-2.png
  :scale: 50 %
  :alt: screenshot
  :align: center

OGR spatial tools
-------------------

*	Click on the map to select a feature from the :doc:`GeoServer <../overview/geoserver_overview>` WFS Server, the feature will be displayed in blue, then click on simple geometry process like Buffer, Centroid, ConvexHull or Boundary and the result will be displayed in yellow.

.. image:: /images/screenshots/zoo/zoo-demo-3.png
  :scale: 50 %
  :alt: screenshot
  :align: center
  

*	Now select another feature near the first you've selected then click on multiple geometries process button Union, Intersection, Symmetric Difference or Difference to get the result displayed in red on the map.

.. image:: /images/screenshots/zoo/zoo-demo-4.png
  :scale: 50 %
  :alt: screenshot
  :align: center

CGAL triangulations
-------------------

*	From the CGAL triangulations application, you simply have to press the Voronoi or Delaunay button to display on your map the result of the WPS service execution, as shown bellow.

.. image:: /images/screenshots/zoo/zoo-demo-5.png
  :scale: 50 %
  :alt: screenshot
  :align: center



OTB Applications
-------------------

*	From the OTB application demonstration interface, you have to fill the form on the left to configure the WPS service execution. Once, you have selected the value for yoru processing, you can then press the Execute button at the bottom of the left form. In case you choose image/png as the output format, you will see the result of your processing displayed on the map. You can see bellow a sample KMeansClassification execution when selecting the image/png output format.

.. image:: /images/screenshots/zoo/zoo-demo-1.png
  :scale: 50 %
  :alt: screenshot
  :align: center



What Next?
================================================================================

*	You can access the capabilities of the ZOO WPS Server:
		http://localhost/cgi-bin/zoo_loader.cgi?Request=GetCapabilities&Service=WPS
	
*	For further questions you can contact the ZOO Project mailing list:
	zoo-discuss@lists.osgeo.org
