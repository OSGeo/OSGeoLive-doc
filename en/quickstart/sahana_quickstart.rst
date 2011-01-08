:Author: Hamish Bowman
:Version: osgeo-live4.0
:License: Creative Commons

.. _sahana-quickstart:
 
.. image:: ../../images/project_logos/logo-sahana.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.sahanafoundation.org


*****************
Sahana Quickstart 
*****************

Running
=======

Installation
~~~~~~~~~~~~

When you first start Sahana you'll be taken to a web setup page.
Most of this has been done for you, so on the first page you can
just click "``Next >``" at the bottom, and on the second setup page 
in the "`Create new database`" box you should keep the "`Database User`"
as '`root`' and  fill in '`user`' for the password in the line directly
below it. Then click on "``Setup Database >``" at the very bottom of the
page without changing anything else.

On the third setup page you'll be asked to set up some passwords, and
it insists on strong ones, e.g. "`demo4osgeo`" for all of them. Also
on this page you for the purposes of the demo should leave Access Control
set as "`Disabled`". Finish by clicking the "``Write Configuration File >``"
button at the bottom of the page. This will give you a security warning (only
important if you intend to install from the live demo DVD), and a button
to "``Start Sahana``" which you will want to click.


Usage
~~~~~

.. This section is somewhat TODO.

An easy way to get started is by adding a detail artifact. From the main
menu on the left click on Situation Mapping, "`Add Situation Markers`", and
add some information about a sample detail. You'll then be able to view
and select this with the "`Situation Map`" link in the upper left corner
of the page.

Development
~~~~~~~~~~~

Sahana is in active development and the spatial data tools are greatly
improved in the yet-unreleased ("trunk") version. This includes support for:

* GPS Interface module (waypoint and route upload/download via `GpsBabel`)
* UMN Mapserver module (web admin front-end)
* Extensive GIS configuration section in the Sahaha Administration module including support for external data sources from Google Maps, TMS, OpenStreetMap, KML OSM and GML geodata files, MS Virtual Earth, Yahoo Maps, WMS, GeoRSS, and Multimap.

The stable version used on this live disc only includes support for Google
Maps. You can explore the new features in the "trunk" working demo linked
below.

Samples
=======

A working demo of Sahana can be found at http://www.sahanafoundation.org/demo/
  (see that page for username and password login credentials)

A live example of Sahana in action (open to the public) can be found at http://haiti.sahanafoundation.org


Further reading
===============

* `Online documentation <http://wiki.sahanafoundation.org/doku.php>`_

