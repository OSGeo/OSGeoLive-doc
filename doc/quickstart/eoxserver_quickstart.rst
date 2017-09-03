:Author: OSGeo-Live 
:Author: Stephan Meissl
:Author: Stephan Krause
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeo-live11.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-eoxserver-2.png
  :scale: 65 %
  :alt: project logo
  :align: right
  :target: https://eoxserver.readthedocs.org/

================================================================================
 EOxServer Quickstart
================================================================================

Overview
--------------------------------------------------------------------------------

EOxServer is a server for presenting big Earth Observation (EO) data 
archives and metadata via Open Standards. It builds upon an Open Source 
stack of software which includes Python, :doc:`MapServer 
<../overview/mapserver_overview>`, Django/GeoDjango, :doc:`GDAL 
<../overview/gdal_overview>`, PROJ.4 and a :doc:`SpatiaLite 
<../overview/spatialite_overview>` or :doc:`PostGIS 
<../overview/postgis_overview>` database.

This Quick Start describes how to:

* View, filter, subset, and download EO data via EOxServer's Web Client
* Inspect EO data archives via EOxServer's Admin Client

.. contents:: Contents

See the :doc:`EOxServer Overview <../overview/eoxserver_overview>`, the 
`local EOxServer documentation 
<../../eoxserver-docs/EOxServer_documentation.pdf>`_, or the `online 
EOxServer documentation <https://eoxserver.readthedocs.org/>`_ for more
information.

.. image:: /images/projects/eoxserver/eoxserver_documentation.png
  :scale: 50 %
  :alt: EOxServer documentation

Demonstration Instance
--------------------------------------------------------------------------------

The icon labeled `EOxServer` filed under `Web Services` launches a browser 
showing the demonstration instance available at http://localhost/eoxserver/

.. image:: /images/projects/eoxserver/eoxserver_start.png
  :scale: 50 %
  :alt: EOxServer demonstration start

Web Client
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The **Web Client** link opens the integrated EOxServer client. Within this
client you can explore the contents of the EOxServer instance. In the
demonstration instance is filled with ENVISAT MERIS scenes.

.. image:: /images/projects/eoxserver/eoxserver_webclient1.png
  :scale: 50 %
  :alt: Main view of the EOxServer Web Client

The client provides a set of interactions. On the top you can see a menu bar to
show the Layer Selection and the Tools widgets. The main area is the map widget
of the client with a set of datasets already displayed.
On the bottom, you'll find the timeslider widget, that allows you to explore the
contents in the temporal dimension. Each dataset is displayed as a small filled
dot 

.. image:: /images/projects/eoxserver/eoxserver_webclient2.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client outlines

The Layer Selection widget allows you to enable or disable the visibility and 
configure the rendering of the layers. Also, you can show or hide the
streets-overlay and select the background layer. Please note, that when you
disable the "MER FRS 1P RGB reduced" layer, the timeslider widget is hidden and
only reappears once a layer dataset layer is enabled.
The Tools widget provides three different tools: the Bounding Box Selection Tool,
the Selection Management Tool and the Download Tool.

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

When the Bounding Box Tool is enabled, you can draw a bounding box directly on
the map. The bounding box is used for querying within the Download Tool.

.. image:: /images/projects/eoxserver/eoxserver_webclient5.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client outlines

When the Download Tool is enabled, a query to the server is sent. This query
include s the selected time of interest and bounding box. The results are shown
in the Download widget, where you can select the format, projection and datasets
to download.

This was a quick introduction to the EOxServer Web Client. Please refer to the 
`online documentation 
<https://eoxserver.readthedocs.org/en/latest/users/webclient.html>`_ for more 
information on this topic.

Admin Client
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The **Admin Client** link brings you to the login page for the `Admin 
Client`. The password for the user `admin` is `admin`.

.. image:: /images/projects/eoxserver/eoxserver_adminclient1.png
  :scale: 50 %
  :alt: EOxServer demonstration admin client login

The `Admin Client` is Djangos standard admin and allows you to configure the 
available data. Please feel free to explore the client. More information can 
be found in the `operators' guide 
<https://eoxserver.readthedocs.org/en/latest/users/operators.html>`_.

.. image:: /images/projects/eoxserver/eoxserver_adminclient2.png
  :scale: 50 %
  :alt: EOxServer demonstration admin client start

You can, for example, inspect the dataset series that is loaded by default by
navigating to "Dataset Series" and then to "MER_FRS_1P_RGB_reduced".

.. image:: /images/projects/eoxserver/eoxserver_adminclient3.png
  :scale: 50 %
  :alt: EOxServer demonstration admin client Dataset Series

Here you can also see the included datasets. If you feel like it, you can
exclude single datasets using the "delete" checkbox on the right and click on
"Save".

.. image:: /images/projects/eoxserver/eoxserver_adminclient4.png
  :scale: 50 %
  :alt: EOxServer demonstration admin client Dataset Series Management

What Next?
-------------------------------------------------------------------------------

This is a simple demonstration, but you can do much more with EOxServer. The 
project website contains a lot of resources to help you get started. Here’s 
a few resources to check out next:

* Read the `EOxServer Operators' Guide 
  <https://eoxserver.readthedocs.org/en/latest/users/operators.html>`_.
* Read the complete `EOxServer Users' documentation 
  <https://eoxserver.readthedocs.org/en/latest/users/index.html>`_ starting from
  the `EOxServer Basics
  <https://eoxserver.readthedocs.org/en/latest/users/basics.html>`_.
* If you are already in the OSGeo-Live environment, read the local copy of the `EOxServer Users' local documentation
  <https://localhost/eoxserver-docs/EOxServer_documentation.pdf>`_
* Ready to use EOxServer? Then join the community on the `mailing lists 
  <https://eoxserver.readthedocs.org/en/latest/users/mailing_lists.html>`_ to 
  exchange ideas, discuss potential software improvements, and ask questions.
