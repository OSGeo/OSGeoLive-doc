:Author: OSGeo-Live
:Author: Manuel Grizonnet
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _otb-quickstart:
 
.. image:: ../../images/project_logos/logo-otb.png
  :scale: 80 %
  :alt: project logo
  :align: right

********************************************************************************
OTB Quickstart 
********************************************************************************

ORFEO Toolbox library (OTB) is a high performance library for image processing targeted on remote sensing.

This Quick Start describes how to:

  * Get metadata informations in an image
  * Perform mathematical operations between image bands
  * Open raster images with the application monteverdi, perform segmentation (mean-shift clustering) and visualize the result

The OTB-Applications package provide lot's of interesting tools which facilitate the manipulation of images. All these tools are available through:

  * CLI : command line interface 
  * QT GUI : in a standalone graphical user interface 
  * QGIS plugin : as plugin directly usable in Quantum GIS 

Display metadata informations in an image 
================================================================================

You can get all the metadata informations contained in an image with the command : `otbReadImageInfo-cli`
The unique parameter is the Input image file name, for example : `otbReadImageInfo-cli -in qb_RoadExtract.tif`

Calculator on image bands
================================================================================

The `otbBandMath-cli` provides an efficient way to perform mathematical operation on monoband images.
The syntax is quite simple, for example substrating two bands to study the image differences on the images SpotBefore.tif and SpotAfter.tif, just use the command : `otbBandMath-cli -ims SpotBefore.tif SpotAfter.tif -out difference.tif -exp "im1b1-im2b1"`
The application is able to perform complex mathematical operations over images (threshold, logarithmic rescaling...).
This homebrewed digital calculator is also bundled with custom functions allowing to compute a full expression. For example, as remote sensing images measure physical values, it is possible to extract several indices with physical meaning like the NDVI (Normalized Difference Vegetation Index) for the vegetation. With the calculator you're able to compute the NDVI on a multispectral sensors images by doing:
`otbBandMath-cli -ims qb_RoadExtract.tif -out ndvi.tif -exp "ndvi(im1b3,im1b4)"`


Perform segmentation with Monteverdi
================================================================================

* Start Monteverdi from its icon from the directory "XXX" on the desktop 
* Select an raster image, using :menuselection:`File --> Open Dataset --> /home/user/otb/qb_RoadExtract.tif`
* Go to the :menuselection:`Filtering --> Mean Shift clustering`
* Select the input raster image (Reader0) from the input window selection
* Verify you can tune parameters of the segmentation and see the result on the region of interest by clicking on "Run"
* Select "Close" when you are satisfied by the result.
* In the main window, right click on the "Clustered Image" in the resulting dataset "MeanShift0" and select "Display in viewer" 

  .. image:: ../../images/screenshots/800x600/otb-mean_shift.png
     :scale: 100 %

Perform supervised classification based on SVM  with Monteverdi
================================================================================

* Start Monteverdi from its icon from the directory "XXX" on the desktop 
* Select an raster image, using :menuselection:`File --> Open Dataset --> /home/user/otb/qb_RoadExtract.tif`
* Go to the :menuselection:`Learning --> SVM classification`
* Select the input raster image (Reader0) from the input window selection
* You can add classes (`Add Class` button), select learning samples by drawing polygons in the 
* Go to the menuselection:`Setup --> SVM` to set the classification algorithm parameters 
* Click on the `Learn` button to create a classification model fron the input learning classes 
* Click on the `Display` button to show the result of the supervised classification on the entire image

  .. image:: ../../images/screenshots/800x600/otb-svm.png
     :scale: 100 %

For the full tutorial see the  `article`_.

.. _`article`: http://www.orfeo-toolbox.org/otb/monteverdi.html


What Next?
================================================================================

* OTB Software Guide

  The main source of information is the OTB Software Guide. This is a
  comprehensive guide which comprises about 600 pages, detailing the
  steps to install OTB and use it. Most of the classes available are
  heavily illustrated with results from real remote sensing
  processing. 
  
  * `OTBSoftwareGuide.pdf <http://orfeo-toolbox.org/packages/OTBSoftwareGuide.pdf>`_
  * `Online html version <http://orfeo-toolbox.org/SoftwareGuide/>`

* OTB CookBook

  A guide for OTB-Applications and Monteverdi dedicated for
  non-developers is also available.This guide is composed of a brief
  tour of of OTB-Applications and Monteverdi, followed by a set of
  recipes to perform usual remote sensing tasks with both tools. 
  
  * `OTBCookBook.pdf <http://orfeo-toolbox.org/packages/OTBCookBook.pdf>`

* OTB Tutorials

  Follow the tutorials_ to learn more about OTB.

.. _tutorials: http://www.orfeo-toolbox.org/SoftwareGuide/SoftwareGuidepa2.html#x17-49000II

* Documentation on DVD

  See also the included documentation_ on this DVD.

.. _documentation: ../../otb/

