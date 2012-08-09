:Author: Gérald Fenoy
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-ZOO-Project.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
ZOO Project Quickstart 
********************************************************************************

Running
================================================================================

*	To run the ZOO Project demo from the OSGeo-Live DVD, click successively on the |osgeolive-appmenupath-geoserver| then on the "ZOO Project" links on the desktop 
	or you will find it in the menu-items.

*	Firefox will open the ZOO Project Spatial Tools demo.


.. image:: ../../images/screenshots/1024x768/zoo-project-demo-1.png
  :scale: 50 %
  :alt: screenshot
  :align: center
  
  
*	Click on the map to select a feature from the :doc:`GeoServer <../overview/geoserver_overview>` WFS Server, the feature will be displayed in blue, then click on simple geometry process like Buffer, Centroid, ConvexHull or Boundary and the result will be displayed in yellow.

.. image:: ../../images/screenshots/1024x768/zoo-project-demo-2.png
  :scale: 50 %
  :alt: screenshot
  :align: center
  

*	Now select another feature near the first you've selected then click on multiple geometries process button Union, Intersection, Symmetric Difference or Difference to get the result displayed in red on the map.

.. image:: ../../images/screenshots/1024x768/zoo-project-demo-3.png
  :scale: 50 %
  :alt: screenshot
  :align: center


*	You can build your own requests and send them to the ZOO Kernel from the following page:
		http://localhost/zoo-demo/test_services.html

*	You would need the capabilities of the ZOO WPS Server:
		http://localhost/zoo/?Request=GetCapabilities&Service=WPS
	
*	For further questions you can contact the ZOO Project mailing list:
	zoo-discuss@gisws.media.osaka-cu.ac.jp
