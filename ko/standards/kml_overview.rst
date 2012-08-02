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

KML Encoding Standard (KML)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

The OGC KML Encoding Standard is an XML language focused on geographic visualization, including annotation of maps and images. Geographic visualization includes not only the presentation of graphical data on the globe, but also the control of the user’s navigation in the sense of where to go and where to look. (http://www.opengeospatial.org/standards/KML)

.. image:: ../../images/standards/kml.jpg
  :scale: 55%
  :alt: KML in Context

In 2006, Google submitted KML (formerly Keyhole Markup Language) to the OGC for consideration as a standard. KML was the first instance of a de-facto standard being submitted into the OGC standards process and as such the OGC modified our standards approval process to accommodate standards that have been developed externally from the OGC and then submitted into the OGC process. There were four objectives for this standards work:

That there be one international standard language for expressing geographic annotation and visualization on existing or future web-based online maps (2d) and earth browsers (3d).
That KML be aligned with international best practices and standards, thereby enabling greater uptake and interoperability of earth browser implementations.
That the OGC and KML community will work collaboratively to insure that the KML implementer community is properly engaged in the process and that the KML community is kept informed of progress and issues.
That the OGC process will be used to insure proper life-cycle management of the KML candidate specification, including such issues as backwards compatibility.

KML was approved as an OGC standard in 2008 because the Membership believed that having KML as an OGC standard would encourage broader implementation and greater interoperability and sharing of earth browser content and context.
 
KML is complementary to most of the existing OGC specifications including key standards such as GML (Geography Markup Language), WFS (Web Feature Service) and WMS (Web Map Service). Currently, KML (v2.1) utilizes certain geometry elements derived from GML (version 2.1.2). These elements include point, line-string, linear-ring, and polygon.

See Also
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`gml_overview`
* :doc:`wfs_overview`
