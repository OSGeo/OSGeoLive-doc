.. Geospatial Standards documentation master file, created by
   sphinx-quickstart on Mon Jul 19 08:52:52 2010.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Open Geospatial Consortium Standards
================================================================================

Introduction
--------------------------------------------------------------------------------
The Open Geospatial Consortium (OGC) was founded in 1994 to make geographic information an integral part of the world’s information infrastructure. OGC members – technology providers and technology users -- collaboratively develop open interface standards and associated encoding standards, and also best practices, that enable developers to create information systems that can easily exchange “geospatial” information and instructions with other information systems. Requirements range from complex scheduling and control of Earth observation satellites to displaying simple map images on the Web and encoding location in just a few bytes for geo-tagging and messaging. A look at the OGC Domain Working Groups (http://www.opengeospatial.org/projects/groups/wg) shows the wide scope of current activity in the OGC.

The OGC Baseline and OGC Reference Model
--------------------------------------------------------------------------------

The OGC Standards Baseline consists of the OGC standards (http://www.opengeospatial.org/standards) for interfaces, encodings, profiles, application schemas, and best practice documents. The OGC Reference Model (ORM) (http://www.opengeospatial.org/standards/orm) describes these standards and the relationships between them and related ISO standards. The ORM provides an overview of OGC standards and serves as a useful resource for defining architectures for specific applications.

In developing a Web services application using OGC standards (and in learning about the relationships between OGC standards) it helps to think of publish, find and bind as the key functions for applications in a Web services environment.

* Publish: Resource providers advertise their resources.
* Find: End users and their applications can discover resources that they need at run-time.
* Bind: End users and their applications can access and exercise resources at run-time.

Most of the OGC standards developed in recent years are standards for the Web services environment, and these standards are collectively referred to as OGC Web Services (OWS). The figure below provides a general architectural schema for OGC Web Services. This schema identifies the generic classes of services that participate in various geoprocessing and location activities.


.. figure:: ../../images/standards/publish_find_bind.jpg
  :scale: 55%
  :alt: Web services framework of OGC geoprocessing standards

Acronyms in the figure are defined below. Some of these are “OGC standards” and others are publicly available “Discussion Papers”, “Requests” and “Recommendation Papers”. (Note that some in work candidate standards are not yet public, but are accessible by OGC members.) 

* :doc:`wms_overview`
* :doc:`wfs_overview`
* :doc:`wcs_overview`
* :doc:`wps_overview`
* :doc:`csw_overview`
* :doc:`sos_overview`
* Sensor Planning Service (SPS)
* Web Terrain Service (WTS)
* Grid Coverage Service
* Coordinate Transformation Service
* Web Coverage Processing Service (WCPS)
* Web Map Tile Service (WMTS)
* :doc:`gml_overview`
* :doc:`kml_overview`
* :doc:`sensorml_overview`
* :doc:`sld_overview`
* :doc:`fe_overview`
* Simple Features (SF)
* Sensor Web Enablement (SWE)
* XML for Image and Map Annotation (XIMA)
* CityGML
* GeosciML
* GML in JPEG 2000
* Observations and Measurements (O&M)
* Symbology Encoding
* Transducer Markup Language (TML)


.. links to standards
  * :doc:`wms_overview` (http://www.opengeospatial.org/standards/wms)
  * :doc:`wfs_overview` (http://www.opengeospatial.org/standards/wfs)
  * :doc:`wcs_overview` (http://www.opengeospatial.org/standards/wcs)
  * :doc:`wps_overview` (http://www.opengeospatial.org/standards/wps)
  * :doc:`csw_overview` (http://www.opengeospatial.org/standards/specifications/catalog)
  * :doc:`sos_overview` (http://www.opengeospatial.org/standards/sos)
  * Sensor Model Language (SensorML) (http://www.opengeospatial.org/standards/sensorml) 
  * Sensor Planning Service (SPS) (http://www.opengeospatial.org/standards/sps)
  * Web Terrain Service (WTS) (http://portal.opengeospatial.org/files/?artifact_id=1072)
  * Grid Coverage Service (http://www.opengeospatial.org/standards/gc)
  * Coordinate Transformation Service (http://www.opengeospatial.org/standards/ct)
  * Web Coverage Processing Service (WCPS) (http://www.opengeospatial.org/standards/wcps)
  * Web Map Tile Service (WMTS) (http://www.opengeospatial.org/standards/wmts)
  * :doc:`gml_overview` (http://www.opengeospatial.org/standards/gml) 
  * :doc:`kml_overview` (http://www.opengeospatial.org/standards/kml)
  * :doc:`sensorml_overview` (http://www.opengeospatial.org/standards/sensorml)
  * Styled Layer Descriptor (SLD) (http://www.opengeospatial.org/standards/sfc) 
  * Filter Encoding (http://www.opengeospatial.org/standards/filter)
  * Simple Features (SF) (http://www.opengeospatial.org/standards/sfa) 
  * Sensor Web Enablement (SWE) (http://www.opengeospatial.org/ogc/markets-technologies/swe)
  * XML for Image and Map Annotation (XIMA) (http://portal.opengeospatial.org/files/?artifact_id=1020) 
  * CityGML (http://www.opengeospatial.org/standards/citygml)
  * GeosciML (http://www.geosciml.org/)
  * GML in JPEG 2000 (http://www.opengeospatial.org/standards/gmljp2)
  * Observations and Measurements (O&M) (http://www.opengeospatial.org/standards/om)
  * Symbology Encoding (http://www.opengeospatial.org/standards/symbol)
  * Transducer Markup Language (TML) (http://www.opengeospatial.org/standards/tml)

See Also:
--------------------------------------------------------------------------------

* Comprehensive list of OGC standards: http://www.opengeospatial.org/standards/
* OGC tutorials presented at IGARSS 2010: http://www.ogcnetwork.net/node/1481 
* OGC Network Learn pages (http://www.ogcnetwork.net/learn).
