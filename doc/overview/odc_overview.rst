:Author: Brian Hamlin
:Reviewer: Alex Leith
:Version: osgeolive 16
:License: Creative Commons Attribution 3.0 Unported  (CC BY 3.0)

@LOGO_odc@
@OSGEO_KIND_odc@

@NAME_odc@
================================================================================

Open Data Cube
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Open Data Cube (ODC) is a community of people and organisations building capability 
for working with earth observation data. At the core, the ODC is a software library and 
set of command line tools. And keeping the core together we have a group of organisations 
collaborating on strategy and who may maintain specific implementations of the ODC.

The objective of the ODC is to increase the impact of satellite data by providing an open 
and freely accessible exploitation tool, and to foster a community to develop, sustain, 
and grow the breadth and depth of applications.


At a technical level, an implementation of the ODC is made up of three things: 
data, an index and software:

 * Data is usually file based, either in local directories of GeoTIFFs or NetCDF files, 
but data can be anything that GDAL can read, including Cloud Optimised GeoTIFFs stored on AWS’ S3.

 * For the Index, the ODC uses PostgreSQL as a database to store a list of Products 
(a specific data type, like Landsat 8 Analysis Ready Data) and Datasets (a single instance 
of a Product, for example, a single Landsat 8 scene). The index enables a user to ask for 
data at a time and location, without needing to know specifically where the required files 
are stored and how to access them.

 * The Software at the core of the ODC is a Python library that enables a user to index data 
(add records to the Index), to ingest data (optimise indexed data for performance), to query data 
(returning data in a standard data format) and a wide range of other functions related 
to managing data.


@SCREENSHOT_odc@

Core Features
--------------------------------------------------------------------------------

* Journal quality cartography.
* Gridding and contouring functions.

Details
--------------------------------------------------------------------------------

**Website:** @WEB_odc@

**Licence:** Apache License Version 2

**Software Version:** |version-odc|

**Supported Platforms:** GNU/Linux, Mac OSX, MS Windows

**API Interfaces:** Command line

**Support:** https:///


@VMDK_odc@
@QUICKSTART_odc@

.. presentation-note
    Generic Mapping Tools, or GMT is a collection of tools that allow users to manipulate (x,y) and (x,y,z) data sets
