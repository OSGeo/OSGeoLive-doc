:Author: Hamish Bowman
:Version: osgeo-live4.0
:License: Creative Commons

.. _viking-quickstart:
 
.. image:: images/project_logos/logo-viking.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://sourceforge.net/apps/mediawiki/viking/

*****************
Viking Quickstart 
*****************

Running
=======

Getting Started
~~~~~~~~~~~~~~~

.. from /usr/share/doc/viking/GETTING_STARTED

To quickly get started using Viking, follow these instructions.

1) Get some data from your GPS device. There are a couple ways to do this.
You can use gpspoint or you can use another program and translate it with
my version GPSBabel with gpspoint write support (or use the GPSBabel program
itself to download and translate at once.)

2) Open up viking and use :menuselection:`File --> Open GPS Data` to open the gpspoint file.
Viking will try to change its viewing area to the center of the layer (file)
but sometimes if you have waypoints and tracks which are very far apart you 
won't see anything. If this is the case, expand the layer (on the Layers 
Panel to the left), then expand "Waypoints", find a waypoint and right-click 
on it and click "Goto".

3) Now add a map layer (:menuselection:`Layers --> New Map Layer`), choose a suitable cache 
directory where you would like to store your tracks and click OK. Zoom to a 
comfortable level (I suggest 4 mpp) by clicking the left and right mouse 
buttons on the gray area where your tracks are. Now from the menu choose 
:menuselection:`Tools --> Map Download`, Click where you would like to download a map. 
Regardless of what tool you are using, the middle mouse button always pans.

4) You will notice the maps are being drawn on top of the tracks, which is 
probably not what you want. Look at the Layers Panel to the left. Notice how 
the layer named "Map" is ABOVE your TrackWaypoint layer that your GPS data is 
in. This means that it will be drawn last, or on top of the other layers. 
Select the Map layer from the list and click the down arrow button beneath 
the list. Your tracks will now be drawn over the map.

.. TODO: some explanation of the layers, etc. is required.


Geocoding
~~~~~~~~~
.. from /usr/share/doc/viking/GEOCODED-PHOTOS

How to geocode your photos and see them in Viking:

1) Synchronize your camera's clock with your GPS clock. If your camera's clock
doesn't have a seconds value you can change, you might try setting the minute
value just when the minute changes.

2) Activate the track log on your GPS.

3) Get outside and take some pictures with your camera while making sure your
GPS has reception. If you forgot to turn your GPS on or forgot to bring it when
you took a picture but you know where you took the picture, you can make a
waypoint with a name of the format "YYMMDDhhmm", representing the time the
picture was taken, to record where you were at that time.

4) Get home and download your pictures and GPS data. You can download the GPS
data several ways. The first is using gpspoint to download from a Garmin GPS:

::

  gpspoint -p /dev/ttyS0 -dw -dt -of 2004-04-02-trip1

Where /dev/ttyS0 is the serial port the GPS is connected to. If you don't have a
Garmin GPS, or if you don't feel like install gpspoint, you can use my version
of gpsbabel with support for gpspoint files. You can use gpsbabel to either
translate the GPS data from a format you already have the data in or download it
directly from your GPS receiver. A typical command line would something like
this:

::

  gpsbabel -i garmin -f /dev/ttyS0 -o gpspoint -F 2004-04-02-trip1

5) Launch GPSPhoto.

6) You must now bring your photos into GPSPhoto. Either drag them (or the
directory containing them) from your favorite file manager to the list on the
left of the GPSPhoto window, or use the buttons below the list to find them.

7) Do the same for your GPS data file(s), dragging them to the list on the right
of the GPSPhoto Window.

8) Click the "Execute" button, and choose a location to save the gpspoint file
containing the waypoints for your photos. Then click OK to write the waypoints
to this file.

9) Open Viking and open both your original GPS data file and your image waypoint
file just created.
