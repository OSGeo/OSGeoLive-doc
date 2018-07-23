Geospatial standards
================================================================================

|

1. Open Geospatial Consortium
================================================================================

The Open Geospatial Consortium (OGC) was founded in 1994 to make geographic information an integral part of the world’s information infrastructure. OGC members – technology providers and technology users – collaboratively develop open interface standards and associated encoding standards, and also best practices, that enable developers to create information systems that can easily exchange “geospatial” information and instructions with other information systems. Requirements range from complex scheduling and control of Earth observation satellites to displaying simple map images on the Web and encoding location in just a few bytes for geo-tagging and messaging. A look at the `OGC Domain Working Groups <http://www.opengeospatial.org/projects/groups/wg>`_ shows the wide scope of current activity in the OGC.

The OGC Standards Baseline consists of the `OGC standards <http://www.opengeospatial.org/standards>`_ for interfaces, encodings, profiles, application schemas, and best practice documents. The `OGC Reference Model (ORM) <http://www.opengeospatial.org/standards/orm>`_ describes these standards and the relationships between them and related ISO standards. The ORM provides an overview of OGC standards and serves as a useful resource for defining architectures for specific applications.

.. image:: /images/logos/ogc.png
  :alt:  Open Geospatial Consortium
  :target: http://www.opengeospatial.org
  :scale: 50 %
  :align: right  
  
In developing a Web services application using OGC standards (and in learning about the relationships between OGC standards) it helps to think of publish, find and bind as the key functions for applications in a Web services environment.

   * Publish: Resource providers advertise their resources.
   * Find: End users and their applications can discover resources that they need at run-time.
   * Bind: End users and their applications can access and exercise resources at run-time.

Most of the OGC standards developed in recent years are standards for the Web services environment, and these standards are collectively referred to as OGC Web Services (OWS). A `comprehensive list of standards <http://www.opengeospatial.org/standards/>`_ is available.

|

2. Infrastructure for Spatial Information in Europe (INSPIRE)
================================================================================

The `INSPIRE Directive <https://inspire.ec.europa.eu>`_ aims to create a European Union spatial data infrastructure (SDI) for the purposes of environmental policies. This European SDI will enable the sharing of environmental spatial information among public sector organisations, facilitate public access to spatial information and assist in policy-making across boundaries.
INSPIRE is based on the infrastructures for spatial information established and operated by the 28 Member States of the European Union. The Directive addresses 34 spatial data themes needed for environmental applications.  It came into force on 15 May 2007 and will be implemented in various stages, with full implementation required by 2021. INSPIRE is on a technical level based on international standards, mainly those developed by the OGC and ISO.



.. image:: /images/logos/inspire.png
  :alt:  Infrastructure for Spatial Information in Europe
  :target: https://inspire.ec.europa.eu/about-inspire/563
  :scale: 50 %
  :align: right


Public sector authorities whose data falls within the scope of the Directive shall:

	* Document them through metadata.
	* Establish network services (discovery, view, download).
	* Harmonise their spatial data in accordance with common specifications.

Currently, more than 7,000 institutions contribute their data to INSPIRE. A significant share of them use OSGeo applications throughout the implementation process. `OSGeoLive <http://live.osgeo.org/>`_ provides an easy entry to the implementation process through an increasing number of readily available examples with sample data European data from multiple application domains. In addition, a dedicated wiki page on `INSPIRE and OSGeo <https://wiki.osgeo.org/wiki/INSPIRE>`_ is established that gives an overview of the legal and technical aspects of INSPIRE together with selected use cases and an overview of OSGeo tools that implementers may use.
