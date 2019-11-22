:Author: OSGeoLive
:Author: Tom Kralidis
:Author: Angelos Tzotsos, OSGeo
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:Version: osgeolive11.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_pycsw@
@OSGEO_KIND_pycsw@

********************************************************************************
@NAME_pycsw@ Quickstart
********************************************************************************

pycsw is an OGC CSW server implementation written in `Python <https://python.org>`_. pycsw allows for the publishing and discovery of geospatial metadata.  Existing repositories of geospatial metadata can be exposed via OGC:CSW 2.0.2 or OGC:CSW 3.0.0.

.. contents:: Contents
   :local:

Run the tester application
==========================

1. On the Desktop go to `Web Services --> pycsw` or open Firefox and navigate to ``http://localhost/pycsw/tests/index.html``:

.. image:: /images/projects/pycsw/pycsw_tester_startup.png
  :scale: 75 %

  By selecting the left drop-down list, the user can see various predefined POST requests, encoded as XML, that can be sent to pycsw. 

2. Select "apiso/DescribeRecord" and press the "Send" button. A description of the ISO Application Profile record is presented on the right panel.

.. image:: /images/projects/pycsw/pycsw_tester_describe_apiso_record.png
  :scale: 75 %

3. Selecting "GetCapabilities-SOAP" and press the "Send" button. A SOAP request is sent to the server to advertise their web service capabilities.

.. image:: /images/projects/pycsw/pycsw_tester_soap_capabillities.png
  :scale: 75 %

4. You can search for data records, performing a spatial bounding box query, by selecting "GetRecords-filter-bbox" and editing the coordinates in the XML request.

.. image:: /images/projects/pycsw/pycsw_tester_getrecords_bbox_filter.png
  :scale: 75 %

You can go through all the available requests and perform various requests from this testing application.

Understand capabilities and configuration
=========================================

The capabilities of the pycsw installation can be found at ``http://localhost/pycsw?service=CSW&version=2.0.2&request=GetCapabilities``. 
If you just use ``http://localhost/pycsw`` you will get the capabilities document for CSW 3.0.0, since that is the latest version supported.

To edit the web service metadata, included in the capabilities document, you can modify the file ``/etc/pycsw/default.cfg`` under the tag ``[metadata:main]``.

If you want to enable INSPIRE Discovery Service support, fill in the metadata under the tag ``[metadata:inspire]`` and set the ``enabled`` property to ``true``.

For full functionality and configuration options, please consult the `documentation`_ on the pycsw website.

Create metadata
===============

Metadata files for a spatial dataset or a spatial web service can be created through the open source implementation of inspire directive for metadata, European Open Source Metadata Editor (EUOSME). This application can be found at ``http://inspire-geoportal.ec.europa.eu/editor/``. Source code is available at ``https://joinup.ec.europa.eu/svn/euosme/trunk``

You can fill the mandatory metadata fields by going through the application tabs, adding information like the name of the data owner, keywords, resource location on the web, geographic location (using a bounding box or the name of a country), etc. 

.. image:: /images/projects/pycsw/pycsw_euosme_metadata_input.png
  :scale: 75 % 

After you have added all the information available, press the :guilabel:`validation` button on top of the page to check for consistency with the INSPIRE directive. 

.. image:: /images/projects/pycsw/pycsw_euosme_save_metadata.png
  :scale: 75 %

After a successful validation, the XML file can be saved to the local disk and viewed through a text editor or a browser.


Load metadata
=============

pycsw supports the following databases:

- SQLite3
- PostgreSQL (PostGIS optional)
- MySQL

In OSGeoLive, a simple SQLite setup has been implemented. The database can be found in ``/usr/share/pycsw/tests/suites/cite/data/records.db``

Create a new database
---------------------

In order to create a new SQLite database we need to:

1. Edit ``/etc/pycsw/default.cfg``:

   **[repository]**

   - **database**: the full file path to the metadata database, in database URL format (see https://docs.sqlalchemy.org/en/latest/core/engines.html#database-urls)
   - **table**: the table name for metadata records (default is ``records``)

2. Setup the database:

   .. code-block:: bash

     $ sudo pycsw-admin -c setup_db -f /etc/pycsw/default.cfg

This will create the necessary tables and values for the repository.

The database created is an `OGC SFSQL`_ compliant database, and can be used with any implementing software.  For example, to use with `OGR`_:

.. code-block:: bash

  $ ogrinfo /path/to/records.db
  INFO: Open of 'records.db'
  using driver 'SQLite' successful.
  1: records (Polygon)
  $ ogrinfo -al /path/to/records.db
  # lots of output

Import Metadata
---------------

.. code-block:: bash

  $ sudo pycsw-admin -c load_records -f /etc/pycsw/default.cfg -p /path/to/records -r

This will import all ``*.xml`` records from ``/path/to/records`` into the new database and configure the repository to expose queryables as per Table 53 of OGC:CSW.


Data discovery through QGIS MetaSearch plugin
=============================================

1. On the Desktop go to `Desktop GIS --> QGIS` to start QGIS, then click on the :guilabel:`MetaSearch` button (CSW icon)

.. image:: /images/projects/pycsw/pycsw_qgis_metasearch_open.png
  :scale: 75 %

2. Add the pycsw server by pressing the :guilabel:`New` button and type in ``http://localhost/pycsw/``

.. image:: /images/projects/pycsw/pycsw_qgis_metasearch_add.png
  :scale: 75 %

3. Add some default servers using the :guilabel:`Add default servers` button and also get the capabilities of the server using :guilabel:`Server info` button

.. image:: /images/projects/pycsw/pycsw_qgis_metasearch_server_info.png
  :scale: 75 %

4. Perform a search using the catalogue, either by a string value or with a bounding box

.. image:: /images/projects/pycsw/pycsw_qgis_metasearch_search.png
  :scale: 75 %


Things to try
=============

* Try to discover data through the Tester application by setting the appropriate requests eg. any text search with the string "imagery" leads to discovering the xml data created previously by EUOSME

.. image:: /images/projects/pycsw/pycsw_tester_discovery.png
  :scale: 75 %

* Try to discover data through the Python `OWSLib CSW`_ interface.

* Try to discover data from GeoNode, which is also included in OSGeoLive and uses pycsw as the default CSW engine.

What next?
==========

For more information on pycsw, please consult the `documentation`_ on the pycsw website.

.. _`OpenGIS Catalogue Service Implementation Specification`: https://www.opengeospatial.org/standards/cat
.. _`2011`: https://kralidis.ca/blog/2011/02/04/help-wanted-baking-a-csw-server-in-python/
.. _`Open Source`: https://www.opensource.org/
.. _`documentation`: https://pycsw.org/docs/
.. _`lxml`: https://lxml.de/
.. _`SQLAlchemy`: https://www.sqlalchemy.org/
.. _`Shapely`: https://github.com/Toblerity/Shapely
.. _`pyproj`: https://github.com/jswhit/pyproj
.. _`Download pycsw`: https://pycsw.org/download.html
.. _`OGC Compliant`: https://www.opengeospatial.org/resource/products/details/?pid=1104
.. _`OGC Reference Implementation`: http://demo.pycsw.org/
.. _`GitHub`: https://github.com/geopython/pycsw
.. _`OGR`: https://www.gdal.org/ogr
.. _`OGC SFSQL`: https://www.opengeospatial.org/standards/sfs
.. _`OWSLib CSW`: https://geopython.github.io/OWSLib/#csw

