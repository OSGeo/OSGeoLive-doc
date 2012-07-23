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

Catalogue Service for the Web (CS-W)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.


.. image:: ../../images/standards/csw.jpg
  :scale: 55%
  :alt: CS-W in Context

The OGC Catalogue Service interface standard specifies a design pattern for defining interfaces to publish and search collections of descriptive information (metadata) about geospatial data, services and related information objects. Providers of resources, such as content providers, use catalogues to register metadata that conform to the provider's choice of an information model; such models include descriptions of spatial references and thematic information. Client applications can then search for geospatial data and services in very efficient ways. 

There are several profiles of the current OGC CS-W model. These include:

* ISO 19115/19139 Metadata profile (http://www.iso.org/iso/catalogue_detail.htm?csnumber=32557). This document specifies an application profile for ISO metadata with support for XML encoding per ISO 19139 (http://www.iso.org/iso/catalogue_detail.htm?csnumber=32557) and HTTP protocol binding. This CS-W profile is widely implemented in Europe, such as in the Spatial Data Infrastructure for North Rhine Westphalia (federal state of Germany).
* CSW-ebRIM Registry Service. (http://portal.opengeospatial.org/files/?artifact_id=31137) This profile applies the CSW interfaces to the OASIS ebXML registry information model (ebRIM 3.0) so as to provide a general and flexible web-based registry service that enables users—human or software agents—to locate, access, and make use of resources in an open, distributed system; it provides facilities for retrieving, storing, and managing many kinds of resource descriptions. An extension mechanism permits registry content to be tailored for more specialized application domains.
* CSW 39.50: The Z39.50 Protocol binding uses a message-based client server architecture implemented using the ANSI/NISO Z39.50 Application Service Definition and Protocol Specification3. This protocol binding maps each of the general model operations to a corresponding service specified in the ANSI/NISO/ISO standard http://lcweb.loc.gov/z3950/agency/document.html. 

Much of the current work on this standard has to do with restructuring the catalogue standard so that there is a well defined, easy to implement core coupled with a well defined mechanism for expressing a variety of extensions (previously known as application profiles).

See Also
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* Cat: ebRIM App Profile: Earth Observation Products
* ISO 23950 (2003). "Information Retrieval (Z39.50): Application Service Definition and Protocol Specification"
