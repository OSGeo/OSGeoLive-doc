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

Open Source Software Image Map (OOSIM) is a high performance engine for remote sensing,
image processing, geographical information system (GIS) and photogrammetry.

This Quick Start describes how to:

  * View raster images with Imagelinker
  * Run ossimPlanet

Imagelinker
================================================================================

* Start Imagelinker from its icon from the "Spatial Tools" folder on
  the desktop 

* Open an image file, using :menuselection:`File --> Open Image --> /home/user/data/raster/cape_cod/p011r031_7t19990918_z19_nn10.tif`

* Repeat the previous operation for the files : `p011r031_7t19990918_z19_nn20.tif`
  and `p011r031_7t19990918_z19_nn30.tif`

  .. image:: ../../images/screenshots/1024x768/ossim_imagelinker3.jpg
     :scale: 70 %
     :align: right

* Another way to load all the images at once is to simply drag and drop
  them into the Imagelinker main window

* To tidy up the windows, maximize the main window, then in the top menu
  bar go to :menuselection:`Window --> Tile`

* You can keep all the satellite band views in sync by clicking :guilabel:`Fit` in
  one of the smaller windows, then :guilabel:`Propagate` in that same window.
  Try doing the same in the larger window.

* Again in the large image window make sure the zoom button (magnifying
  glass) is depressed and click in middle of the Cape (that's Wellfleet Harbor).
  Then click again for a closer view, and again click the :guilabel:`Propagate`
  button in the large image window to sync that view with the other band windows.
  In a similar way you can press the pan button (hand icon) and then click on
  the end of the Cape, and then the :guilabel:`Propagate` button to align the
  other windows. 

A more in depth tutorial covering merging bands into an RGB composite
is `available online`_.

.. _`available online`: http://www.geofemengineering.it/GeofemEngineering/Blog/Voci/2010/3/15_OSGEO_-_Live_-_DVD_-_%22running_imagelinker%22.html


OssimPlanet
================================================================================

* Launch OssimPlanet from its icon in the "Desktop GIS" folder on the
  desktop 

* Select :menuselection:`File --> Open Image --> /home/user/data/raster/world.tif` (or simply drag and drop the image into the main window)

* Go on the :menuselection:`legend tree --> Image Layers --> open the trees --> double-click on the world image`,
  you should see the scene zoom to the image's location 

* Navigate the scene.


.. note::
   To turn off the daylight auto-shading, un-check :menuselection:`File --> Preferences --> Environment --> Enable Ephemeris`


What Next?
================================================================================

* Ossim Tutorials

  Follow the tutorials_ to learn more about Ossim.

.. _tutorials: http://download.osgeo.org/ossim/tutorials/pdfs/

* Documentation on DVD

  See also the included documentation_ on this DVD.

.. _documentation: ../../ossim/

