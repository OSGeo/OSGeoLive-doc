:Author: OSGeoLive
:Author: Stephan Meissl, Stephan Krause, Fabian Schindler, Nikola Jankovic
:Reviewer: Angelos Tzotsos, OSGeo
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:Version: osgeolive13.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_eoxserver@
@OSGEO_KIND_eoxserver@
@VMDK_eoxserver@



================================================================================
@NAME_eoxserver@ Quickstart
================================================================================

EOxServer is a server for presenting big Earth Observation (EO) data
archives and metadata via Open Standards. It builds upon an Open Source
stack of software which includes Python, :doc:`MapServer
<../overview/mapserver_overview>`, Django/GeoDjango, :doc:`GDAL
<../overview/gdal_overview>`,  :doc:`PROJ
<../overview/proj_overview>` and a :doc:`SpatiaLite
<../overview/spatialite_overview>` or :doc:`PostGIS
<../overview/postgis_overview>` database.

This Quick Start describes how to:

* Use the Web Client to view, filter, subset, and download EO data
* Use the Admin Client to inspect EO data archives

.. contents:: Contents
   :local:

Start EoxServer
===============

Choose :menuselection:`Geospatial --> Web Services --> EOxServer`. This launches a
browser showing the demonstration instance available at http://localhost/eoxserver/

.. image:: /images/projects/eoxserver/eoxserver_start.png
  :scale: 70 %
  :alt: EOxServer demonstration start

Work with the Web Client
========================

Click the **Web Client** link to open the integrated EOxServer client.

Within this client you can explore the contents of the EOxServer instance. The
demonstration instance is filled with ENVISAT MERIS scenes.

.. image:: /images/projects/eoxserver/eoxserver_webclient1.png
  :scale: 50 %
  :alt: Main view of the EOxServer Web Client

The client consists of the map view and widgets that contain the main interactions. 
The main area is the map widget of the client with a set of datasets already displayed.
On the bottom, you'll find the timeslider widget, that allows you to explore the
contents in the temporal dimension.

.. image:: /images/projects/eoxserver/eoxserver_webclient2.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client outlines

The Layer Selection widget can be expanded by clicking the cogwheel on the top left and
it allows you to enable or disable the visibility and
configure the rendering of the layers. Also, you can show or hide the
streets-overlay and select the background layer. The Filters tab in this widget enables
querying for different spatial and temporal values.

.. image:: /images/projects/eoxserver/eoxserver_webclient3.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client outlines

Similar to a map, you can zoom and pan the currently visible time of interest
and select a time of interest by drawing on the area containing the red dots.
You can also hover on a dot to see the dataset ID. By clicking on the dot, the
map automatically zooms to the extent of the dataset.

.. image:: /images/projects/eoxserver/eoxserver_webclient4.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client outlines

When a spatial filter is enabled, you can draw a bounding box, polygon or point
directly on the map. The drawn feature is used for querying within the Download Tool.

.. image:: /images/projects/eoxserver/eoxserver_webclient5.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client outlines

You can get more information of available services and metadata on the selected product
by hovering on the product in the search results widget and clicking on the icon in the
top right.

.. image:: /images/projects/eoxserver/eoxserver_webclient6.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client outlines

When the Download Tool is enabled, a query to the server is sent. This query
includes the selected time of interest and bounding box. The results are shown
in the Download widget, where you can select the format, projection and datasets
to download.

This was a quick introduction to the EOxServer Web Client. Please refer to the
`online documentation
<https://docs.eoxserver.org/en/stable/users/webclient.html>`_ for more
information on this topic.

Work with the Admin Client
==========================

From the EOxServer main page, click the **Admin Client** link and login with user
`admin` and password `admin`.

.. image:: /images/projects/eoxserver/eoxserver_adminclient1.png
  :scale: 50 %
  :alt: EOxServer demonstration admin client login

The `Admin Client` is Djangos standard admin and allows you to configure the
available data. Please feel free to explore the client. More information can
be found in the `operators' guide
<https://docs.eoxserver.org/en/stable/users/operators.html>`_.

.. image:: /images/projects/eoxserver/eoxserver_adminclient2.png
  :scale: 50 %
  :alt: EOxServer demonstration admin client start

For example, you can inspect the collection that is loaded by default by
clicking the "Collections" link and then the "MER_FRS_1P_RGB_reduced" link.

.. image:: /images/projects/eoxserver/eoxserver_adminclient3.png
  :scale: 50 %
  :alt: EOxServer demonstration admin client Dataset Series

You can preview the coverages by going back and clicking on the "Coverages" link. 

.. image:: /images/projects/eoxserver/eoxserver_adminclient4.png
  :scale: 50 %
  :alt: EOxServer demonstration admin client Dataset Series Management

What Next?
==========

This is a simple demonstration, but you can do much more with EOxServer. The
project website contains a lot of resources to help you get started. Here’s
a few resources to check out next:

* See the :doc:`EOxServer Overview <../overview/eoxserver_overview>` for more information.
* Read the `EOxServer Operators' Guide <https://docs.eoxserver.org/en/stable/users/operators.html>`_.
* Read the `EOxServer Basics <https://docs.eoxserver.org/en/stable/users/basics.html>`_.
* Ready to use EOxServer? Then join the community on the `mailing lists
  <https://docs.eoxserver.org/en/stable/users/mailing_lists.html>`_ to
  exchange ideas, discuss potential software improvements, and ask questions.
