.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OSGeo Live
:Version: osgeo-live4.0
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _r-overview:

.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    images/project_logos/<filename>

.. image:: images/project_logos/logo-R.jpg
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://cran.r-project.org


.. Writing Tip: Name of application

R Spatial Task View
===================

.. Writing Tip:
  Application Category Description:
  * Spatial Database
  * Web Service
  * Metadata Web Service
  * Desktop GIS
  * Browser GIS client
  * Business Intelligence
  * GIS Tools
  * ...

Statistical Programming
~~~~~~~~~~~~~~~~~~~~~~~

.. Writing Tip:
  Address user questions of "What does the application do?",
  "When would I use it?", "Why would I use it over other applications?",
  "How mature is the application and how widely deployed is it?".
  Don't mention licence or open source in this section.
  Target audience is a GIS practitioner or student who is new to Open Source.
  
R is a powerful, widely used software environment for statistical computing and graphics which excels at analyzing and processing geographic data sets. Geospatial analysis capabilities within R are available in R packages (modules that extend the capabilities of R) that provide access to a large number of traditional and state of the art algorithms, often before they are available in other open source or proprietary software. R and it's packages are able to process point, line, polygon and grid data. Users can accomplish a broad array of tasks such as: image classification, statistical analysis to infer spatial relationships and patterns of features, and others listed in the core features below. The functions available via R compliment and advance capabilities found in GIS and image processing software.

The core R interface is a command line window which provides excellent flexibility and control but tends to lengthen the time required to become a proficient user when compared to software with a graphical user interface (GUI). Fortunately R is well documented on the web site which eases the learning proces. Scripts are often used to automate processing steps and there are  projects that are developing open source GUIs for R (http://rwiki.sciviews.org/doku.php?id=guis:guis). 

R is an implementation of the S programming language and there is significant compatibility between R and legacy S and S-Plus code as well as between R and the modern commercial version of S, TIBCO Spotfire S+. This comparability makes it possible to convert different versions of S code to run on R without major code modifications.  

.. Writing Tip:
  Provide a image of the application which will typically be a screen shot
  or a collage of screen shots.
  Store image in image/<application>_<name>.gif . Eg: udig_main_page.gif
  Screenshots should be captured from a 1024x768 display.
  Don't include the desktop background as this changes with each release
  and will become dated.

.. image:: images/screenshots/1024x768/r-perspective.png
  :scale: 50 %
  :alt: project logo
  :align: right

Core Features
-------------

* Complete Object Oriented Programming Language designed for Statistics and similar Mathematical intensive applications
* Hundreds of community contributed add-on packages for spatial statistics
* Classes for spatial data
* Handling spatial data
* Reading and writing spatial data
* Point pattern analysis
* Geostatistics
* Disease mapping and areal data analysis
* Spatial regression
* Ecological analysis

.. Writing Tip:
  Optional: A second screenshot can sometimes be added here
  if there is sufficient room.
  .. image:: images/screenshots/1024x768/r-distance.png
    :scale: 50 %
    :alt: project logo
    :align: right

Details
-------

**Website:** http://cran.r-project.org

**Licence:** GPL

**Supported Platforms:** Windows, Linux, Mac, Unix

.. Writing Tip:
  Link to jump page which lists commercial support for the application.

**Community Support:** http://cran.r-project.org/web/views/Spatial.html

.. Writing Tip:
  Later, we may introduce a Maturity Rating, but currently the format, and
  whether we go ahead with such a rating is still under discussion.
  http://wiki.osgeo.org/wiki/Marketing_Artefacts#Maturity_Rating
