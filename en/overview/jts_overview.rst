:Author: Jody Garnett
:Reviewer:
:Version: osgeo-live 6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/jts_project.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://tsusiatsoftware.net/jts/main.html

JTS Topology Suite (JTS)
================================================================================

The JTS Topology Suite is an open source (LGPL) Java API of spatial predicates and functions for
processing geometry.  JTS offers a complete, consistent, robust implementation of fundamental
algorithms for processing linear geometry on the 2-dimensional Cartesian plane.

JTS is written in 100% pure Java and is fast enough production use.

.. image:: ../../images/screenshots/800x600/jts-overview.jpg
  :scale: 60 %
  :alt: JTS Topology Suite implementation of Simple Features for SQL Geometry
  :align: right

Computational stability in JTS project is backed by an extensive set of tests. A small application
is provided to run tests tests and experiment with Geometry interactively. We hope to include this
application on future editions of the OSGeo-Live project.

OSGeo-Live applications which directly use JTS:
:doc:`52nSOS_overview`,
:doc:`52nWPS_overview`,
:doc:`kosmo_overview`,
:doc:`52nWSS_overview`,
:doc:`atlasstyler_overview`,
:doc:`geomajas_overview`,
:doc:`saga_overview`,
:doc:`geonetwork_overview`,
:doc:`geopublisher_overview`,
:doc:`geoserver_overview`,
:doc:`udig_overview`,
:doc:`geotools_overview`,
:doc:`openjump_overview`,
:doc:`zoo-project_overview`,
:doc:`gvsig_overview`

OSGeo-Live applications which provide their own implementation of Geoemtry, backed by internal
use of JTS operations:
:doc:`deegree_overview` (GML3 geometry),
:doc:`geotools_overview` (ISO 19107 Geometry)

The :doc:`geos_overview` project is a port of JTS to the C++ environment, bringing
these high quality operations to many additional applications. Additional ports are available
for C# and JavaScript.

Core Features
--------------------------------------------------------------------------------

* Geometry Model
* Geometry Operations
* Precision Handling
* Geometric Constructions
* Metric Functions
* Spatial algorithms
* Mathematical Functions
* Spatial structures
* Input/Output
* High-Precision Arithmetic

Supported Formats
-----------------

* well-known text (WKT) and well-known-binary (WKB)
* GML 2
* Java Swing/AWT writing

Implemented Standards
--------------------------------------------------------------------------------

Support of numerous Open Geospatial Consortium (OGC) standards:

* OGC Simple Features for SQL (SFSQL)

Details
--------------------------------------------------------------------------------

**Website:** http://tsusiatsoftware.net/jts/main.html

**Licence:** LGPL

**Supported Platforms:** Cross Platform Java

**API Interfaces:** Java

**Support:** `JTS Mailing List <https://lists.sourceforge.net/lists/listinfo/jts-topo-suite-user>`_
