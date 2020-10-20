:Author: OSGeoLive
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeolive9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_openjump@
@OSGEO_KIND_openjump@


@NAME_openjump@
================================================================================

Desktop GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

OpenJUMP is an easy to use and powerful desktop GIS that enables users
to display, edit, analyse and conflate geographic data.
It comes in a CORE and a PLUS edition, with the latter adding lots of useful plugins.
OpenJUMP is excellent for data editing and rapid prototyping of GIS functions.

@SCREENSHOT_openjump@

Features (Core Features and PlugIns*)
--------------------------------------------------------------------------------

* Data Formats

    * reads (files): GML, SHP, DXF+, MIF*, CSV+, KML+, OSM* & TIFF, ASCII grid, JPG, PNG, JPEG2000+, MrSID*, ECW+
    * reads (DB): PostGIS, ArcSDE*, Oracle*, MySQL*, SpatiaLite+, H2 Spatial+, MariaDB+
    * reads (OGC standards): WKT, WMS, KML+, GeoPackage
    * writes: GML, SHP, WKT, DXF+, CSV+, PostGIS & JPG, TIFF, ASCII grid*, SVG+
    * note, formats marked with a (*) require an additional plugin, and with (+) are part of the PLUS edition.

* Editing & Conflation

    * drawing points, lines, polygons, multi-geometries, geometry collections and circles (eventually mixed in a single layer)
    * adding, moving, deleting vertices
    * rotating, scaling, auto-complete polygon
    * cut, merge, simplify polygons and lines
    * warping, quality assurance tools
    * coordinate conversions between CRS'

* Analysis & Query

    * spatial and attribute query functions
    * analysis : buffer, union, overlay, centroid, convex hull...
    * statistics : length, area, layer statistics, attribute statistics, plots...
    * editing tools : converter, noder, polygonizer, planar graph, topology cleaning in PLUS edition, ...
    * attribute transfer tools : join, matching*
    * SEXTANTE raster analysis toolbox included in PLUS edition

* Customization

    * internationalization (cz, de, en, es, fi, fr, hu, it, ja, pt, ta, zh)
    * provides an API, scripting via BeanShell and Java Python/Ython
    * (Java) plugin-system

Implemented Standards
--------------------------------------------------------------------------------

.. Writing Tip: List OGC or related standards supported.

* OGC standards supported: GML2, SFS, WMS, KML, SLD, GeoPackage (reading);

Details
--------------------------------------------------------------------------------

**Website:** @WEB_openjump@

**Licence:** GPL

**Software Version:** |version-openjump|

**Supported Platforms:** Windows, Linux, Mac, Unix

**Community Support:** http://www.openjump.org/support.html

**Commercial Support:** https://ojwiki.soldin.de/index.php?title=Professional_Support_Page

**Download Page:** https://sourceforge.net/projects/jump-pilot/files/

@VMDK_openjump@
@QUICKSTART_openjump@

.. presentation-note
    OpenJUMP is a spin-off from the original JUMP project, which was Open Source but didn't accept improvements and updates from the community. This resulted in over 10 forks of the original code base. OpenJUMP provided a merging back together of many of these forks.
    OpenJUMP is an easy to use and powerful deskstop GIS that enables users to edit, analyse, and display geographic data. It is particularly good at conflation, which involves aligning a feature which is shown in different locations on two different map layers.

