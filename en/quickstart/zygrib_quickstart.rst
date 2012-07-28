:Author: Hamish Bowman
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

.. image:: ../../images/project_logos/logo-zygrib.png
  :scale: 150 %
  :alt: project logo
  :align: right
  :target: http://www.zygrib.org

********************************************************************************
zyGrib Quickstart 
********************************************************************************

Running
================================================================================

Getting data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

After launching the program you will be presented with a map of the
world. No GRIB weather forecast data is shipped with this disc, you'll
have to download some, which will require an internet connection. As
GRIB data is often used by offshore sailors, a number of low-bandwidth
email and radio-modem services are available for those without a steady
internet connection. i.e. while requiring some connection to the outside
world as a data source, this connection is not required at run-time unlike
many other web mapping programs.

You may get GRIB data from many sources, but as a convenience the zyGrib
authors maintain a data server. The first thing to do is to check that the
connection to the server is operational. Click on the power plug icon
near the right hand end of the toolbar, after a moment it should tell you
that the connection is ok.

We are usually interested in local weather conditions, so next left-mouse
click drag a box on the map canvas on a part of the world you are interested
in. The Gulf of Mexico or the southern tip of Africa often have dynamic winds.
With your box drawn on the map click the zoom-to-box icon on the taskbar (the
magnifying glass with a small box underneath it), and again mark out a box
of interest with a left-click drag, but this time covering most or all of the
zoomed-in map canvas.

Now select :menuselection:`File --> Download GRIB` and select the features
you want to download. If in doubt the defaults are ok. When ready click
the ``Download GRIB file`` button at the bottom, and save the file to disk.

All going well you should now see a weather map with a time slider along
the bottom, set for right now. You can use the mouse wheel to zoom in if
you like.


Changing views
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

By moving the mouse around the map you'll see the exact conditions under
the cursor listed in the pane on the left.

You can change the time by moving the slider along the bottom, or from the
drop down menu in the top-left of the window.

From the ``Data`` menu you can select the variable to visualize. For example
Select :menuselection:`Data --> Cloud Cover` and the view should change.

If you downloaded data for the Gulf of Mexico you'll be interested to view
the CAPE data. "CAPE" stands for Convective Available Potential Energy at
ground level. It is a measure of atmospheric instability, and high values
(1000s of J/kg) indicate a threat of thunderstorms and/or tornadoes.

If you downloaded data for southern Africa cloud cover may be more interesting.


Creating an animation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When you click the right-hand most icon on the toolbar (a rocketship) a new
window will open and an animation will be generated. Sit tight while it runs
through the time sequence for the first time. When it is done it will rewind
to the beginning of the time series, and from there you can play, pause,
rewind as you like. You can also save each frame as an image file for later
encoding into an AVI, MPEG, or animated
GIF `using other software <http://grass.osgeo.org/wiki/Movies>`_.

When you're done click the red power button to close.


See also
================================================================================

The :doc:`OpenCPN software <../overview/opencpn_overview>` (also on this
disc) has a GRIB overlay plugin which you may try with your newly
downloaded GRIB file. See
the :doc:`OpenCPN quickstart <../quickstart/opencpn_quickstart>` for details.
