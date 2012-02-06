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
* perform a  fresh installation of pycsw,
* test pycsw installation through the tester application,
* edit pycsw's Capabilities document and display this information in a browser
* create ISO 19139 XML metadata records (through INSPIRE Metadata Editor or GIMED)
* load the created XML metadata files in pycsw database
* install QGIS CSW Client plugin
* perform discovery of data through the pycsw Catalogue Service within QGIS.

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

In order to install pycsw to an Ubuntu based distribution, one can use the OSGeoLive installation script located in ``pycsw/etc/dist``.

.. code-block:: bash

  # cd pycsw/etc/dist
  # sudo ./install_pycsw.sh

The script installs the dependencies (Apache, lxml, sqlalchemy, shapely) and then pycsw to ``/var/www``.

Installing on openSUSE
----------------------

In order to install the OBS package in openSUSE 12.1, one can run the following commands as user ``root``:

.. code-block:: bash

  # zypper -ar http://download.opensuse.org/repositories/Application:/Geo/openSUSE_12.1/ GEO
  # zypper -ar http://download.opensuse.org/repositories/devel:/languages:/python/openSUSE_12.1/ python
  # zypper refresh
  # zypper install pycsw

For earlier openSUSE versions change ``12.1`` with ``11.4``. For future openSUSE version use ``Factory``. Rolling version ``Tumbleweed`` is also supported.
pycsw is included in the official Application::Geo repository of OpenSUSE Build Service.

Tester Application
==================

To run the pycsw tester, use the pycsw launcher from the Web Services group, or open Firefox and navigate to http://localhost/pycsw/tester/index.html

.. image:: ../../images/screenshots/1024x768/pycsw_tester_startup.png
  :scale: 75 %

By selecting the left drop-down list, the user can see a various predefined POST requests, encoded in XML that can be sent to the pycsw server  

.. image:: ../../images/screenshots/1024x768/pycsw_tester_selection.png
  :scale: 75 %

For example, by selecting "apiso/DescribeRecord" operation, and pushing the "Send" button, a description of an ISO Application Profile record is presented on the right panel.

.. image:: ../../images/screenshots/1024x768/pycsw_tester_describe_apiso_record.png
  :scale: 75 %

By selecting "GetCapabilities-SOAP" and pushing the "Send" button, a SOAP request is sent to the server to advertise his web service capabilities

.. image:: ../../images/screenshots/1024x768/pycsw_tester_soap_capabillities.png
  :scale: 75 %

Also, the user can search for data records, performing a spatial bounding box query, by selecting "GetRecords-filter-bbox" and editing the coordinates in the xml request.

.. image:: ../../images/screenshots/1024x768/pycsw_tester_getrecords_bbox_filter.png
  :scale: 75 %

The user can go through all the available requests and perform all kinds of queries from this testing application. A more robust and graphical way to perform such queries is described in a following chapter of this tutorial

Capabilities Document and Configuration
========================================

The capabilities of the pycsw installation can be found at http://localhost/pycsw/csw.py?service=CSW&version=2.0.2&request=GetCapabilities.

.. image:: ../../images/screenshots/1024x768/pycsw_getcapabilities_response.png
  :scale: 75 %

To edit the web service metadata, included in the capabilities document, the user can modify the file "/var/www/pycsw/default.cfg" under the tag [metadata:main]. 
In case the user wants to enable the INSPIRE Discovery Service support, the metadata under the tag [metadata:inspire] have to be filled in and the "enabled" property has to be set to "true".

For full functionality and configuration options, please consult the `documentation`_ on the pycsw website.




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

