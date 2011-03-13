:Author: OSGeo Live
:Version: osgeo-live4.0
:License: Creative Commons

.. _geokettle-overview:

.. image:: ../../images/project_logos/logo-geokettle.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://www.geokettle.org/

GeoKettle
=========

Data Integration
~~~~~~~~~~~~~~~~

GeoKettle is a "spatially-enabled" version of the `Pentaho Data Integration (Kettle) <http://www.pentaho.com/products/data_integration/>`_. It is a powerful, metadata-driven spatial ETL (Extract, Transform and Load) tool dedicated to the integration of different data sources for building and updating geospatial databases and data warehouses.

GeoKettle enables the Extraction of data from data sources, the Transformation of data in order to correct errors, make some data cleansing, change the data structure, make them compliant to defined standards, and the Loading of transformed data into a target DataBase Management System (DBMS), GIS file, or geospatial web service.

GeoKettle is particularly useful when a user wants to automate complex and repetitive data processing without producing any specific code, to make conversions between various data formats, to migrate data from one DBMS to another, to perform some data feeding tasks into various DBMS, to populate analytical data warehouses for decision support purposes, etc.

In the geospatial domain, Geokettle compares to FME, a proprietary spatial ETL tool edited by Safe Software. GeoKettle is stable, fast, standards compliant, with hundreds of functions and read/write support for many file formats, services and DBMS. GeoKettle is used by diverse organisations from around the world, including governmental agencies, banks, insurance and geospatial system integrators.

.. image:: ../../images/screenshots/1024x768/geokettle-overview.png
  :scale: 50 %
  :alt: project logo
  :align: right

Core Features
-------------

* Extract data from: 

  * 35+ database types: MySQL, PostgreSQL, Oracle, ...
  * XML files
  * XLS files
  * Xbase files (dBase, Foxpro, etc)
  * File systems information
  * Generated data
  * MS Access files
  * LDAP
  * Geospatial data formats: Shapefile, ...

* Transformation of data:

  * Engine based data transfer (no code generator) 
  * Looking up data in databases, files or memory
  * Calculating
  * Scripting: Javascript, SQL, RegExp
  * Splitting
  * Mapping
  * Selecting
  * Partitioning
  * Filtering
  * Merging
  * Joining
  * Duplicating
  * Clustering (MPP)
  * Pivotting
  * Geospatial data analysis and processing

* Load data into a target format:

  * Database loads
  * Data warehouse population
  * Partitioned loading
  * Bulk loading
  * Parallel loading
  * Clustering

* Environment:
  
  * Full GUI named "Spoon" to edit every transformation options
  * Command line tools: execute jobs and transformations
  * Web server: remote execution and clustering perfect in cloud
    computing environment for very large datasets processing
  * Programming API for Java
  * Plugin eco-system

Implemented Standards
---------------------

* OGC standards compliant (SFS)

Details
-------

**Website:** http://www.geokettle.org/

**Licence:** GNU Lesser General Public License (LGPL) version 2.1

**Software Version:** 3.2.0-20090609

**Supported Platforms:** Windows, Linux, Mac, Solaris

**API Interfaces:** Java, Javascript

**Support:** http://www.spatialytics.org & http://www.spatialytics.com


Quickstart
----------
    
* `Quickstart documentation <../quickstart/geokettle_quickstart.html>`_
