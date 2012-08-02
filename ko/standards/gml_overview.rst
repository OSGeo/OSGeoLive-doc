.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    ../../images/project_logos/<filename>
  A symbolic link to the images directory is created during the build process.

.. image:: ../../images/project_logos/logo-OGC-left.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. image:: ../../images/project_logos/logo-OGC-right.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. Writing Tip: Name of application

Geography Markup Language (GML)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

GML (http://www.opengeospatial.org/standards/gml) is an XML grammar defined to express and communicate geographical features. GML serves as a modeling language for geographic systems as well as an open interchange format for geographic transactions on the Internet. Note that the concept of feature in GML is a very general one and includes not only conventional "vector" or discrete objects, but also coverages and some elements of sensor data. The ability to integrate all forms of geographic information is key to the utility of GML.

.. image:: ../../images/standards/gml.jpg
  :scale: 55%
  :alt: GML in Context

GML contains a rich set of primitives that are used to build application specific schemas or application languages. These primitives include:

* Feature
* Geometry
* Coordinate Reference System
* Topology
* Time
* Dynamic feature
* Coverage (including geographic images)
* Unit of measure
* Directions
* Observations
* Map presentation styling rules

Understanding the use of “Feature”, “Geometry”, and “CRS” is critical in the use and development of any GML based encoding.

OGC work on the GML standard began in 1998. GML was first formally approved as an OGC standard in 2001. GML became an ISO standard in 2007. GML 3.2.16 is the most current revision of the joint OGC-ISO standard. Versions 3.2.2 and 4.0 are currently in progress.

See Also
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* CityGML
* GeosciML
* GML in JPEG 2000
* :doc:`wfs_overview`
* :doc:`kml_overview`
* :doc:`sld_overview`
* :doc:`fe_overview`
