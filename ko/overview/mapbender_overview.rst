:Author: Astrid Emde
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-Mapbender.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.mapbender.org

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 90 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


Mapbender
================================================================================

Geoportal Framework
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Mapbender <http://www.mapbender.org>`_ is a graduated OSGeo project. It is a web based geoportal framework to publish, register, view, navigate, monitor and grant secure access to spatial data infrastructure services.

Mapbender is the tip of the iceberg, a meta layer of software providing access to SDI components adhering to international standards. Mapbender allows users to easily create customised browser clients from a wide range of widgets (without any/with minimal) programming required. Widgets integrate with server functionality to provide advanced functionality like security proxying, digitizing, auto snapping and more.

Mapbender management applications are straight forward and easy to use providing highly focused functionality for the operation of large scale distributed SDI components. It is the tool of choice for SDI administrators who need to maintain, categorize and monitor map and feature services. Mapbender grants access to individuals, groups and manages machine to machine access. Adherence to standardized services, such as OGC WMS and transactional WFS allows to take advantage of interoperable services from a multitude of server platforms.

The Mapbender client side is based on HTML and JavaScript using the jQuery and jQuery UI libraries which provide lots of browser widgets. The server side is implemented in PHP and PostgreSQL/PostGIS. 

Mapbender gives a whole new perspective to SDI management using nothing but a standard web browser. 

.. image:: ../../images/screenshots/800x600/mapbender_demo.png
  :scale: 50%
  :alt: Mapbender application
  :align: right


Core Features
--------------------------------------------------------------------------------

* Easily create web mapping interfaces using template applications  

  * add/remove/customize jQuery widgets 
  * customize styling with the jQuery UI Themeroller) 
* Upload and share remote OGC WMS (Capabilities caching) 

  * arrange uploaded WMS for overlay
  * editing layer visibility
  * order
  * format
  * caption edit 
  * extend service meta data (ISO profile) based on Capabilities document for catalog with CS-W interface
* Upload and configure WFS to search, find and highlight geo objects 
* Bind transactional WFS with WMS to enable online digitizing (with cross service snapping functionality, geometry manipulation like splitting, combining, cloning)
* Create users and groups, share and grant access to services and modules
* WMC handling
* Connect remote catalogs, and optionally connect to GeoNetwork opensource
* Restrict user access with the OWS security proxy module via trusted servers
* Encrypted protocols monitoring and status notification and auto-update service for remote OGC services 
* Deploy OpenLayers clients from the Mapbender service repository
* Print high-quality maps using your own PDF templates.
* ... and more!

Implemented Standards
--------------------------------------------------------------------------------

* OGC Web Map Service (WMS) 1.0.0, 1.1.0, 1.1.1, 1.3.0
* OGC Web Feature Service (WFS) 1.0.0, 1.1.0
* OGC Web Map Context (WMC) 1.1.0 

Details
--------------------------------------------------------------------------------

**Website:** http://www.mapbender.org/ 

**Licence:** Mapbender is dual licensed under the GNU General Public License and Simplified BSD license
  * http://svn.osgeo.org/mapbender/trunk/mapbender/license/gpl.txt  
  * http://svn.osgeo.org/mapbender/trunk/mapbender/license/simplified_bsd.txt

**Software Version:** 2.7.3

**Supported Platforms:** Windows, Linux, Mac

**Support:** http://www.mapbender.org/Support


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/mapbender_quickstart>`


