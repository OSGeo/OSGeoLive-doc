:Author: Hamish Bowman
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:Version: osgeolive13.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

@LOGO_opencpn@
@OSGEO_KIND_opencpn@
@VMDK_opencpn@




*************************
@NAME_opencpn@ Quickstart
*************************

OpenCPN is a concise Chart Plotter and Navigator (CPN). As always, never
use a piece of software or electronic equipment as your only means of
navigation and keep an eye out the window.

.. contents:: Contents
   :local:


Setting up your charts
======================

Before running OpenCPN on the LiveDVD you should activate the sample data.
This is a condition of redistributing NOAA's free nautical charts. The first time you open OpenCPN you are presented with the option to do this automatically.

#. From the Start menu, select :menuselection:`Geospatial --> Navigation and Maps --> OpenCPN`.
#. Click :guilabel:`I agree` to the NOAA Nautical Chart Data Agreement.
#. Click :guilabel:`OK` to agree to the OpenCPN license.

.. To do this manually, open a Terminal from the main Accessories menu and run :command:`opencpn_noaa_agreement.sh` at the command prompt. The user's password is given in the file on the main desktop.

You can download additional US nautical charts from NOAA at https://www.charts.noaa.gov/


Setting up your GPS
===================

If you have a GPS connected you will want to start the gpsd service.
To do that, open a terminal and run:

::

  sudo dpkg-reconfigure gpsd

and

::

  sudo /etc/init.d/gpsd start

BlueTooth GPS users should take special care to read up about the no-probe
option.

.. no longer true? : (for this reason we have not started gpsd automatically)


.. Tip:: '`xgps`' is a good program to check that Gpsd can see your GPS ok.


Things to try
=============

Current weather and wave forecast data can be downloaded and draped over your charts using the GRIB plugin. The :doc:`XyGrib software <../overview/xygrib_overview>` (also on this disc) is an easy way to download that.

#. Click the :guilabel:`Options` icon on the toolbar. The Options window displays.
#. Select the :guilabel:`Plugins` tab.
#. Choose GRIB and then click :guilabel:`Enable`.
#. Click :guilabel:`OK`. A windsock icon is now displayed on the toolbar.


Run through the :doc:`XyGrib quickstart <../quickstart/xygrib_quickstart>` and load the XyGrib file over your chart.

.. Note:: If you saved the XyGrib file into your home directory, navigate to :file:`/home` and select your ``user`` directory as the GRIB data directory. Then right click on the file listing's background to show hidden files, including the ``.xygrib`` directory that contains the GRIB download files.

  There is no need to uncompress the file.  Click on the ">" to the left of the filename and select from the list of available forecast times.


What next?
==========

* Documentation is available from the Help menu or online at https://opencpn.org/OpenCPN/info/manuals.html

.. TODO This file does not exist on the disk
  `Getting started tips <ihttps://localhost/opencpn/tips.html>`__

* Website: @WEB_opencpn@

* Support: https://www.cruisersforum.com/forums/f134
