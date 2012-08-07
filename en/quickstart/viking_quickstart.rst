:Author: Hamish Bowman
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-viking.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://sourceforge.net/apps/mediawiki/viking/

********************************************************************************
Viking Quickstart 
********************************************************************************

Running
================================================================================

Getting Started
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. from /usr/share/doc/viking/GETTING_STARTED

To quickly get started using Viking, follow these instructions.

1) Get some data from your GPS device. There are a couple ways to do this,
a suitable GPX file containing a couple of tracks can be found on the disc
at :file:`~/data/vector/R/test_trk2.gpx`.

2) Open up Viking and use :menuselection:`File --> Open` to open the GPX file.
Viking will try to change its viewing area to the center of the layer (file)
but sometimes if you have waypoints and tracks which are very far apart you 
won't see anything. If this is the case, expand the layer (on the Layers 
Panel to the left), then expand "Waypoints", find a waypoint and right-click 
on it and click "Goto".

3) Now add a map layer (:menuselection:`Layers --> New Map Layer`), choose a suitable
cache  directory where you would like to store your tracks and click OK. Zoom
to a comfortable level (I suggest 4 mpp) by clicking the left and right mouse 
buttons on the gray area where your tracks are. Now from the menu choose 
:menuselection:`Tools --> Maps Download`, Click where you would like to download a map. 
You can set it to auto-download the tiles by right clicking on the "Map" layer,
selecting `Properties`, and ticking the `Autodownload maps` check box. 
Regardless of what tool you are using, the middle mouse button always pans. 

4) You will notice the maps are being drawn on top of the tracks, which is 
probably not what you want. Look at the Layers Panel to the left. Notice how 
the layer named "Map" is ABOVE your TrackWaypoint layer that your GPS data is 
in. This means that it will be drawn last, or on top of the other layers. 
Select the Map layer from the list and click the down arrow button beneath 
the list. Your tracks will now be drawn over the map.

.. TODO: some explanation of the layers, etc. is required.

.. Geocoding: available in version 1.3 and newer


