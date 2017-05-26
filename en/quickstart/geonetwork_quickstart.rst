:Author: GeoNetwork Community
:Version: osgeo-live8.5
:Reviewer: Cameron Shorter, Jirotech
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Thanks: GeoNetwork Community 

.. |GN| replace:: GeoNetwork

.. figure:: ../../images/project_logos/logo-GeoNetwork.png
  :alt: project logo
  :align: right

********************************************************************************
GeoNetwork Quickstart 
********************************************************************************


GeoNetwork is a catalog application to manage spatially referenced resources.
It provides powerful metadata editing and search functions as well as
an interactive web map viewer. It is currently used in numerous
Spatial Data Infrastructure initiatives across the world.

Apart from how to start the catalog, this Quick Start describes:
* some of the different ways you can search for spatial data
* how to download and display data from the search results


Starting the catalog
--------------------

After going through the installer steps, simply go to bin folder and click
on start.bat (on windows) or start.sh (on linux).


Go to the home page at ``http://localhost:8880/geonetwork``. Your first view
should look like this:

.. figure:: ../../images/screenshots/800x600/geonetwork/home-page.png



Signing in and load templates
-----------------------------


Click the ``sign in`` to connect as administrator. The default account is
username ``admin`` with password ``admin``.

.. figure:: ../../images/screenshots/800x600/geonetwork/signin.png


Once connected, the top toolbar should provide a link to the ``admin console``
and your login details.

.. figure:: ../../images/screenshots/800x600/geonetwork/identified-user.png


Go to the ``admin console`` and click on metadata and templates:


.. figure:: :: ../../images/screenshots/800x600/geonetwork//metadata-and-templates.png

Choose all standards and click ``load samples`` and then ``load templates`` in
order to load examples:

.. figure:: :: ../../images/screenshots/800x600/geonetwork//templates.png


Go back to the search page to see examples:

.. figure:: ../../images/screenshots/800x600/geonetwork/once-samples-are-loaded.png


Searching information
---------------------

The search form provides different ways for search:

* a full text search box providing suggestions

.. figure:: ../../images/screenshots/800x600/geonetwork/full-text.png


* facets which defines groups that you can easily click on to browse the content of the catalog

.. figure:: ../../images/screenshots/800x600/geonetwork/facets.png


* spatial filtering to choose information in specific areas

.. figure:: ../../images/screenshots/800x600/geonetwork/spatial-filter.png


* advanced search

.. figure:: ../../images/screenshots/800x600/geonetwork/advanced.png



Discovering information
-----------------------

Search results present main information about each resources: title, abstract,
categories, status, overview and links.

.. figure:: ../../images/screenshots/800x600/geonetwork/a-result.png


Clicking the record will provide more in depth details about the resources:

* Download and links
* About the resource
* Technical information
* Metadata details

.. figure:: ../../images/screenshots/800x600/geonetwork/a-record.png


To get more information, switch the advanced view mode.
To update the record, click the edit button.



From the results or the record view, you can easily add WMS layers referenced in
a metadata record on the map. With the map, you can visualize your data, choose
your background maps, query objects, display on a 3D globe and more ...


.. figure:: ../../images/screenshots/800x600/geonetwork/map-africa-basin.png



For more information
--------------------

Continue reading the documentation: http://geonetwork-opensource.org/docs.html

