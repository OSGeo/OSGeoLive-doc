:Author: activityworkshop
:Version: osgeo-live4.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-prune.png
  :alt: project logo
  :align: right
  :target: http://gpsprune.activityworkshop.net/

********************************************************************************
GpsPrune Quickstart 
********************************************************************************

Running
================================================================================

To run GpsPrune on the live DVD, select the icon "GpsPrune" in the Navigation and Maps menu.
To work with data, you will then either load a recorded track from a file, load data from
a GPS receiver using *Gpsbabel*, get coordinates from Wikipedia, or enter your own coordinates
by hand.  The easiest way to start is to load any gpx file, kml or kmz file using the menu command
:menuselection:`File --> Open file` and selecting the file you wish to load. A suitable GPX file
containing a couple of tracks can be found on the disc at :file:`~/data/vector/R/test_trk2.gpx`.

Now you should see your track marked in blue, and waypoints (if any) marked with their names.
If you have a network connection, it's recommended to activate the maps by clicking the globe
icon at the top of the main map display, or with the menu option :menuselection:`View --> Show Map`.

You can now drag the map around with the mouse, and zoom in and out to see greater details.
Clicking on a point will show the details including altitude and timestamp if available.
Below the main map display is an altitude chart, which will show the profile of the track
if it contains altitudes.  Clicking on this display will select the corresponding point.

Customizing the display
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
You can change the map with the menu option :menuselection:`Settings --> Set map background`.
You can select one of the maps already defined, or you can add your own custom server if you
know the URL.  You can also add a Cloudmade map if you know the style number.

The default colours can be changed with the menu option :menuselection:`Settings --> Set colours`.

If you save your settings with the menu option :menuselection:`Settings --> Save settings`, they
will be remembered for the next time you run GpsPrune.  However, note that when using this live DVD,
all files that you save in the regular file system are lost when you shut down the computer.

Downloading maps
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
To save the downloaded map tiles to disk, you can select the menu option
:menuselection:`Settings --> Save maps to disk` and select a directory in which to save the images.
This helps to speed up the display as it doesn't have to download the images again.  Again, this
makes more sense on an installed system than on a live DVD.

Using GpsPrune on other systems
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
After trying out GpsPrune on this live DVD, you may want to use it on another system, whether
it's another Linux system or Mac OSX or Windows.  Some linux distributions include GpsPrune in their
normal software libraries (just search for "Prune" or "GpsPrune"), or you can just download the
latest copy from the home page.

It doesn't need to be installed, but it does need a java runtime to be installed, version
1.5 or higher.  You can extend GpsPrune's functionalities by installing other free software, such as
*Gpsbabel*, *Gnuplot*, *Exiftool* or *Java3d*.

Further reading
================================================================================

* GpsPrune home page: http://gpsprune.activityworkshop.net/
* Screenshots: http://gpsprune.activityworkshop.net/screenshots.html
* How-tos and instructions: http://gpsprune.activityworkshop.net/how-tos.html

