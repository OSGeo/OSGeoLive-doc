:Author: Peter Baumann (p.baumann@jacobs-university.de)
:Version: osgeo-live7.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _rasdaman-quickstart:
 
.. image:: ../../images/project_logos/logo-rasdaman.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.rasdaman.org


********************
rasdaman Quickstart
********************

rasdaman is a Big Data Engine for flexible ad-hoc analytics on multi-dimensional spatio-temporal sensor, image, simulation, and statistics data of unlimited size.


Exploring the 1-D to 4-D examples
=================================

OSGeo Live contains a multitude of interactive 1D through 4D rasdaman demos.
    * Go to the `multi-dimensional demo <http://localhost/rasdaman-demo>`_ to explore these demos.
    * The small ones are part of OSGeo-Live, those utilizing larger sets (beyond this drive's capacity) forward to the `OGC standards showcase site <http://standards.rasdaman.org>`_ .


Running queries on the OSGeo database
=====================================

    * Open a console, type in commands for sending queries and receive results. Here is an example combining red and blue bands from a sample RGB image::

      $ rasql -q "select png( rgb.red + rgb.blue ) from rgb" --out file --filename osgeo.png

    * use your favorite image inspection tool to open the file generated.


Things to Try
=============

Here are some additional challenges for you to try:
    * Experiment with your own queries; the `rasql query language guide <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/browser/manuals_and_examples/manuals/pdf/ql-guide.pdf>`_ is your friend.
    * To learn more about the OGC  `Web Coverage Processing Service <http://www.opengeospatial.org/standards/wcps>`_ (WCPS) Language standard (which was heavily inspired by rasdaman); a good starting point is the  `documentation and tutorials page <http://kahlua.eecs.jacobs-university.de/~earthlook/tech/interface-wcps.php>`_ .
    * Interested in coverage data and services in general? Visit OGC's `Coverages Domain Working Group wiki <http://external.opengeospatial.org/twiki_public/CoveragesDWG/WebHome>`_.


Create your own database
========================

    * Open a console, `Download and install rasdaman <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/wiki/Download>`_ and `its prerequisites <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/wiki/RequiredPackages>`_, run the demo ingestion script::

      $ install_demo.sh

    * use the rasql utility for querying, for example the one from above or this one::

      $ rasql -q "select csv( marray bucket in [0:255] values count_cells( rgb.red = bucket ) ) from rgb --out string"

    * add your own datasets (see `<http://www.rasdaman.org/wiki/PetascopeUserGuide>`_ for details), publish them via OGC services.


