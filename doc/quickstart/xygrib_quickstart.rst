:Author: Hamish Bowman
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:Version: osgeolive13.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

@LOGO_zygrib@
@OSGEO_KIND_zygrib@
@VMDK_zygrib@



************************
@NAME_zygrib@ Quickstart
************************

zyGrib is a program to download and visualize weather forecast data in the standard GRIB distribution format.

.. contents:: Contents
   :local:

Start @NAME_zygrib@
===================

#. From the desktop, choose :menuselection:`Navigation and Maps --> zyGrib GRIB file viewer`. 
#. Select your preferred language and click :guilabel:`OK`. The program opens and you are presented with a map of the world. 
#. Check the connection to the data server. On the toolbar at the top right of the screen, click the power plug icon. The File Server Status window opens and after a moment, it will confirm the status of the connection. 

.. Note:: 
  You'll need an internet connection to download GRIB weather forecast data. You can get GRIB data from many sources, but as a convenience the zyGrib authors maintain a data server to use with zyGrib.


Download data
=============

#. Use the mouse to click and drag a box on the map canvas on a part of the world you are interested in. The Gulf of Mexico or the southern tip of Africa often have dynamic winds.
#. With your box drawn on the map, click the zoom-to-box icon on the taskbar (the magnifying glass with a small box underneath it)
#. Again,  mark out a box of interest with a left-click drag, but this time covering most or all of the zoomed-in map canvas.
#. Select :menuselection:`File --> Download GRIB` and select the features you want to download. If in doubt, accept the defaults. 
#. When ready click the ``Download`` button, and save the file to disk.

The application displays a weather map with a time slider along the bottom, set for the current time. You can use the mouse wheel to zoom in if you like.


Change views
============

#. Move the mouse around the map you'll see the exact conditions listed in the pane on the left.
#. You can change the time by moving the slider along the bottom, or from the drop down menu in the top-left of the window.
#. From the ``Weather map`` menu, select a variable to visualize. For example, select :menuselection:`Weather map --> Cloud cover` and the view should change.

If you downloaded data for the Gulf of Mexico you'll be interested to view the CAPE data. "CAPE" stands for Convective Available Potential Energy at ground level. It is a measure of atmospheric instability, and high values (1000s of J/kg) indicate a threat of thunderstorms and/or tornadoes.

If you downloaded data for southern Africa, cloud cover may be more interesting.


Create an animation
===================

#. Click the right-hand most icon on the toolbar (a rocketship). A new window opens and an animation will be generated. 
#. Wait while it runs through the time sequence for the first time. When it is done it will rewind to the beginning of the time series.
#. You can play, pause and rewind the sequence as you like. 
#. You can also save each frame as an image file for later encoding into an AVI, MPEG, or animated GIF `using other software <https://grasswiki.osgeo.org/wiki/Movies>`_.
#. When you're done, click the red power button to close.


What next?
==========

The :doc:`OpenCPN software <../overview/opencpn_overview>` (also on this
disc) has a GRIB overlay plugin which you may try with your newly
downloaded GRIB file. 
See
the :doc:`OpenCPN quickstart <../quickstart/opencpn_quickstart>` for details.

* Website: https://www.zygrib.org
* Support: https://zygrib.org/forum/
