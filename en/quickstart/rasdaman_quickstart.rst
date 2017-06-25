:Author: Peter Baumann (p.baumann@jacobs-university.de)
:Version: osgeo-live11.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _rasdaman-quickstart:

.. image:: /images/project_logos/logo-rasdaman.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.rasdaman.org


********************
Rasdaman Quickstart
********************

Rasdaman is a Big Data Engine for flexible ad-hoc analytics on multi-dimensional spatio-temporal sensor, image, simulation, and statistics data of unlimited size.
The Web Coverage Processing Service (WCPS) query language is an Open Geospatial Consortium (OGC) standard wich allows filtering and processing of multi-dimensional raster
coverages, such as sensor, simulation, image, and statistics data using web services. The WCPS queries are translated to rasdaman query language, rasql, and are executed
on rasdaman. This quick start shows how to access and manipulate an example 2D coverage using WCPS language.

.. contents:: Contents

Running WCPS Queries
================================================================================

Either:
  * Go to `WCPS servlet page <http://localhost:8080/rasdaman/ows>`_ and enter you query in the query boxes and press send.
  * Add your query in this url: http://localhost:8080/rasdaman/ows?query=your_query and run it using a browser.


Running Coverage
================================================================================

The example coverage which will be used in the seqeul is a 6 MB image as bellow:

.. image:: /images/screenshots/800x600/rasdaman_ndvi1.png
   :scale: 25 %

Access A Coverage
================================================================================

The WCPS query to access the full coverage is as follows:

::

   for c in (NIR) return encode(c, "png")

Click on `coverage <http://localhost:8080/rasdaman/ows?query=for%20c%20in%20(NIR)%20return%20encode%28c,%20%22png%22%29>`_ to execute it on the browser.


Select a Subset of the Coverage
================================================================================

The WCPS query to access a subset of the coverage is as follows:

::

   for c in (NIR) return encode(c[i(0:500),j(0:500)], "png")

Click on the `subsetting <http://localhost:8080/rasdaman/ows?query=for%20c%20in%20(NIR)%20return%20encode%28c[i(0:500), j(0:500)],%20%22png%22%29>`_ to execute it on the browser.

The query result is an image as follows:

.. image:: /images/screenshots/800x600/rasdaman_ndvi2.png
   :scale: 25 %


Band Extraction from the Coverage
================================================================================

The WCPS query to access the red band of the coverage is as follows:

::

   for c in (NIR) return encode(c.red, "png")

Click on `band extraction <http://localhost:8080/rasdaman/ows?query=for%20c%20in%20(NIR)%20return%20encode%28c.red,%20%22png%22%29>`_ to execute it on the browser.

You should see the following image in the browser:

.. image:: /images/screenshots/800x600/rasdaman_ndvi3.png
   :scale: 25 %

Arithmetic Operation: Extracting NDVI of the Coverage
================================================================================

The NDVI (Normalized Difference Vegetation Index) is a measure for the probability of vegetation in remote sensing, i.e., the closer to +1 a pixel is, the more likely it is plants.
The WCPS query to derive NDVI from the coverage is as follows:

::

   for c in ( NIR ) return encode( ( (char) ( ( ( ((float)c).0-((float)c).1 ) / ( (float)c.0+((float)c).1 )) > 0 ) * 255), "png" )

.. image:: /images/screenshots/800x600/rasdaman_ndvi4.png
   :scale: 25 %


What Next?
================================================================================

  * The `rasdaman tutorial <http://tutorial.rasdaman.org/rasdaman-and-ogc-ws-tutorial/>`_ provides a condensed introduction to the concepts behind rasdaman, rasql and the OGC web services support.
  * Learn more about the OGC  `Web Coverage Processing Service <http://www.opengeospatial.org/standards/wcps>`_ (WCPS) Language standard (which was heavily inspired by rasdaman); a good starting point is the  	`documentation and tutorials page <http://earthlook.org/standards>`_  and `WCPS Query SandBox <http://localhost/rasdaman-demo/demo/client/query-		sandbox.html>`_.
  * Interested in coverage data and services in general? Visit OGC's `Coverages Domain Working Group wiki <http://external.opengeospatial.org/twiki_public/CoveragesDWG/WebHome>`_.
  * Read `rasql query language guide <http://rasdaman.org/browser/manuals_and_examples/manuals/doc-guides/ql-guide.pdf>`_ to learn about rasdaman query language.
  * Go to the `multi-dimensional demo <http://localhost/rasdaman-demo>`_ to explore interactive 1-D to 4-D rasdaman demos. The small ones are part of OSGeo-Live, those utilizing larger sets (beyond this drive's capacity) forward to the `OGC standards showcase site <http://standards.rasdaman.org>`_ .


