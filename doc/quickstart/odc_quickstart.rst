:Author: Brian M Hamlin
:Reviewer: Alex Leith
:Version: osgeolive16.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2023 by The OSGeo Foundation

@LOGO_odc@
@OSGEO_KIND_odc@
@VMDK_odc@


********************************************************************************
@NAME_odc@ Quickstart
********************************************************************************

The Open Data Cube Core provides an integrated gridded data
analysis environment for decades of analysis ready earth observation
satellite and related data from multiple satellite and other acquisition
systems.

This Open Data Cube tutorial section
  1) use Jupyter Notebook to examine data
  2) basic command line tools


.. contents:: Contents
   :local:

Analyze a Base Map
==================

As our input dataset we will use Prizren from esa_worldview_2021 land use / landcover dataset;

Start:

Open menu Geospatial : Spatial Tools : Jupyter Notebook;

On the Jupyter Home page, click to open folder OpenDataCube, click to open Notebook, choose "Run All" from the kernel menu.


For a quick look at a base data file, open a terminal and use the GDAL command `gdalinfo`:

::

  #------
  $ gdalinfo /usr/local/share/data/odc/esa_10m_2021_prizren.tif

..

Things to try
================================================================================


Datacube core commands quickstart :

::

  $ datacube system check
  #--
  $ datacube product show
  #--
  $ datacube dataset search

..


.. Documentation Links
   https://datacube-core.readthedocs.io/en/stable/
   https://docs.xarray.dev/en/v0.16.1/


* `TODO tutorial <tutorial>`

What next?
==========

* Documentation: https://datacube-core.readthedocs.io/en/stable/
* Website: @WEB_odc@
* Support: https://www.opendatacube.org/faq


