:Author: OSGeo-Live
:Author: Manuel Grizonnet
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

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
  * Perform supervised classification based on Support Vector Machine algorithm

The OTB applications provide lot's of interesting tools which facilitate the manipulation of images. All these tools are available through:

  * CLI : command line interface 
  * GUI : in a standalone graphical user interface (in Qt)
  * QGIS plugin : available through the processing framework

Sample data used in this quickstart can be found here:
  * http://www.orfeo-toolbox.org/packages/OTB-Data-Examples.tgz

Please download the data and extract them in the folder `/home/user/otb/`.


Display metadata informations in an image 
================================================================================

You can get all the metadata informations contained in an image with the command : `otbcli_ReadImageInfo`
The unique parameter is the Input image file name, for example : `otbcli_ReadImageInfo -in qb_RoadExtract.tif`

Calculator on image bands
================================================================================

The `otbcli_otbBandMath` provides an efficient way to perform mathematical operation on monoband images.
The syntax is quite simple, for example substrating two bands to study the image differences on the images SpotBefore.tif and SpotAfter.tif, just use the command : `otbcli_BandMath -il SpotBefore.tif SpotAfter.tif -out difference.tif -exp "im1b1-im2b1"`
The application is able to perform complex mathematical operations over images (threshold, logarithmic rescaling...).
This homebrewed digital calculator is also bundled with custom functions allowing to compute a full expression. For example, as remote sensing images measure physical values, it is possible to extract several indices with physical meaning like the NDVI (Normalized Difference Vegetation Index) for the vegetation. With the calculator you're able to compute the NDVI on a multispectral sensors images by doing:
`otbcli_BandMath -il qb_RoadExtract.tif -out ndvi.tif -exp "ndvi(im1b3,im1b4)"`

Pixel based classification
================================================================================
The classification in the application framework provides a supervised pixel-wise
classification chain based on learning from multiple images, and using one 
specified machine learning method like SVM, Bayes, KNN, Random Forests, Artificial 
Neural Network, and others...(see application help of 
`TrainImagesClassifier` for further details about all the available 
classifiers). 
It supports huge images through streaming and multi-threading. The 
classification chain performs a training step based on the intensities of each 
pixel as features. Please note that all the input images must have the same number 
of bands to be comparable.


Perform segmentation
================================================================================
The OTB *Segmentation* application allows to produce a raster segmentation
output with different algorithms and to scale up to large raster by producing
vector outputs that you can import in a GIS software.
There are four segmentation methods available in the application:
  * Mean-Shift (two different implementations)
  * Watershed (ITK implementation)
  * Connected-Components
  * Morphological profiles

Moreover the application can work in two different modes:

* Raster mode: allows to segment a small image and produces a raster where each
        component of the segmentation is labeled with a unique integer
* Vector mode: segment larger images and produces a vector file where each
        segment of the segmentation is represented by a polygon

  .. image:: ../../images/screenshots/800x600/otb-mean_shift.jpg
     :scale: 100 %

OTB includes also a framework to perform tile-wise segmentation of very large
image with theoretical guarantees of getting identical results to those without
tiling called LSMS_.

.. _LSMS: https://www.orfeo-toolbox.org/CookBook/CookBooksu42.html

What Next?
================================================================================

* OTB Software Guide

  The main source of information is the OTB Software Guide. This is a
  comprehensive guide which comprises about 600 pages, detailing the
  steps to install OTB and use it. Most of the classes available are
  heavily illustrated with results from real remote sensing
  processing. 
  
  * `OTBSoftwareGuide.pdf <http://www.orfeo-toolbox.org/packages/OTBSoftwareGuide.pdf>`_
  * `Online html version <https://www.orfeo-toolbox.org/SoftwareGuide/index.html>`_

* OTB CookBook

  A guide for OTB-Applications and Monteverdi2 dedicated for
  non-developers is also available.This guide is composed of a brief
  tour of of OTB-Applications and Monteverdi, followed by a set of
  recipes to perform usual remote sensing tasks with both tools. 
  
  * `OTBCookBook.pdf <http://orfeo-toolbox.org/packages/OTBCookBook.pdf>`_
  * `Online html version <https://www.orfeo-toolbox.org/CookBook/CookBook.html>`_  

* OTB Tutorials

  Follow the tutorials_ to learn more about OTB.

.. _tutorials: http://www.orfeo-toolbox.org/SoftwareGuide/SoftwareGuidepa2.html#x17-49000II

* OTB Applications documentation

  See also detailed documentation about OTB applications_

.. _applications: http://orfeo-toolbox.org/Applications/

* OTB courses with Pleiades images to learn how to use OTB applications and Monteverdi2

  Follow the courses_ to learn more about OTB (see section Tutorials).

.. _courses: https://www.orfeo-toolbox.org/documentation/

