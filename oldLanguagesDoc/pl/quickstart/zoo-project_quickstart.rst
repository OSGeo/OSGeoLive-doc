:Author: Gérald Fenoy
:Translator: Milena Nowotarska, OSGeo
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-ZOO-Project.png
  :scale: 100 %
  :alt: project logo
  :align: right

.. image:: /images/logos/OSGeo_community.png
  :scale: 100
  :alt: OSGeo Community Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
Wprowadzenie do ZOO Project 
********************************************************************************

Jak zacząć
================================================================================

*	Aby uruchomić ZOO Project demo z OSGeo-Live DVD, wybierz z menu |osgeolive-appmenupath-geoserver|, następnie kliknij na ikonę "ZOO Project" na pulpicie lub wybierz z menu.

*	Firefox otworzy demo ZOO Project Spatial Tools.


.. image:: /images/screenshots/zoo/zoo-project-demo-1.png
  :scale: 50 %
  :alt: screenshot
  :align: center
  
  
*	Click on the map to select a feature from the :doc:`GeoServer <../overview/geoserver_overview>` WFS Server, the feature will be displayed in blue, then click on simple geometry process like Buffer, Centroid, ConvexHull or Boundary and the result will be displayed in yellow.

.. image:: /images/screenshots/zoo/zoo-project-demo-2.png
  :scale: 50 %
  :alt: screenshot
  :align: center
  

*	Now select another feature near the first you've selected then click on multiple geometries process button Union, Intersection, Symmetric Difference or Difference to get the result displayed in red on the map.

.. image:: /images/screenshots/zoo/zoo-project-demo-3.png
  :scale: 50 %
  :alt: screenshot
  :align: center


*	Możesz budować swoje własne zapytania i wysyłać je do ZOO Kernel z poniższej strony:
		http://localhost/zoo-demo/test_services.html

*	Będziesz potrzebował capabilities Serwera ZOO WPS:
		http://localhost/zoo/?Request=GetCapabilities&Service=WPS
	
*	Skontaktuj się z twórcami Projektu ZOO przez listę dyskusyjną w razie dalszych pytań:
	zoo-discuss@gisws.media.osaka-cu.ac.jp
