:Author: OSGeo-Live
:Author: Javier Sanchez, GeoNaTec
:Reviewer: 
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/projects_logos/logo-josm.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://josm.openstreetmap.de

JOSM
================================================================================

.. Writing Tip:
  Application Category Description:

Desktop Editor for OpenStreetMap data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Writing Tip:
  Address user questions of "What does the application do?",
  "When would I use it?", "Why would I use it over other applications?",
  "How mature is the application and how widely deployed is it?".
  Don't mention licence or open source in this section.
  Target audience is a GIS practitioner or student who is new to Open Source.
  * First sentence should explain the application.
  * Usually the application domain will not be familiar to readers. So the
    next line or two should explain the domain. Eg: For GeoKettle, the next
    line or two should explain what GoeSpatial Business Intelligence is.
  * Remaining paragraph or 2 in this overview section should provide a
    wider description and advantages from a user perspective.

JOSM is an extensible editor for ​OpenStreetMap (OSM) written in ​Java 1.6. 

Currently it supports loading stand-alone GPX tracks and GPX track data from the OSM database as well as loading and editing existing nodes, ways, metadata tags and relations from the OSM database. Those GPX files, are usually downloaded in advance from your GPS receiver or from other sources.

A "node" is a point, a "way" is a line connecting multiple nodes, a "Relation" is an ordered sequence of ways and nodes (a logical container used to group elements), and "Tags" describe what each node or way represents (Tags are organized into "keys" and "values").

It is one of the most powerful desktop applications in order digitize accurate editions and commit changes to the OpenStreetMap dataset.

JOSM is an offline editor which means everything you do won't be visible for anyone else until uploading it to the server. Once you are happy with your changes, if you attempt to save them, JOSM will check if happens to be any conflict with other editions run by other users on the same elements. If there is no conflict cases to solved, your data will be uploaded, saved and visible to everyone else.

.. image:: ../../images/screenshots/1024x768/josm_interface.png
  :scale: 55 %
  :alt: JOSM Editor.
  :align: right

Core Features
--------------------------------------------------------------------------------

* Common GIS Desktop Interface tools: Tool bar customization, View control (zoom, pan. etc), styles, icons and layers management.

* Download and upload OSM vector data.

* Open local data 
	* NMEA-0183 files: *.nmea, *.nme, *.nma, *.log, *.txt
	* OSM files: *.osm, *.xlm, *.osmbz2, *.osmbz
	* OSM change file: *.osc, *.osc.bz2, *.osc.bz, *.osc.gz
	* images (*.jpg) 

* Imagery: Visualize basemaps from OSM, Bingsat, Lansat, MapBox satellite, MapQuest Open Aerial or any other WMS sources.

* Editing Tools: Advance graphical editing.
	* Nodes: merge, join, unglue, distribute, align in circle, align in line, join node to way, and more.
	* Ways: split, combine, reverse, simplify, UnGlue ways, and more.
	* Areas: join overlaping areas, create multi-polygon, and more.

* Audio mapping: survey recording management.

* Photo mapping: survey pictures management.
 
* Specialized plugins: A list of plugins are accessible from the interface and ready to install. 


Implemented Standards
--------------------------------------------------------------------------------

* JOSM support WMS OGC standard as client side, but uses `OSM API <http://wiki.openstreetmap.org/wiki/API_v0.6>`_ to communicate with OSM database.

Details
--------------------------------------------------------------------------------

**Website:** http://http://josm.openstreetmap.de/

**Licence:** JOSM, and all its integral parts, are released under the GNU General Public License v2 or later. Note: This is not valid for JOSM plugins. These are not considered an integral part of JOSM and may be under any license.

**Software Version:** 5608

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** User Desktop Interfaces that uses `OSM API <http://wiki.openstreetmap.org/wiki/API_v0.6>`_

**Support:** http://www.osgeo.org/search_profile

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/josm_quickstart>`

