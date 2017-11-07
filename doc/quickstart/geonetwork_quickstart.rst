:Author: GeoNetwork Community
:Version: osgeolive11.0
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Thanks: GeoNetwork Community

.. |GN| replace:: GeoNetwork

@LOGO_geonetwork@
@OSGEO_KIND_geonetwork@


********************************************************************************
@NAME_geonetwork@ Quickstart
********************************************************************************

GeoNetwork is a catalog application to manage spatially referenced resources.
It provides powerful metadata editing and search functions as well as
an interactive web map viewer. It is currently used in numerous
Spatial Data Infrastructure initiatives across the world.

Apart from how to start the catalog, this Quick Start describes:
* some of the different ways you can search for spatial data
* how to download and display data from the search results

.. contents:: Contents

Starting the catalog
--------------------

After going through the installer steps, simply go to bin folder and click
on start.bat (on windows) or start.sh (on linux).


Go to the home page at ``http://localhost:8880/geonetwork``. Your first view
should look like this:

.. figure:: /images/projects/geonetwork/geonetwork_home-page.png
  :scale: 70 %


Signing in and load templates
-----------------------------


Click the ``sign in`` to connect as administrator. The default account is
username ``admin`` with password ``admin``.

.. figure:: /images/projects/geonetwork/geonetwork_signin.png
  :scale: 70 %

Once connected, the top toolbar should provide a link to the ``admin console``
and your login details.

.. figure:: /images/projects/geonetwork/geonetwork_identified-user.png
  :scale: 70 %

Go to the ``admin console`` and click on metadata and templates:


.. figure:: /images/projects/geonetwork/geonetwork_metadata-and-templates.png
  :scale: 70 %

Choose all standards and click ``load samples`` and then ``load templates`` in
order to load examples:

.. figure:: /images/projects/geonetwork/geonetwork_templates.png
  :scale: 70 %

Go back to the search page to see examples:

.. figure:: /images/projects/geonetwork/geonetwork_once-samples-are-loaded.png
  :scale: 70 %


Searching information
---------------------

The search form provides different ways for search:

* a full text search box providing suggestions

.. figure:: /images/projects/geonetwork/geonetwork_full-text.png
  :scale: 70 %

* facets which defines groups that you can easily click on to browse the content of the catalog

.. figure:: /images/projects/geonetwork/geonetwork_facets.png
  :scale: 70 %

* spatial filtering to choose information in specific areas

.. figure:: /images/projects/geonetwork/geonetwork_spatial-filter.png
  :scale: 70 %

* advanced search

.. figure:: /images/projects/geonetwork/geonetwork_advanced.png
  :scale: 70 %


Discovering information
-----------------------

Search results present main information about each resources: title, abstract,
categories, status, overview and links.

.. figure:: /images/projects/geonetwork/geonetwork_a-result.png
  :scale: 70 %

Clicking the record will provide more in depth details about the resources:

* Download and links
* About the resource
* Technical information
* Metadata details

.. figure:: /images/projects/geonetwork/geonetwork_a-record.png
  :scale: 70 %

To get more information, switch the advanced view mode.
To update the record, click the edit button.



From the results or the record view, you can easily add WMS layers referenced in
a metadata record on the map. With the map, you can visualize your data, choose
your background maps, query objects, display on a 3D globe and more ...


.. figure:: /images/projects/geonetwork/geonetwork_map-africa-basin.png
  :scale: 70 %


What Next?
----------

Continue reading the documentation: http://geonetwork-opensource.org/docs.html
