:Author: OSGeo-Live
:Author: Massimo Di Stefano
:Author: Pirmin Kalberer
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-ossim.gif
  :scale: 80 %
  :alt: project logo
  :align: right

********************************************************************************
Ossim Quickstart 
********************************************************************************

Open Source Software Image Map (OOSIM) is a high performance engine for remote sensing,
image processing, geographical information system and photogrammetry.

This Quick Start describes how to:

  * View raster images with imagelinker
  * Run ossimPlanet

Imagelinker
================================================================================

* Start Imagelinker from its icon from the directory "Spatial Tools" on the desktop 
* Select the project file, using :menuselection:`File --> Open Project --> /home/user/ossim/landsatrgb.prj`
* Go to the :menuselection:`menu bar --> window --> tile`
* Select an :menuselection:`image window --> select the pan icon --> click on the image --> press the button "propagate"`
* Verify you see a 3 gray satelite images. 

  .. image:: ../../images/screenshots/800x600/ossim_imagelinker2.jpg
     :scale: 100 %

For the full tutorial see this `blog article`_.

.. _`blog article`: http://www.geofemengineering.it/GeofemEngineering/Blog/Voci/2010/3/15_OSGEO_-_Live_-_DVD_-_%22running_imagelinker%22.html


OssimPlanet
================================================================================

* Start OssimPlanet from its icon from the directory "Desktop-GIS" on the desktop 

* Select :menuselection:`File --> Open Image --> /home/user/data/raster/band1.tiff`

* Go to :menuselection:`menu --> Open kml --> /home/user/data/kml/*.kml`

* Go on the :menuselection:`legend tree --> Image Layers --> open the trees --> double-click on the band1 image`,
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

