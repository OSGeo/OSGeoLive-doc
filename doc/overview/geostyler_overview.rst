:Author: Jan Suleiman
:Reviewer: Astrid Emde
:Version: osgeolive14.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)


@LOGO_geostyler@
@OSGEO_KIND_geostyler@


@NAME_geostyler@
================================================================================

@NAME_geostyler@ is an Open Source JavaScript library that enables users to style maps with the help of a Graphical User Interface.
The goal of @NAME_geostyler@ is a universally applicable GUI that works with any given style format; be it SLD, QML, OpenLayers, etc.

@NAME_geostyler@ provides a set of UI Components for map styling. Just like a modular building block system all components can be stacked
together to create a nice UI for your web applications. To simplify the setup, we also provide some high-level components
(based on our building blocks) that already do the work for you. These include, among many others, Symbolizer Editors, RuleTables and
a fully-fledged StyleEditor including filters and scale denominators.

Furthermore, @NAME_geostyler@ allows for the translation between multiple styling formats, i.e. SLD, OpenLayers, QGIS, Mapbox. Since we are
following the concept of micro packages, these translators (we call them parsers) can be used as standalone libraries, without the need to
include the UI components as a dependency. Currently we have parsers for SLD, QGIS-styles, Mapbox styles, OpenLayers styles and Mapfiles.
Please take a look at StyleParser Implementations. Since attributively styling geodata is easier when you can look
at the data to be styled, we can connect to several datasources like WFS, Shapefiles and GeoJSON files. We plan on developing a data reader for
the Geopackage format.

@SCREENSHOT_geostyler@

Core Features
--------------------------------------------------------------------------------
* Generic - not bound to one format only
* Supports common formats (e.g. SLD, QGIS) already out of the box
* Graphical User Interface (GUI) including support for reordering of rules, a mapview, pickers for colors and symbols and a ton more
* Has a GUI - but you are not required to use it
* Extensible - you're invited to build your own data readers or parsers
* Continues to grow - we are planning new features (like a commandline interface, more parsers etc.) and small improvements

Implemented Standards
--------------------------------------------------------------------------------

* |FE|
* Geographic JSON (GeoJSON)
* |OGC|
* |SLD|
* |WFS|
* |WMS|


Details
--------------------------------------------------------------------------------

**Website:** @WEB_geostyler@

**Licence:** BSD-2-Clause

**Software Version:** |version-geostyler|

**API Interfaces:** JavaScript

**Support:** Issues on https://github.com/geostyler/geostyler

**Developers:** https://github.com/geostyler/geostyler/graphs/contributors



@QUICKSTART_geostyler@

.. presentation-note
    @NAME_geostyler@ is an Open Source JavaScript library that enables users to style maps with the help of a Graphical User Interface.
