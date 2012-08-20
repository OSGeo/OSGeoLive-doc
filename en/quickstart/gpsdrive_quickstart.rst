:Author: Hamish Bowman
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

.. image:: ../../images/project_logos/logo-gpsdrive.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.gpsdrive.de

********************************************************************************
GpsDrive Quickstart 
********************************************************************************

Running
================================================================================

You will most likely want to install
the `gpsd <http://savannah.nongnu.org/projects/gpsd>`_ package so that you can talk
to your GPS; without that GpsDrive is just a nice map viewer.

OpenStreetMap tiles will be generated automatically using the
the :doc:`Mapnik <../overview/mapnik_overview>` library to
render :doc:`OpenStreetMap <../overview/osm_dataset_overview>` map data stored
in a preloaded :doc:`PostGIS <../overview/postgis_overview>` database.
Static map tiles may also be downloaded from the internet without any extra installation.
Verbal output is supported if the "espeak" software is installed.


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
option (for this reason we have not started gpsd automatically).

* 'xgps' is a good program to check that Gpsd can see your GPS ok.


Using without a GPS as a mapbook
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
If you don't have a GPS connected you can turn on Explore Mode
with the 'e' key and then use the arrow keys to move around.
Right-click to set the destination target.


Quick help
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
For help type '**man gpsdrive**' and '**gpsdrive --help**' at
a Terminal prompt. This will show how to switch to Car or PDA
mode which may be useful if you are working with a small screen
like on a netbook.


Customizing the display
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Besides the options given in the Preferences menu and the different 
car/PDA/desktop modes offered from the command line, you can change the
displayed dashboard meters. Just click on one of the three dashboard
positions and select a new item. You can toggle on and off the dashboard
and map controls with the '**d**' and '**m**' keys.


Mapnik rendering of OpenStreetMap data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
If you have a local PostGIS database running (for example the one that comes
with this Live DVD) you can setup GpsDrive to render very pretty street maps
on the fly from OpenStreetMap.org data using the Mapnik renderer. The
PostgreSQL database it looks for on this disc is called "osm_local_smerc".
As this OpenStreetMap extract has only been loaded for the city hosting
the FOSS4G conference, you may wish to add your own Planet.osm data with the
`osm2pgsql` program or switch off *Mapnik Mode* from the *Map Control*
window and use the built-in or downloaded static map tiles.


Finding amenities
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
With the *Find POI* tool you can search out for the nearest points of interest
loaded into your SQLite waypoint database. To get you started OpenStreetMap
data for the city of Nottingham has been loaded. e.g. *Find all pubs within 2 km
of the conference hall*.


Downloading maps
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Use the :menuselection:`Options --> Maps --> Download` tool to preview
and download new map tiles. Currently the OpenStreetMap web-tiles and
NASA OnEarth T-WMS server are available as sources. There are a few command
line programs which come with GpsDrive which will let you bulk-download
a set of tiles covering your local area.


Keeping tabs on your friends
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In the Preferences menu you can turn on the Friendsd service. This
transmits your position to a central server and lets your friends know
where you are. It comes with a program to run a private server if you
don't want the whole world seeing where you are. To enable this service
go into the Preferences menu and select the Friends tab. Type in a name
for yourself and click on the [Lookup] button to get the IP address of
the default friendsd server. Finally tick the Enable friends service box
and press [Close]. Icons showing where your friends are and where they are
headed will be shown at scales less than 1:10 million. There seem to be
a lot of friendly types in Europe.


Verbal instructions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
GpsDrive can give you verbal warnings when you are nearing your
destination, etc. To try this out you must start the eSpeak software
which has been disabled by default on this Live-Disc to save memory.
To switch it on you will have to edit (as root) the
**/etc/default/speech-dispatcher** file and set **RUN=yes**.
Then launch the service with "`sudo service speech-dispatcher start`".
GpsDrive will automatically find it at run time if it is switched on.
In the Speech tab of the Preferences menu you can enable/disable it,
change the voice, and verbosity level.


Further reading
================================================================================

* *GpsDrive*: http://www.gpsdrive.de
* Help and support pages: http://gpsdrive.sf.net
