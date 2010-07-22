:Author: H. Bowman
:Version: osgeo-live4.0
:License: Creative Commons

.. _opencpn-quickstart:
 
.. image:: images/project_logos/logo-opencpn.png
  :scale: 75 %
  :alt: project logo
  :align: right

********************
OpenCPN Quickstart 
********************

Running
=======

Setting up your charts
~~~~~~~~~~~~~~~~~~~~~~
Before running OpenCPN on the LiveDVD you should activate the sample data.
To do this open a Terminal from the main Applications menu and run
"`opencpn_noaa_agreement.sh`" at the command prompt. The user's
password is given in the file on the main desktop.

You can download additional US nautical charts from NOAA
at http://www.charts.noaa.gov


Setting up your GPS
~~~~~~~~~~~~~~~~~~~
If you have a GPS connected you will want to start the gpsd service.
To do that run:
::
  sudo dpkg-reconfigure gpsd

and
::
  sudo /etc/init.d/gpsd start

BlueTooth GPS users should take special care to read up about the no-probe
option. (for this reason we have not started gpsd automatically)


* '`xgps`' is a good program to check that Gpsd can see your GPS ok.


Documentation
=============

* Documentation is available from
  the `Help menu <file:///usr/local/share/opencpn/doc/help_en_US.html>`_, or
  online at http://www.opencpn.org/docwiki

*  `Getting started tips <file:///usr/local/share/opencpn/doc/tips.html>`_
