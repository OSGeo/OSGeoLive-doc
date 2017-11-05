:Author: Hamish Bowman
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_viking@
@OSGEO_KIND_viking@

********************************************************************************
@NAME_viking@
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
on it and click "Goto". You can pan by dragging the map canvas with the left
or middle mouse buttons, and zoom in and out with the mouse wheel.

3) Now add a map layer (:menuselection:`Layers --> New Map Layer`), to begin
with *OpenStreetMap (Mapnik)* is a good place to start as they have good
coverage for much of the planet. Next choose a suitable cache directory
where you would like to store your downloaded maps, the default is fine.
Adjust the alpha slider if you would like to change the transparency level
of the map layer, and tick the `Autodownload map` check box. You can always
manually download maps later from the :menuselection:`Tools --> Maps Download` menu
if you are not currently online. Finally, to keep the map scale at a comfortable
level regardless of the current map zoom, set
the `Zoom level` to *Use Viking Zoom Level*.

4) You will notice the map tiles are being drawn on top of the tracks, which is 
probably not what you want. Look at the Layers Panel to the left. Notice how 
the layer named "Map" is ABOVE the Track/Waypoint layer that your GPS data is 
in. This means that it will be drawn last, or on top of the other layers. 
Select the *Map* layer from the list and click the down arrow button beneath 
the list. Now your tracks will be drawn over the map.

.. TODO: some explanation of the layers, etc. is required.

.. Geocoding: available in version 1.3 and newer


