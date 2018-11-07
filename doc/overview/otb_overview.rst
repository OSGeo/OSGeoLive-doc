:Author: OSGeoLive
:Reviewer: Cameron Shorter
:Version: osgeolive8.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_otb@
@OSGEO_KIND_otb@


@NAME_otb@
================================================================================

Image Processing
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

ORFEO Toolbox (OTB) is a high performance image processing library. It
is primarily used for processing large remote sensing images such as those
gathered by radars, satellites and aerial photography. OTB provides tools for
optic and radar images (tridimensional aspects, segmentation, classification,
changes detection, texture analysis, pattern matching, and optic/radar
complementarities), many of which can be run on limited-resourced laptops.

OTB is also shipped with a set of extensible ready-to-use tools for classical
remote sensing tasks and a fully integrated application called Monteverdi, which
is a fast viewer that allows users to vizualise multiple layers, and call OTB
processing tools from a menu entry.

OTB has been funded the French Space Agency (CNES) in the frame of the
Methodological Part of the ORFEO/Pleiades Accompaniement Program and has been
actively developed since 2006. It is based on the ITK image processing library
and is distributed as open source.

@SCREENSHOT_otb@

Core Features
--------------------------------------------------------------------------------


* Image access: optimized read/write access for most remote sensing raster
  formats (also JPEG2000 formats), meta-data access and visualization;
* Orthorectification using DEM, map reprojection and sensor model refinement
* Optical and SAR calibration
* Image fusion
* Filtering: blurring, denoising, enhancement...
* Feature extraction: interest points, alignments, lines...
* Object detection
* Large scale image segmentation: region growing, mean-shift, watershed, level sets...
* Sample selection framework for training
* Classification: both supervised and unsupervised algorithms coming from OpenCV
  , Shark, libSVM or custom implementations (K-means, Markov random fields, SVM,
  Random Forest, ...)
* Regression using machine learning methods from OpenCV (SVM, Random Forest, ...)
* Object-based image analysis
* Geospatial analysis
* Stereoscopic reconstruction from optical images
* SAR data analysis : calibration, polarimetry analysis
* change detection.

Details
--------------------------------------------------------------------------------

**Website:** http://www.orfeo-toolbox.org/

**Licence:** Apache v2.0

**Software Version:** |version-otb|

**Supported Platforms:** Linux, Mac, Windows

**API Interfaces:** C++

**Commercial Support:** http://www.osgeo.org/search_profile


@QUICKSTART_otb@

.. presentation-note
    ORFEO Toolbox is a high performance image processing library, funded by the French Space Agency. It is used for processing remote sensing images such as those gathered by radars, satellites and aerial photography.
