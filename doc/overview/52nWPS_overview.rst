:Author: Bastian Schaeffer, Kristof Lange, Benjamin Pross
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeolive11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_52nWPS@
@OSGEO_KIND_52nWPS@


@NAME_52nWPS@
================================================================================

About
--------------------------------------------------------------------------------

The 52°North `Web Processing Service (WPS) <http://www.opengeospatial.org/standards/wps>`__ enables web access to geospatial
processing algorithms provided by Sextante, ArcGIS Server, R, GRASS 7, or custom developed
functions. Algorithms may be as simple as determining the difference in 
influenza cases between two different seasons, or as complicated as a global climate change model.

@SCREENSHOT_52nWPS@

Core Features
--------------------------------------------------------------------------------

Core GIS functions:

* SimpleBufferAlgorithm
* DouglasPeuckerAlgorithm
* IntersectionAlgorithm
* AddRasterValuesAlgorithm
* CoordinateTransformAlgorithm
	
Backend algorithms available through:

* Sextante
* ArcGIS Server
* R
* GRASS 7

Input and Output formats supported:

* Vector Data: GML2, GML3, SHP files, KML, WKT (Well-known Text), DGN, JSON
* Raster Data: Geotiff, AsciiGrid, NetCDF, JPEG, PNG, HDF-EOS, ERDAS HFA
* Outputs can be stored in GeoServer/MapServer

A browser based client

Implemented Standards
--------------------------------------------------------------------------------

* OGC Web Processing Service (WPS)
* OGC GML2 SimpleFeatures
* OGC GML3 SimpleFeatures

Details
--------------------------------------------------------------------------------

**Website:** https://52north.org/software/software-projects/wps/

**Licence:** GPL 2

**Software Version:** |version-52nWPS|

**Supported Platforms:** Windows, Linux, Mac

**Commercial Support:** https://52north.org/services/

**Other 52°North projects:** :doc:`SOS <./52nSOS_overview>`


@QUICKSTART_52nWPS@

.. presentation-note
    The 52°North WPS is a java-based Web Processing Service which provides web access to geospatial processing algorithms provided by Sextane, ArcGIS Server, GRASS or custom developed functions. Algorithms may be as simple as determining the difference in influenza cases between two different seasons, or as complicated as a global climate change model.
