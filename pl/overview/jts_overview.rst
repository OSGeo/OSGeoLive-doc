:Author: Jody Garnett
:Translator: Milena Nowotarska, OSGeo
:Reviewer:
:Version: osgeo-live 6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/jts_project.png
  :alt: project logo
  :align: right
  :target: https://sourceforge.net/projects/jts-topo-suite/

JTS Topology Suite (JTS)
================================================================================

The JTS Topology Suite is an open source (LGPL) Java API of spatial predicates and functions for
processing geometry.  JTS offers a complete, consistent, robust implementation of fundamental
algorithms for processing linear geometry on the 2-dimensional Cartesian plane.

JTS is written in 100% pure Java and is fast enough production use.

.. image:: /images/screenshots/800x600/jts-overview.jpg
  :scale: 60 %
  :alt: JTS Topology Suite implementation of Simple Feature for SQL Geometry
  :align: right

Computational stability in JTS project is backed by an extensive set of tests. A small application
is provided to run tests tests and experiment with Geometry interactively. We hope to include this
application on future editions of the OSGeo-Live project.

Aplikacje OSGeo-Live bezpośrednio używające JTS:
:doc:`52nSOS_overview`,
:doc:`52nWPS_overview`,
:doc:`kosmo_overview`,
:doc:`52nWSS_overview`,
`AtlasStyler <http://en.geopublishing.org/AtlasStyler>`_,
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

Aplikacje OSGeo-Live posiadające własne implementacje Geoemtrii, bazujące na operacjach JTS:
:doc:`deegree_overview` (GML3 geometry),
:doc:`geotools_overview` (ISO 19107 Geometry)

Projekt :doc:`geos_overview` jest portem JTS do środowiska C++, który pozwala na
użycie tych wysokiej jakości operacji w wielu innych aplikacjach. Dodatkowe porty są 
dostępne dla C# i JavaScript.

Główne funkcje
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

Obsługiwane formaty
--------------------------------------------------------------------------------

* well-known text (WKT) i well-known-binary (WKB)
* GML 2
* Java Swing/AWT writing

Zaimplementowane standardy
--------------------------------------------------------------------------------

Obsługa wielu standardów Open Geospatial Consortium (OGC):

* OGC Simple Feature for SQL (SFSQL)

Szczegóły
--------------------------------------------------------------------------------

**Strona internetowa:** https://sourceforge.net/projects/jts-topo-suite/

**Licencja:** LGPL

**Systemy operacyjne:** Cross Platform Java

**Interfejsy API:** Java

**Wsparcie:** `JTS Mailing List <https://lists.sourceforge.net/lists/listinfo/jts-topo-suite-user>`_
