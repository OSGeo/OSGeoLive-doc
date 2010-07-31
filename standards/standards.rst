.. GeoSpatial Standards documentation master file, created by
   sphinx-quickstart on Mon Jul 19 08:52:52 2010.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Open GeoSpatial Consortium Standards
====================================


.. toctree::
    :maxdepth: 1

    wms_overview.rst
    wfs_overview.rst
    wcs_overview.rst
    csw_overview.rst
    sos_overview.rst
    wps_overview.rst
    gml_overview.rst
    kml_overview.rst
    sensorml_overview.rst

Introduction
------------
The Open Geospatial Consortium (OGC) was founded in 1994 to make geographic information an integral part of the world’s information infrastructure. OGC members – technology providers and technology users -- collaboratively develop open interface standards and associated encoding standards, and also best practices, that enable developers to create information systems that can easily exchange “geospatial” information and instructions with other information systems. Requirements range from complex scheduling and control of Earth observation satellites to displaying simple map images on the Web and encoding location in just a few bytes for geo-tagging and messaging. A look at the OGC Domain Working Groups (http://www.opengeospatial.org/projects/groups/wg) shows the wide scope of current activity in the OGC.

The OGC Baseline and OGC Reference Model
----------------------------------------

The OGC Standards Baseline consists of the OGC standards (http://www.opengeospatial.org/standards) for interfaces, encodings, profiles, application schemas, and best practice documents. The OGC Reference Model (ORM) (http://www.opengeospatial.org/standards/orm) describes these standards and the relationships between them and related ISO standards. The ORM provides an overview of OGC standards and serves as a useful resource for defining architectures for specific applications.

In developing a Web services application using OGC standards (and in learning about the relationships between OGC standards) it helps to think of publish, find and bind as the key functions for applications in a Web services environment.

* Publish: Resource providers advertise their resources.
* Find: End users and their applications can discover resources that they need at run-time.
* Bind: End users and their applications can access and exercise resources at run-time.

Most of the OGC standards developed in recent years are standards for the Web services environment, and these standards are collectively referred to as OGC Web Services (OWS). The figure below provides a general architectural schema for OGC Web Services. This schema identifies the generic classes of services that participate in various geoprocessing and location activities.


.. figure:: images/standards/publish_find_bind.jpg
  :scale: 25%
  :alt: Web services framework of OGC geoprocessing standards

Acronyms in the figure are defined below. Some of these are “OGC standards” and others are publicly available “Discussion Papers”, “Requests” and “Recommendation Papers”. (Note that some in work candidate standards are not yet public, but are accessible by OGC members.) 

* GML – Geography Markup Language (http://www.opengeospatial.org/standards/gml) 
* SensorML – Sensor Model Language (http://www.opengeospatial.org/standards/sensorml) 
* SLD – Styled Layer Descriptor (http://www.opengeospatial.org/standards/sfc) 
* SF – Simple Features (http://www.opengeospatial.org/standards/sfa) 
* SWE – Sensor Web Enablement (http://www.opengeospatial.org/ogc/markets-technologies/swe)
* WCS – Web Coverage Service (http://www.opengeospatial.org/standards/wcs)
* WFS – Web Feature Service (http://www.opengeospatial.org/standards/wfs)
* WPS – Web Processing Service (http://www.opengeospatial.org/standards/wps)
* WMS – Web Map Service Interface (http://www.opengeospatial.org/standards/wms)
* WTS – Web Terrain Service (http://portal.opengeospatial.org/files/?artifact_id=1072)
* XIMA – XML for Image and Map Annotation (http://portal.opengeospatial.org/files/?artifact_id=1020) 

See Also:
---------

* OGC tutorials presented at IGARSS 2010: http://www.ogcnetwork.net/node/1481 
* OGC Network Learn pages (http://www.ogcnetwork.net/learn).
