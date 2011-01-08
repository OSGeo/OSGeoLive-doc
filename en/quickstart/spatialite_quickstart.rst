:Author: OSGeo Live
:Version: osgeo-live4.0
:License: Creative Commons

.. _spatialite-quickstart:
 
.. image:: ../../images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right

*********************
SpatiaLite Quickstart 
*********************

SpatiaLite is an SQLite database engine with spatial functions added. 

This Quick Start describes how to open a database with the command line and the GUI application.


Running spatialite
==================

* Open a console and open a sample database with spatialite::

   spatialite /home/user/data/spatialite/regions.sqlite
   select r.NOME_REG, a.Nome from Aeroporti a, reg2008_s r where CONTAINS( r.Geometry, a.Geometry ) order by r.NOME_REG;


Create a new database with spatialite-gui
=========================================

* Start spatialite-gui
* Select :menuselection:`File --> Creating a new SQLite DB`


Running spatialite-gis
======================

* Run spatialite-gis 
* Connect to /home/user/data/spatialite/regions.sqlite

You should see a set of Airports in Italy


Things to Try
=============

Here are some additional challenges for you to try:

* Inspect geometries with spatialite-gui
* Open and edit SpatiaLite layers in QGIS

What Next?
==========

To learn more about SpatiaLite, a starting point is the `Documentation and tutorials`_ page.

.. _`Documentation and tutorials`: http://www.gaia-gis.it/spatialite/docs.html
