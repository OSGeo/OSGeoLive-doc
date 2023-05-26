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

In this quick Open Data Cube tutorial we will use tools.

.. contents:: Contents
   :local:

Create a map
============

As our input dataset we will use TODO from TODO dataset, which is accessible by GDAL using the GDAL-GRASS driver.

From a quick look at the DTM metadata, open a terminal and use the GDAL command `gdalinfo`:

::

  gdalinfo /home/user/grassdata/nc_basic_spm_grass7/PERMANENT/cellhd/elevation

.. Cameron Review Comment:
  For each command described, we should show the output of the command, either as text
  or screenshot.
  A user should be able to look at this quickstart, and work out what to expect, without
  running the quickstart.

We can see the DTM is in a projected coordinate system and the data range is between 50 and 160 meters.

We can convert the DTM in a GMT Compatible netCDF file format with `gdal_translate` as follow:

::

  gdal_translate -of GMT /home/user/grassdata/nc_basic_spm_grass7/PERMANENT/cellhd/elevation elevation.gmt

For our GMT example we will first transform the dataset into geographic coordinates Longitude-Latitude (EPSG:4326) using the `gdalwarp` command:

::

  gdalwarp elevation.gmt geo_elevation.gmt -t_srs EPSG:4326

Make a color palette
====================

To assign a color map to our grid we can make a GMT color palette tables
with the `makecpt` command. We will set the range and number of colors with the flag `-T`
and assign a colormap with the flag `-C`.

::

  gmt makecpt -Chaxby -T50/160/10 -Z > elevation.cpt

You can experiment with other colortables, see `man gmt makecpt` for a complete list.

Define the gradient
===================

For our shaded relief example we need to specify show how the color intensity is distributed along the grid.
To do so, we will compute the directional derivative, or gradient, from our grid using the `grdgradient` command.
In `grdgradient` we will use the `-Ne` flag to normalize the output using a cumulative Laplace distribution and the `-A` flag for Azimuthal direction for a directional derivative.

::

  gmt grdgradient geo_elevation.gmt -Ne0.8 -A100 -fg -Ggradient.nc

The output is a netCDF file which can then be used as color intensity by the `grdimage` command as follow:

::

  gmt grdimage geo_elevation.gmt -Igradient.nc -JM6i -P -Ba -Celevation.cpt -K > GMT_tut_OSGeoLive.ps

Display the color bar
=====================

Finally we can add a colorbar with `psscale`:

::

  gmt psscale -DjTC+w5i/0.25i+h+o0/-1i -Rgeo_elevation.gmt -J -Celevation.cpt -I0.4 -By+lm -O >> GMT_tut_OSGeoLive.ps


Here the flag `-D` is used to select the colorbar position `TC: Top Center`, the size `5x0.25` expressed in inches `i` the orientation by `h: horizontal`
and the flag `-By` to set a label `m` on the `y axis`.

The output ps document should look like:

.. image:: /images/projects/gmt/GMT_tut_OSGeoLive.png
  :scale: 70 %
  :alt: North Caroline - sample elevation data
  :align: center


Things to try
================================================================================

.. TODO do these needs to be installed to go thru the tutorial?
   https://readthedocs.org

* Install the following packages:

  *  datacube-core
  *  python3-pystac

* `TODO tutorial <https://docs.generic-mapping-tools.org/latest/tutorial>`

What next?
==========

* Documentation: http://datacube-core.readthedocs.io/en/latest/
* Website: @WEB_odc@
* Support: https://www.opendatacube.org/faq


