:Author: OSGeoLive
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeolive5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_saga@
@OSGEO_KIND_saga@


@NAME_saga@
================================================================================

Desktop GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SAGA (System for Automated Geoscientific Analyses) is an
open source geographic information system (GIS) used for editing and analysing
spatial data. It includes a large number of modules for the analysis of
vector (point, line and polygon), table, grid and image data. Among
others the package includes modules for geostatistics, image
classification, projections, simulation of dynamic processes (hydrology,
landscape development) and terrain analysis. The functionality can be
accessed through a GUI, the command line or by using the C++ API.

SAGA has been in development since 2001, and the centre of SAGA development is
located in the Institute of Geography at the University of Hamburg, with
contributions from the growing world wide community.

@SCREENSHOT_saga@

Core Features
--------------------------------------------------------------------------------

* Access to a large number of scientific modules via the Graphical User Interface or the command line

 * Import/Export to different file formats
 * Reprojection/Resampling of data
 * Manipulation of vector data (merging/intersection/attributes)
 * Manipulation of point clouds from lidar data
 * Raster data: interpolation, cost analysis, ...
 * Image analysis: filters, edge detection, cluster analysis, segmentation
 * Digital Terrain Analysis: generate geomorphometric indexes, channel networks, profiles, contour lines, ...
 * Geostatistics: modules for variogram fitting and kriging

* Fast user interface for managing and visualising data

 * 3D visualisation

* Straightforward C++ API for creating new modules
* Scripting through command line, bindings for Python
* SAGA can be accessed from the R statistical language through the RSAGA module

Details
--------------------------------------------------------------------------------

**Website:** http://www.saga-gis.org

**Licence:** LGPL v2.1 (api); GPLv2 (GUI and modules)

**Software Version:** |version-saga|

**Supported Platforms:** Windows, Linux, FreeBSD

**API Interfaces:** C++, Python, R

**Support:** http://www.saga-gis.org


@QUICKSTART_saga@

    .. presentation-note
    SAGA, or the System for Automated Geoscientific Analyses, is a GIS used for editing and analysing spatial data. It includes a large number of modules for the analysis of vector, table, grid and image data.
    Among others, the package includes modules for geostatistics, image classification, projections, simulation of dynamic processes like hydrology, landscape development and terrain analysis. The functionality can be accessed through a GUI, the command line or by using the C++ programming interface.
