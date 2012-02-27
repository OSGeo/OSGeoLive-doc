:Author: Hamish Bowman
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: (c) 2011 by The OSGeo Foundation

.. _opencpn-quickstart:
 
.. image:: ../../images/project_logos/logo-opencpn.png
  :scale: 75 %
  :alt: project logo
  :align: right
  :target: http://www.opencpn.org

********************************************************************************
OpenCPN Quickstart 
********************************************************************************

Running
================================================================================

Setting up your charts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Before running OpenCPN on the LiveDVD you should activate the sample data.
To do this open a Terminal from the main Applications menu and run
:command:`opencpn_noaa_agreement.sh` at the command prompt. The user's
password is given in the file on the main desktop.

You can download additional US nautical charts from NOAA
at http://www.charts.noaa.gov


Setting up your GPS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
If you have a GPS connected you will want to start the gpsd service.
To do that run:

::

  sudo dpkg-reconfigure gpsd

and

::

  sudo /etc/init.d/gpsd start

BlueTooth GPS users should take special care to read up about the no-probe
option.

.. no longer true? : (for this reason we have not started gpsd automatically)


* '`xgps`' is a good program to check that Gpsd can see your GPS ok.


Documentation
================================================================================

* Documentation is available from
  the `Help menu <../../opencpn/help_en_US.html>`_, or
  online at http://www.opencpn.org/docwiki

*  `Getting started tips <../../opencpn/tips.html>`_


See also
================================================================================

Current weather and wave forecast data can be downloaded and draped over your
charts using the GRIB plugin. The :doc:`zyGrib software <../overview/zygrib_overview>`
(also on this disc) is an easy way to download that. See
the :doc:`zyGrib quickstart <../quickstart/zygrib_quickstart>` for details.
Enable the plugin the right most tab of the OpenCPN configuration menu;
right click on the GRIB directory selection window to show hidden files,
including the ``.zygrib`` directory containing the default GRIB download
directory. If you saved the GRIB file into your home directory navigate
to :file:`/home` and select your ``user`` directory as the GRIB data directory.
There is no need to uncompress the file.  Click on the ">" to the left of
the filename and select from the list of available forecast times.
