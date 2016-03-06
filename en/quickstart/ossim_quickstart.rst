:Author: OSGeo-Live
:Author: Massimo Di Stefano
:Author: Pirmin Kalberer
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-ossim.png
  :scale: 80 %
  :alt: project logo
  :align: right

********************************************************************************
Ossim Quickstart 
********************************************************************************

Open Source Software Image Map (OSSIM) is a high performance engine for
remote sensing, image processing, geographical information system (GIS)
tasks and photogrammetry.

This Quick Start describes how to:

  * Multi-view multiband raster satellite images with Imagelinker
  * Drape a georeferenced raster map on a 3D globe with ossimPlanet


Imagelinker
================================================================================

* Start Imagelinker from its icon from the "Spatial Tools" folder on
  the desktop 

* Open an image file, using :menuselection:`File --> Open Image --> /home/user/data/landsat/clip10.tif`

* Repeat the previous operation for the files : `clip20.tif`
  and `clip30.tif`

  .. image:: ../../images/screenshots/1024x768/ossim_imagelinker3.jpg
     :scale: 60 %
     :align: right

* Another way to load all the images at once is to simply drag and drop
  them into the Imagelinker main window

* To tidy up the windows, maximize the main window, then in the top menu
  bar go to :menuselection:`Window --> Tile`

* You can keep all the satellite band views in sync by clicking :guilabel:`Fit` in
  one of the smaller windows, then :guilabel:`Propagate` in that same window.
  Try doing the same in the larger window.

* Again in the large image window make sure the zoom button (magnifying
  glass) is depressed and click in middle of the big road intersection.
  With the closer view in the window, again click the :guilabel:`Propagate`
  button in the large image window to sync that view with the other band windows.
  In a similar way you can press the pan button (hand icon) and then click to
  move along the road, and then the :guilabel:`Propagate` button to align the
  other windows. 


OssimPlanet
================================================================================

* Launch OssimPlanet from its icon in the "Desktop GIS" folder on the
  desktop 

* Select :menuselection:`File --> Open Image --> /home/user/data/landsat/clip10.tif`
  to load a LANDSAT image (or simply drag and drop the image into the main window).

* In the `Layer` tree panel on the left side, click on the small triangle to
  the left of *Image Layers* to expand it. Next double-click on ``clip10``.
  You should now see the scene zoom to the image's location.

.. note:: To turn off the daylight auto-shading, `un`-check :menuselection:`File --> Preferences --> Environment --> Enable Ephemeris`

* Experiment with navigating the scene using the mouse. Dragging the left
  mouse button pans; dragging the middle mouse button rolls; and dragging
  the right mouse button zooms in and out.

.. commented * Try follow the Imagelinker tutorial, generate an RGB image from the original  single band images and load the result in ossimplanet.

* If you get lost, double clicking on the Blue Marble image in the Layer
  tree will zoom back out to a view of the whole planet, resetting the view.


What Next?
================================================================================

* We have prepared a number of tutorials_ demonstrating more of
  Ossim's capabilities.

.. _tutorials: http://download.osgeo.org/ossim/tutorials/pdfs/

* See also the included documentation_ on this Live DVD.

.. _documentation: ../../ossim/

