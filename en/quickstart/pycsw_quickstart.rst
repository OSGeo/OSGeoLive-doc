:Author: OSGeo-Live
:Author: Tom Kralidis, Angelos Tzotsos
:Version: osgeo-live5.5
:License: Creative Commons

.. _pycsw-quickstart:

.. image:: ../../images/project_logos/logo-pycsw.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://pycsw.org/

********************************************************************************
pycsw Quickstart
********************************************************************************

pycsw is an OGC CSW server implementation written in `Python`_.

pycsw implements clause 10 (HTTP protocol binding (Catalogue Services for the Web, CSW)) of the `OpenGIS Catalogue Service Implementation Specification`_, version 2.0.2.  Initial development started in 2010 (more formally announced in `2011`_).

pycsw allows for the publishing and discovery of geospatial metadata.  Existing repositories of geospatial metadata can be exposed via OGC:CSW 2.0.2.

pycsw is `Open Source`_, released under an MIT :ref:`license <license>`, and runs on all major platforms (Windows, Linux, Mac OS X).

pycsw is installed by default on the OSGeo Live DVD.  This QuickStart will describe how to:

* perform a fresh installation of pycsw
* test pycsw installation through the tester application
* edit pycsw's Capabilities document and display this information in a browser
* create ISO 19139 XML metadata records (through INSPIRE Metadata Editor or GIMED)
* load the created XML metadata files in pycsw database
* install QGIS CSW Client plugin
* perform discovery of data through the pycsw Catalogue Service within QGIS

Installation
============

System Requirements
-------------------

pycsw requires the following supporting libraries:

- `lxml`_ (version >= 2.2.3) for XML support
- `SQLAlchemy`_ (version >= 0.0.5) for database bindings
- `Shapely`_ (version >= 1.2.8) for spatial query / geometry support
- `pyproj`_ (version >= 1.8.9) for coordinate transformations

Installing from Source
----------------------

:ref:`Download <pycsw>` the latest version or fetch svn trunk:

.. code-block:: bash

  $ svn co https://pycsw.svn.sourceforge.net/svnroot/pycsw pycsw 

Ensure that CGI is enabled for your install directory.  For example, on Apache, if you setup pycsw in ``/srv/www/htdocs/pycsw`` (where your URL will be ``http://host/pycsw/csw.py``), add the following to ``httpd.conf``:

.. code-block:: none

  <Location /pycsw/>
   Options FollowSymLinks +ExecCGI
   Allow from all
   AddHandler cgi-script .py
  </Location>

Installing on Ubuntu/Xubuntu/Kubuntu
------------------------------------

In order to install pycsw to an Ubuntu based distribution, one can use the OSGeoLive installation script located in ``pycsw/etc/dist``:

.. code-block:: bash

  $ cd pycsw/etc/dist
  $ sudo ./install_pycsw.sh

The script installs the dependencies (Apache, lxml, sqlalchemy, shapely, pyproj) and then pycsw to ``/var/www``.

Installing on openSUSE
----------------------

In order to install the OBS package in openSUSE 12.1, one can run the following commands as user ``root``:

.. code-block:: bash

  $ zypper -ar http://download.opensuse.org/repositories/Application:/Geo/openSUSE_12.1/ GEO
  $ zypper -ar http://download.opensuse.org/repositories/devel:/languages:/python/openSUSE_12.1/ python
  $ zypper refresh
  $ zypper install pycsw

For earlier openSUSE versions change ``12.1`` with ``11.4``. For future openSUSE version use ``Factory``. Rolling version ``Tumbleweed`` is also supported.
pycsw is included in the official Application::Geo repository of OpenSUSE Build Service.

Tester Application
==================

To run the pycsw tester, use the pycsw launcher from the Web Services group, or open Firefox and navigate to ``http://localhost/pycsw/tester/index.html``:

.. image:: ../../images/screenshots/1024x768/pycsw_tester_startup.png
  :scale: 75 %

By selecting the left drop-down list, the user can see various predefined POST requests, encoded as XML, that can be sent to pycsw: 

.. image:: ../../images/screenshots/1024x768/pycsw_tester_selection.png
  :scale: 75 %

For example, by selecting "apiso/DescribeRecord" operation, and pushing the "Send" button, a description of the ISO Application Profile record is presented on the right panel:

.. image:: ../../images/screenshots/1024x768/pycsw_tester_describe_apiso_record.png
  :scale: 75 %

By selecting "GetCapabilities-SOAP" and pushing the "Send" button, a SOAP request is sent to the server to advertise their web service capabilities:

.. image:: ../../images/screenshots/1024x768/pycsw_tester_soap_capabillities.png
  :scale: 75 %

Also, the user can search for data records, performing a spatial bounding box query, by selecting "GetRecords-filter-bbox" and editing the coordinates in the XML request:

.. image:: ../../images/screenshots/1024x768/pycsw_tester_getrecords_bbox_filter.png
  :scale: 75 %

The user can go through all the available requests and perform various requests from this testing application. A more robust and graphical way to perform such queries is described in a following chapter of this tutorial.

Capabilities Document and Configuration
=======================================

The capabilities of the pycsw installation can be found at ``http://localhost/pycsw/csw.py?service=CSW&version=2.0.2&request=GetCapabilities``.

.. image:: ../../images/screenshots/1024x768/pycsw_getcapabilities_response.png
  :scale: 75 %

To edit the web service metadata, included in the capabilities document, the user can modify the file ``/var/www/pycsw/default.cfg`` under the tag ``[metadata:main]``.
If the user wants to enable INSPIRE Discovery Service support, the metadata under the tag ``[metadata:inspire]`` has to be filled in and the ``enabled`` property has to be set to ``true``.

For full functionality and configuration options, please consult the `documentation`_ on the pycsw website.

Metadata Creation
=================

Using European Open Source Metadata Editor (EUOSME)
---------------------------------------------------

Metadata files for a spatial dataset or a spatial web service can be created through the open source implementation of inspire directive for metadata, European Open Source Metadata Editor (EUOSME). This application can be found at ``http://inspire-geoportal.ec.europa.eu/editor/``. Source code is available at ``https://joinup.ec.europa.eu/svn/euosme/trunk``

.. image:: ../../images/screenshots/1024x768/pycsw_euosme_homepage.png
  :scale: 75 %

The user fills the mandatory metadata fields going through the application tabs, adding information like the name of the data owner, keywords, resource location on the web, geographic location (using a bounding box or the name of a country) etc. 

.. image:: ../../images/screenshots/1024x768/pycsw_euosme_metadata_input.png
  :scale: 75 % 

.. image:: ../../images/screenshots/1024x768/pycsw_euosme_metadata_bbox.png
  :scale: 75 %

After the user has added all the information available, must push the validation button on top of the page, so that a check to be performed for consistency with the INSPIRE directive. 

.. image:: ../../images/screenshots/1024x768/pycsw_euosme_save_metadata.png
  :scale: 75 %

After a sucessful validation, the XML file can be saved to the local disk and viewed through a text editor or a browser.

.. image:: ../../images/screenshots/1024x768/pycsw_euosme_xml.png
  :scale: 75 %

Using GIMED
-----------

:ref:`GIMED <gimed>` is a Free Software for creating and editing INSPIRE compliant metadata XML files.
To install the application, use the following commands from a terminal:

.. code-block:: bash

  $ wget http://downloads.sourceforge.net/project/gimed/GIMED_v1.3.0.tar.gz
  $ tar zxvf GIMED_v1.3.0.tar.gz
  $ mono ./GIMED_v1.3.0/bin/GIMED.exe

The user can follow the same workflow as in EUOSME to add and edit metadata, without the need for an internet connection.

.. image:: ../../images/screenshots/1024x768/pycsw_gimed.png
  :scale: 75 %


Loading Metadata
================

Metadata Repository Setup
-------------------------

pycsw supports the following databases:

- SQLite3
- PostgreSQL
- MySQL

In OSGeo Live, a simple SQLite setup has been implemented. The database can be found in ``/var/www/pycsw/data/cite``

In case of a new db, the setup process is:

.. code-block:: bash

  $ cd /path/to/pycsw
  $ export PYTHONPATH=`pwd`
  $ python ./sbin/setup_db.py sqlite:////path/to/records.db

Importing Metadata
------------------

.. code-block:: bash

  $ cd /path/to/pycsw
  $ export PYTHONPATH=`pwd`
  $ python ./sbin/load_records.py /path/to/records sqlite:////path/to/records.db

This will import all ``*.xml`` records from ``/path/to/records`` into ``records.db`` and configure the repository to expose queryables as per Table 53 of OGC:CSW.

.. image:: ../../images/screenshots/1024x768/pycsw_import_metadata.png
  :scale: 75 %

QGIS CSW Client Installation
============================

The HTTP request/responce mechanism is not friendly enough to the end user in order to perform queries to the Catalogue Service.
For this reason, there are several CSW Clients in the form of web applications like the `INSPIRE Geoportal <http://inspire-geoportal.ec.europa.eu/discovery/discovery/>`_ or :doc:`GeoNetwork <../overview/geonetwork_overview>`.
For this tutorial, we will use the :doc:`QGIS <../overview/qgis_overview>` `OGC Catalogue Service Client <https://sourceforge.net/apps/trac/qgiscommunitypl/wiki/qgcsw>`_ plugin.

To install the plugin:

.. code-block:: bash

  $ cd ~
  $ cd .qgis/python/plugins
  $ svn co https://qgiscommunitypl.svn.sourceforge.net/svnroot/qgiscommunitypl/python/plugins/qgcsw qgcsw

Data Discovery
==============

QGIS CSW Plugin
---------------

Start QGIS from the Desktop GIS group and go to Manage Plugins 

.. image:: ../../images/screenshots/1024x768/pycsw_qgis_plugin.png
  :scale: 75 %

Enable the CSW plugin from the list

.. image:: ../../images/screenshots/1024x768/pycsw_qgis_plugin_enable.png
  :scale: 75 %

Then select the CSW button from the toolbar and launch CSW Client

.. image:: ../../images/screenshots/1024x768/pycsw_qgis_csw_plugin_open.png
  :scale: 75 %

Add the pycsw server by pressing the "New" button and type in ``http://localhost/pycsw/csw.py``

.. image:: ../../images/screenshots/1024x768/pycsw_qgis_csw_plugin_add_server.png
  :scale: 75 %

The user can add some default servers using the "Add default servers" button and also get the capabilities of the server using "Server info" button

.. image:: ../../images/screenshots/1024x768/pycsw_qgis_csw_plugin_server_info.png
  :scale: 75 %

Perform search using the catalogue, either by a string value or with a bounding box

.. image:: ../../images/screenshots/1024x768/pycsw_qgis_csw_plugin_search.png
  :scale: 75 %

Tester Application
------------------

Discovery of data can be also performed through the Tester application by setting the appropriate requests eg. any text search with the string "imagery" leads to discovering the xml data created previously by EUOSME

.. image:: ../../images/screenshots/1024x768/pycsw_tester_discovery.png
  :scale: 75 %

For more information on pycsw, please consult the `documentation`_ on the pycsw website.

.. _`Python`: http://www.python.org/
.. _`OpenGIS Catalogue Service Implementation Specification`: http://www.opengeospatial.org/standards/cat
.. _`2011`: http://www.kralidis.ca/blog/2011/02/04/help-wanted-baking-a-csw-server-in-python/
.. _`Open Source`: http://www.opensource.org/
.. _`documentation`: http://pycsw.org/docs/documentation.html
.. _`lxml`: http://lxml.de/
.. _`SQLAlchemy`: http://www.sqlalchemy.org/
.. _`Shapely`: http://trac.gispython.org/lab/wiki/Shapely
.. _`pyproj`: http://code.google.com/p/pyproj/
.. _`pycsw`: http://pycsw.org/download.html
.. _`gimed`: http://sourceforge.net/projects/gimed/

