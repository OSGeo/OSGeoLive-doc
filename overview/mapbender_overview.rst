:Author: Astrid Emde
:Version: osgeo-live4.0
:License: Creative Commons

.. _mapbender-overview:

.. image:: images/project_logos/logo-Mapbender.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.mapbender.org

.. image:: images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


Mapbender
=======

About
~~~~~

Mapbender is the tip of the iceberg, a meta layer of software providing access to the OSGeo SDI stack.


The end-user interfaces are highly focused, only showing the required functionality, making is easy to use. At the same time, it is possible to create full-fledged interfaces with security proxying, digitizing, auto snapping and more.


Management interfaces empower administrators who need to maintain and categorize map and feature services and grant access to individuals, groups and other services. Adherence to standardized services, such as OGC Web Map Services (WMS) and transactional OGC Web Feature Services (WFS), allows them to take advantage of interoperable services from various server platforms.

.. image:: images/screenshots/800x600/mapbender_gui_digitize.png
  :scale: 50%
  :alt: Mapbender application
  :align: right

The Mapbender client side is based on HTML, JavaScript (jQuery and jQuery UI), the server side relies on PHP and PostgreSQL/PostGIS. 


Core Features
-------------

* Easily create web mapping interfaces using template applications  

  * add/remove/customize jQuery widgets 
  * customize styling with the jQuery UI Themeroller) 
* upload and share remote OGC WMS (Capabilities caching) 

  * arrange uploaded WMS for overlay
  * editing layer visibility
  * order
  * format
  * caption edit 
  * extend service meta data (ISO profile) based on Capabilities document for catalog with CS-W interface
* upload and configure WFS to search, find and highlight geo objects 
* bind transactional WFS with WMS to enable online digitizing (with cross service snapping functionality, geometry manipulation like splitting, combining, cloning)
* create users and groups, share and grant access to services and modules
* WMC handling
* connect remote catalogs, and optionally connect to GeoNetwork opensource
* restrict user access with the OWS security proxy module via trusted servers
* encrypted protocols monitoring and status notification and auto-update service for remote OGC services 
* deploy OpenLayers clients from the Mapbender service repository
* print high-quality maps using your own PDF templates.
* ... and more!

Implemented Standards
---------------------

* OGC Web Map Service (WMS) 1.0.0, 1.1.0, 1.1.1
* OGC Web Feature Service (WFS) 1.0.0, 1.1.0
* OGC Web Map Context (WMC) 1.1.0 

Details
-------

**Website:** http://www.mapbender.org/ 

**Licence:** Mapbender is dual licensed under the GNU General Public License and Simplified BSD license
  * http://svn.osgeo.org/mapbender/trunk/mapbender/license/gpl.txt  
  * http://svn.osgeo.org/mapbender/trunk/mapbender/license/simplified_bsd.txt

**Software Version:** 2.6.2, 2.7 coming soon

**Supported Platforms:** Windows, Linux, Mac

**Support:** http://www.mapbender.org/Support
