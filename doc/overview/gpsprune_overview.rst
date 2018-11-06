:Author: activityworkshop
:Reviewer: Cameron Shorter
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeolive11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_gpsprune@
@OSGEO_KIND_gpsprune@


@NAME_gpsprune@
================================================================================

GPS Track-Editing
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`GpsPrune <https://gpsprune.activityworkshop.net/>`_ is a tool for viewing,
editing and converting coordinate data from GPS systems.  It can be used for planning
trips in advance, or for analysing the tracks recorded by GPS receivers.

It uses :doc:`OpenStreetMap <osm_dataset_overview>` 
imagery to show recorded tracks and waypoints, and provides a variety of tools
to let you edit, crop and prune the data points.  It also has functions for
correlating photos and audio files to the coordinates using the file timestamps.

GpsPrune uses Gpsbabel, if available, to read data directly from a GPS receiver,
and can send the edited data back to the receiver too.

GpsPrune runs on Mac OSX, Windows and Linux, and is available
in over ten different languages.

@SCREENSHOT_gpsprune@

Core Features
--------------------------------------------------------------------------------

* Load data from text files, gpx files, kml/kmz files, or directly from a GPS receiver
* Zoomable map imagery from OpenStreetMap or any compatible server (OpenCycleMap, Reit- und Wanderkarte etc)
* Altitude or speed profile view
* Editing tools for creating, modifying, deleting, reversing and compressing tracks
* Interactive 3d view of the data or export to POV format for 3D rendering, both including map imagery painted onto the terrain
* Save data to text files, gpx files, kml/kmz files, or directly to a GPS receiver
* Automatic correlation of photographs and audio files with the loaded data using timestamps
* Creation of charts such as altitude against distance, speed against time
* Distances, climbs, descents, time estimates and more
* Online resources such as wikipedia, gpsies and local weather forecasts

Details
--------------------------------------------------------------------------------

**Website:** https://gpsprune.activityworkshop.net/

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** |version-gpsprune|

**Supported Platforms:** GNU/Linux, Mac OSX, Windows


@QUICKSTART_gpsprune@

.. presentation-note
    GpsPrune is a tool for processing GPS data. It shows recorded tracks and waypoints, and provides tools to edit, crop and prune data points. You can also view data in three dimensions, combine points with photos, audio files and online information.
