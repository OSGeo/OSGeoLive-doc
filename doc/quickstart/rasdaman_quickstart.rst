:Author: Peter Baumann (p.baumann@jacobs-university.de)
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:Version: osgeolive13.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)


@LOGO_rasdaman@
@OSGEO_KIND_rasdaman@
@VMDK_rasdaman@



.. _rasdaman-quickstart:

****************************************
@NAME_rasdaman@ Quickstart
****************************************

Rasdaman is a Big Data Engine for flexible ad-hoc analytics on multi-dimensional spatio-temporal sensor, image, simulation, and statistics data of unlimited size.
The Web Coverage Processing Service (WCPS) query language is an Open Geospatial Consortium (OGC) standard wich allows filtering and processing of multi-dimensional raster
coverages, such as sensor, simulation, image, and statistics data using web services. The WCPS queries are translated to rasdaman query language, rasql, and are executed
on rasdaman. This quick start shows how to access and manipulate an example 2D coverage using WCPS language.

.. contents:: Contents
   :local:

Setup
=====

The first step before trying any of the following queries is to start rasdaman
and Tomcat. Open the *Databases* directory on the Desktop, and then
*Start Rasdaman Server*. Allow two to three minutes for rasdaman and especially
Tomcat to fully start (once the
`rasdaman web client <http://localhost:8080/rasdaman/ows>`_ loads in the browser).

Afterwards, you can open *Rasdaman-Earthlook Demo* from the same directory,
which will launch a local demonstrator in the browser. For a more hands-on
tutorial though, continue with the next examples here.


Running WCPS queries
====================

Either:
  * Go to the `rasdaman web client <http://localhost:8080/rasdaman/ows>`_, switch to the *ProcessCoverages* tab, and enter your query in the query boxes and press send.
  * Add your query in this url: http://localhost:8080/rasdaman/ows?query=your_query and run it using a browser.


Running coverage
================

The example coverage which will be used subsequently is a 6 MB image as below:

.. image:: /images/projects/rasdaman/rasdaman_ndvi1.png
   :scale: 25 %

Access full coverage
====================

The WCPS query to access the full coverage is as follows:

::

   for c in (NIR) return encode(c, "png")

Click on `coverage request <http://localhost:8080/rasdaman/ows?query=for%20c%20in%20(NIR)%20return%20encode%28c,%20%22png%22%29>`_ to execute it in the browser.


Select a subset of the coverage
===============================

The WCPS query to access a subset of the coverage is as follows:

::

   for c in (NIR) return encode(c[i(0:500),j(0:500)], "png")

Click on the `subsetting request <http://localhost:8080/rasdaman/ows?query=for%20c%20in%20(NIR)%20return%20encode%28c[i(0:500), j(0:500)],%20%22png%22%29>`_ to execute it on the browser.

The query result is an image as follows:

.. image:: /images/projects/rasdaman/rasdaman_ndvi2.png
   :scale: 25 %


Band extraction from the coverage
=================================

The WCPS query to access the red band of the coverage is as follows:

::

   for c in (NIR) return encode(c.red, "png")

Click on `band extraction <http://localhost:8080/rasdaman/ows?query=for%20c%20in%20(NIR)%20return%20encode%28c.red,%20%22png%22%29>`_ to execute it; you should see the following image in the browser as a result:

.. image:: /images/projects/rasdaman/rasdaman_ndvi3.png
   :scale: 25 %

Arithmetic operation: Extracting NDVI of the coverage
=====================================================

The NDVI (Normalized Difference Vegetation Index) is a measure for the probability of vegetation in remote sensing, i.e., the closer to +1 a pixel is, the more likely it is plants.
The WCPS query to derive NDVI from the coverage is as follows:

::

   for c in ( NIR ) return
   encode(
     (unsigned char) (
        (((float)c.0 - (float)c.1) /
         ((float)c.0 + (float)c.1)) > 0
     ) * 255
   , "png" )

.. image:: /images/projects/rasdaman/rasdaman_ndvi4.png
   :scale: 25 %


What next?
==========

* The `rasdaman tutorial <https://tutorial.rasdaman.org/>`_ provides a condensed introduction to the concepts behind rasdaman, rasql and the OGC web services support.
* Learn more about the OGC  |WCPS| Language standard (which was heavily inspired 
  by rasdaman); a good starting point is the
  `documentation and tutorials page <https://standards.rasdaman.com/>`_  and `WCPS Query SandBox <http://localhost/rasdaman-demo/demo/client/query-sandbox.html>`_.
* Interested in coverage data and services in general? Visit OGC's `Coverages Domain Working Group wiki <https://external.ogc.org/twiki_public/CoveragesDWG/WebHome>`_.
* Explore the `rasdaman documentation <https://doc.rasdaman.org>`_ to learn about rasdaman administration, its query language, and data ingestion.
* Go to the `multi-dimensional demo <http://localhost/rasdaman-demo>`_ to explore interactive 1-D to 4-D rasdaman demos. 
  The small ones are part of OSGeoLive, those utilizing larger sets (beyond this drive's capacity) 
  forward to the `OGC standards showcase site <https://standards.rasdaman.com>`_ .
