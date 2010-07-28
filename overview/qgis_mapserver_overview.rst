.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OSGeo Live
:Version: osgeo-live4.0
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _qgis_mapserver-overview:

.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    images/project_logos/<filename>

.. image:: images/project_logos/logo-qgis_mapserver.png
  :scale: 50 %
  :alt: project logo
  :align: right
  :target: http://karlinapp.ethz.ch/qgis_wms/


.. Writing Tip: Name of application

QGIS mapserver
==============

.. Writing Tip:
  Application Category Description:
  * Spatial Database
  * Web Service
  * Metadata Web Service
  * Desktop GIS
  * Browser GIS client
  * Business Intelligence
  * GIS Tools
  * ...

Web Service
~~~~~~~~~~~~~~~~

.. Writing Tip:
  Address user questions of "What does the application do?",
  "When would I use it?", "Why would I use it over other applications?",
  "How mature is the application and how widely deployed is it?".
  Don't mention licence or open source in this section.
  Target audience is a GIS practitioner or student who is new to Open Source.
  
QGIS mapserver provides a web map service (WMS) based on libraries from the Quantum GIS (QGIS) desktop application.
The close integration with QGIS means desktop maps can easily be exported to web maps by copying the QGIS project file into the server directory, and web maps look exactly the same as in the desktop.


.. Writing Tip:
  Provide a image of the application which will typically be a screen shot
  or a collage of screen shots.
  Store image in image/<application>_<name>.gif . Eg: udig_main_page.gif
  Screenshots should be captured from a 1024x768 display.
  Don't include the desktop background as this changes with each release
  and will become dated.

 image:: images/screenshots/800x600/pgadmin.gif
  :scale: 50 %
  :alt: project logo
  :align: right

Core Features
-------------

* Web Map Service (WMS) implementation
* Good integration with desktop GIS (QGIS)
* Easy to use
* Supports Styled Layer Descriptor (SLD)
* Advanced cartographic symbolisation

.. Writing Tip:
  Optional: A second screenshot can sometimes be added here
  if there is sufficient room.
  .. image:: images/screenshots/800x600/pgadmin.gif
    :scale: 50 %
    :alt: project logo
    :align: right

Implemented Standards
---------------------

.. Writing Tip: List OGC or related standards supported.

* OGC standards compliant (WMS + SLD)

Details
-------

**Website:** http://karlinapp.ethz.ch/qgis_wms/

**Licence:** GPL

**Supported Platforms:** Windows, Linux

.. Writing Tip:
  Link to jump page which lists commercial support for the application.

**Commercial Support:** http://www.sourcepole.com/

.. Writing Tip:
  Later, we may introduce a Maturity Rating, but currently the format, and
  whether we go ahead with such a rating is still under discussion.
  http://wiki.osgeo.org/wiki/Marketing_Artefacts#Maturity_Rating
