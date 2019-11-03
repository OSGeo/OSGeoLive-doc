:Author: activityworkshop
:Version: osgeolive11.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Reviewer: Felicity Brand (Google Season of Docs 2019)

@LOGO_gpsprune@
@OSGEO_KIND_gpsprune@

********************************************************************************
@NAME_gpsprune@ Quickstart
********************************************************************************

GpsPrune is a java application for viewing and editing coordinate data.  It can be used for preparing data for GPS devices and for analyzing the data recorded by them.

In this Quick Start, we will load and view a data file included on this live image, and access some online information to supplement it.  It will be useful therefore if you have some kind of internet connection for this demonstration.

.. contents:: Contents

Start @NAME_gpsprune@
================================================================================

From the Start menu, choose :menuselection:`Navigation and Maps --> GpsPrune`.  This will then give you the empty window shown below.

.. image:: /images/projects/gpsprune/gpsprune_emptywindow.png
   :scale: 55

We will now load a file by using the menu command :menuselection:`File --> Open file` and selecting the file to load.  This can be a GPX file, a KML or KMZ file, or even a comma-separated or tab-separated file if you have one.  A suitable GPX file containing a couple of tracks can be found on the disc at :file:`~/data/vector/gpx/test_trk2.gpx` so we will load this one.

.. image:: /images/projects/gpsprune/gpsprune_trackselect.png

Because this file contains two tracks, we are offered the choice of which one(s) to load.  We choose just the first one and press OK.

Now you should see the track marked in blue against a white background.  If this track had any waypoints (which it doesn't), then they would be shown too, marked with their names.  Below the main map display is an altitude chart, which shows the profile of the track
if it contains altitudes.

.. image:: /images/projects/gpsprune/gpsprune_test_trk2.png
   :scale: 55

Now, assuming you have a network connection, you can activate the map by clicking the globe
icon at the top of the main map display, or with the menu option :menuselection:`View --> Show Map`.

.. image:: /images/projects/gpsprune/gpsprune_mapnik.png
   :scale: 55

You can drag the map around with the mouse, and zoom in and out with the mousewheel or by double-clicking.  Dragging with the right mouse button defines a rectangle to zoom to, and the right-click menu offers further options.  Clicking on a point will show the details including altitude and timestamp if available.  You can also click on the altitude profile to select the corresponding point.

Customizing the display
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
You can change the map with the menu option :menuselection:`Settings --> Set map background`.
Let's have a look at an alternative map source by selecting the fifth one, "Hikebikemap".  This uses the maps from hikebikemap.org to show additional information useful for hiking and cycling such as contour lines and cycle routes.

.. image:: /images/projects/gpsprune/gpsprune_hikebikemap.png
   :scale: 55

Advanced Functions
==================
Now that we can load and view files from the included file system, let's see if we can supplement this with some online information as well, using some more advanced functions.

Wikipedia
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Now let's find out some more information about where this track is.  We can do this by selecting a point, and then choosing the menu option :menuselection:`Online --> Get nearby Wikipedia articles`.  This shows a list of articles whose coordinates are nearest to the selected point.  Clicking one of these entries in the list will show more information in the box below.

.. image:: /images/projects/gpsprune/gpsprune_wikipedialist.png

You can then use the button `Load` to load that point into GpsPrune, or `Show webpage` to load the Wikipedia page in a browser.

Gpsies
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
We can also use an online service to download another track from the same area.  We can use the menu command :menuselection:`Online --> Get Gpsies tracks` to search for tracks on the website gpsies.com.  Again, we get a list of matching entries, and we can select one to view the description.

.. image:: /images/projects/gpsprune/gpsprune_gpsieslist.png

Click the `Load` button to load the track, and select to append this track to the data we've already got.  Now we can see both tracks in the same view.

Measuring distances
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
To find out how long the climb is, we will select just the part of the track which contains the climb, and then we will be able to view the properties of this selected range, such as the distance, climb and descent.

#. Click on the point at the start of the climb, just north of Dunedin, to select it.
#. Select :menuselection:`Range --> Set range start` to make this point the start of the selection.
#. Select a point at the top of the climb by clicking on the highest point of the altitude profile.
#. Select :menuselection:`Range --> Set range end` to finish the selection.
#. You can now see in the "Range details" section that this part of the track is 8.55 km long, climbs 346 m and descends just 10 m.

.. image:: /images/projects/gpsprune/gpsprune_rangedetails.png
   :scale: 55

Things to Try
=============
 * Select a point in the track and delete it with :menuselection:`Point --> Delete point`
 * Draw your own track with `Create series of points` from the right-click menu and measure the total distance
 * Export an image of your track with :menuselection:`File --> Export image`
 * If you have your own track files in any of the formats gpx, kml, kmz or csv, load one of these into GpsPrune and view it using one of the available maps

Using GpsPrune on other systems
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
After trying out GpsPrune on this live image, you may want to use it on another system, whether it's another Linux system or Mac OSX or Windows.  Some linux distributions include GpsPrune in their normal software libraries (just search for "Prune" or "GpsPrune"), or you can just download the latest copy from the home page.

It doesn't need to be installed, but it does need a java runtime to be installed, version 1.5 or higher.  You can extend GpsPrune's functionalities by installing other free software, such as *GPSBabel*, *Gnuplot*, *Exiftool* and *Java3d*.

Once you've installed GpsPrune on your permanent system, you can save your settings with the menu option :menuselection:`Settings --> Save settings`.  Then they will be remembered for the next time you run GpsPrune.  However, note that when using this live system, all files that you save in the regular file system are lost when you shut down the computer.

You can also save the downloaded map tiles to disk by selecting the menu option :menuselection:`Settings --> Save maps to disk` and selecting a directory in which to save the images.  This helps to speed up the display as it doesn't have to download the images again.

Further reading
~~~~~~~~~~~~~~~
* GpsPrune home page: https://gpsprune.activityworkshop.net/
* Screenshots: https://gpsprune.activityworkshop.net/screenshots.html
* How-tos and instructions: https://gpsprune.activityworkshop.net/how-tos.html
