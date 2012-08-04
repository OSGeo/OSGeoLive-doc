:Author: Jinsongdi Yu (j.yu@jacobs-university.de)
:Author: Michael Owonibi (o.michael@jacobs-university.de)
:Author: Peter Baumann (p.baumann@jacobs-university.de)
:Author: Dimitar Misev (d.misev@jacobs-university.de)
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-rasdaman.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.rasdaman.org


********************************************************************************
rasdaman Quickstart
********************************************************************************

rasdaman is a raster server allowing queries on n-D raster data stored in a standard relational database.

This Quick Start describes how to try out queries on a sandbox of raster objects. Before trying these examples, the rasdaman server has to be started (:menuselection:`Geospatial --> Databases --> Rasdaman --> Start Rasdaman Server`).

Exploring the 1-D to 4-D examples
================================================================================

    * Go to the EarthLook `Earthlook <http://localhost:8080/earthlook/index.php>`_ demo to explore various demo data sets. The small ones are part of OSGeo-Live, those utilizing larger sets forward directly to the `Earthlook site <http://kahlua.eecs.jacobs-university.de/~earthlook/demos/index.php>`_ .

Running queries locally
================================================================================

    * Open a console and open the sample database installed locally
    * use the :command:`rasql` utility to send queries and receive results, for example::

      $ rasql -q "select png((char)(c.red / (c.red + c.green) - c.green / (c.red + c.green)) > 0.6 * 255) from rgb AS c" --out file

    * use your favorite image inspection tool to open the file generated.


Create your own database
================================================================================

    * Open a console
    * `Download and install rasdaman <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/wiki/Download>`_ and `its prerequisites <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/wiki/RequiredPackages>`_
    * run the demo ingestion script::

      $ install_demo.sh

    * use the :command:`rasql` utility to send queries and receive results, for example::

      $ rasql -q "select png( NIR ) from NIR" --out file


Things to Try:
================================================================================

Here are some additional challenges for you to try:

    * Explore the demo data sets by browsing the `rasql query language guide <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/browser/manuals_and_examples/manuals/pdf/ql-guide.pdf>`_
    * To learn more about the OGC  `Web Coverage Processing Service <http://www.opengeospatial.org/standards/wcps>`_ (WCPS) Language standard (which was heavily inspired by rasdaman), a starting point is the  `documentation and tutorials page <http://kahlua.eecs.jacobs-university.de/~earthlook/tech/interface-wcps.php>`_ . 

