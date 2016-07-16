:Authors: Hamish Bowman, Marco Brancolini
:Reviewer: 
:Version: osgeo-live10.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-osm.png
  :alt: project logo
  :align: right
  :target: http://www.osm.org/


OpenStreetMap
================================================================================

The database
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The OSM database is the heart of the `OSM project <https://live.osgeo.org/en/overview/osm_overview.html>`_  (internal link) : currently,  almost 3 million users of the OSM community have inserted in it geolocalized information about all the visible items on the planet surface.

There are three kind of objects stored in the db:
* Nodes :  stored as latitude-longitude WGS84 points (i.e. a mountain peak, a bus stop, …)
* Ways , an ordered list of nodes (i.e. a road, a river, a power line…)
* Relations, an ordered list of nodes and/or ways and/or relations (i.e. a bus line, a route …)

Each object can be described by any numer of tags : tags are in the form "key = value" : for example  natural=tree is a tag associated to a node representing a tree, and if you want be more specific you can add other tags, i.e. species=Quercus_rubur or height=12m. 
Even if anyone can define new keys/values, standard and guidelines  are discussed, voted and adopted by the OSM community: `here <http://wiki.openstreetmap.org/wiki/Proposed_features/Public_Transport>`_ for example is described a new guideline about how to map a bus line.
Another important information stored in the OSM database is the log, the history of all the happened db changes (changesets) : who, when, and what.  This is essential to have the functionality to rollback the db at a previous state, to remove wrong changeset (done by unskilled or fraudolent users).

Currently in the OSM database are stored > 3,5 billion nodes,  > 350 millions ways,  > 4 millions relations, and about 60.000 keys with 80 millions of distinct tags.
Very detailed statistics about the database and its contents are continuously updated at http://taginfo.openstreetmap.org/ : using again the tree example, you can search in this site “natural=tree”,  getting that more than 7 millions trees are in the OSM db (likely along roads or in the cities, individual trees in the woods are not counted, until now…), and clicking on the value “tree” of the first row and then on the tag “combinations”, a list is shown of the most common tags combined with “natural=tree”, so you discover that for more than half millions trees is specified the species; clicking again on “species=*”  and then on the tab “values”, you get the list of all the tree species stored in the db (the hit is “Acer_platanoides”, more than 30.000) .

There are many ways to update db content:
* Online : at the `main OSM site <http://www.openstreetmap.org/>`_ , two in-browser editors are available: iD and Potlatch2
* Offline : the most spread editing tools are `Josm <https://josm.openstreetmap.de/>`_ and `Merkaartor <http://merkaartor.be/>`_ : both allow to download OSM data locally, modify them, and upload changes back to the OSM db.

   A comparison between the various OSM editors is `here <http://wiki.openstreetmap.org/wiki/Comparison_of_editors>`_ .
   
* Bulk uploads : experienced users can use specific Api’s to programmatically update the OSM db. This typically occurs when a pubblic authority releases its geolocalized data (a significative example was in 2007-2008 the bulk import into OSM of the Tiger data, produced by the US Census Bureau, covering all the United Stated: a description of this project is `here <http://wiki.openstreetmap.org/wiki/TIGER>`_  .

And there many more ways to extract information from the OSM db, in the most various filetypes :
* The whole database (or a portion: a continent, a country),  is downloadable at http://planet.osm.org/ or one of its mirrors
* Smaller parts are downloadable, as said above, directly from offline editors.
* At `Overpass Turbo <https://overpass-turbo.eu/>`_ is possible, using Api queries, filter OSM data in any ways, and extract them in various formats.
* 'Osmosis <http://wiki.openstreetmap.org/wiki/Osmosis>`_ is a command line Java application for processing OSM data.

   Other useful information, about extracting data from OSM, is in the OSM Wiki `downloading data <http://wiki.openstreetmap.org/wiki/Downloading_data>`_ .

The OSGeo-Live distribution includes a city sized extract of OSM data which is used for examples by some applications.

.. image:: ../../images/screenshots/1024x768/osm-screenshot.jpg 
  :scale: 55 %
  :alt: OSM screenshot
  :align: right


Core Features
--------------------------------------------------------------------------------

* Main db is a PostgreSQL database, here infos about its schema and ER diagrams, and here a diagram showing how the main database is related with the other system components.

* Data and related main services are hosted on a CDN network worldwide spread.	

* Alla data are freely downloadable and reusable (license information here).

Data Sets included in OSGeo Live
--------------------------------------------------------------------------------

- feature_city.osm.bz2: A large extract of the greater city area as a BZip2 compressed XML text file.

- feature_city_CBD.osm.bz2: A smaller subset covering just the central business district.

- feature_city_poi.db: Sqlite DB of "positions of interest" nodes extracted from the above larger city OSM extract. Contains locations of pubs, fuel stations, restaurants, supermarkets, etc.

- Files referencing the name of the featured city contain the same data as the above files. Quickstarts and overviews use the generic file names so that the example city can change with each new release.

The OSM feature city data has been imported into a PostGIS database called "osm_local" using the osm2pgsql tool. The spatial reference system used for this database is latitude-longitude with the WGS84 datum (EPSG code 4326) and can be reprojected to other SRSs, such as Spherical-mercator, on demand.
The smaller CBD extract is loaded into another PostGIS database called "pgrouting".


Details
--------------------------------------------------------------------------------

**Website:** http://www.osm.org

**License:** Open Data Commons Open Database License (ODbL)

**Data Version:** Live database extract 2014-07-31

**Data format:** XML

**Spatial coordinate system:** Latitude-Longitude WGS84

**Support:** http://wiki.osm.org

