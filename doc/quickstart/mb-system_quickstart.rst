:Author: Hamish Bowman
:Version: osgeolive6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

@LOGO_mb-system@
@OSGEO_KIND_mb-system@
@VMDK_mb-system@




********************************************************************************
@NAME_mb-system@ Quickstart
********************************************************************************


Running
================================================================================

Users familiar
with :doc:`GMT <../overview/gmt_overview>` and :doc:`GDAL <../overview/gdal_overview>` will
be right at home with MB-System. In fact, MB-System makes heavy use of
GMT for its map rendering. MB-System is a modular, command line driven
suite of about 75 programs which work together to process massive (often
terabytes) worth of multi-beam swath bathymetry and sidescan sonar data
using automated scripts. Data files in dozens of data formats can be left
co-mingled and intact on the drive and only those needed will be
automatically selected, allowing for efficient processing and seamless mixing
of datasets collected at different times, by different ships, in different
data formats. Cartographic output and advanced 3D data cleaning software is also
included.

Open a terminal, then

* View information about a datafile: (similar to `gdalinfo`)

::

  cd /usr/local/mbsystem/examples/
  cd mbinfo
  ./mbinfo.cmd

.. image:: /images/projects/mb-system/mb-system_screenshot.png
  :scale: 35 %
  :alt: 2D shaded relief
  :align: right

* Process and prepare 3D plots from the sample data files:

::

  cd /usr/local/mbsystem/examples/
  cd mbgrid
  export PATH="$PATH:."
  ./mbgrid.cmd

* Process and prepare a 2D shaded relief image:

::

  cd /usr/local/mbsystem/examples/
  cd mbm_plot
  export PATH="$PATH:."
  ./mbm_plot_5.cmd


Documentation
================================================================================

The online HTML documentation can be found at
 http://www.ldeo.columbia.edu/res/pi/MB-System/html/mbsystem_home.html

The online HTML version of the Cookbook tutorial can be found at
 http://www.ldeo.columbia.edu/res/pi/MB-System/mb-cookbook/

The documentation can be found on this LiveDVD at
 `/usr/share/doc/mbsystem-doc/docs/ <../../mbsystem/docs/>`_

The PDF version of the cookbook is included on this disc at
 `/usr/local/mbsystem/mbcookbook.pdf <../../mbsystem/mbcookbook.pdf>`_

The data used in the cookbook examples can be found on this disc at
 `/usr/local/mbsystem/examples/ <../../mbsystem/examples/>`_

See also the `MB-System entry in the GRASS GIS wiki <http://grass.osgeo.org/wiki/MB-System>`_
