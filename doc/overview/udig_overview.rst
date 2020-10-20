:Author: OSGeoLive
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeolive5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)


@LOGO_udig@
@OSGEO_KIND_udig@


@NAME_udig@
================================================================================

Desktop GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


User-friendly Desktop Internet GIS (uDig) is an open source spatial data viewer/editor, with special emphasis on the OpenGIS standards for internet GIS, the Web Map Server (WMS) and Web Feature Server (WFS) standards.

uDig is:

* **User-friendly**, providing a familiar graphical environment for GIS users;
* **Desktop located**, running natively on Windows, Mac OS/X and Linux;
* **Internet oriented**, consuming standard and de facto geospatial web services; and,
* **GIS ready**, providing the framework on which complex analytical capabilities can be built, and gradually subsuming those capabilities into the main application.

For developers uDig provides a common Java platform for building spatial applications with open source components. The website provides series of clear tutorials covering making a simple tool through to releasing your own custom application.

@SCREENSHOT_udig@

Core Features
--------------------------------------------------------------------------------

* Desktop Client with Drag and Drop integration for File explorer and Web Browser
* Integrate with your existing infrastructure: ArcSDE, Oracle, DB2 and more
* Work with local files: Shapefile, jpeg, png, tiff and more.
* Work with advanced spatial raster formats: ECW, MrSID, JPEG 2000
* Support for compliant Web Map Servers (:doc:`GeoServer <geoserver_overview>`, MapServer tested)
* Integrated Web experience with an embedded browser that recognises OGC web
  services and smoothly adds links to the onscreen map
* Style Layer Descriptor control of rendering allowing you to publish your Map using the same
  settings in uDig as with popular Web Map Servers
* Deep integration of standards allowing the application to swap between the appropriate service
  as required for display, interaction and editing
* Printing and PDF Generation
* For Developers

  * Java Application built using the :doc:`GeoTools <geotools_overview>`, `JTS Topology Suite (JTS) <https://sourceforge.net/projects/jts-topo-suite/>`_
  * Industrial strength plug-in system provided by Eclipse Rich Client Platform
  * Use of native widgets

Implemented Standards
--------------------------------------------------------------------------------

* OGC Web Map Server (WMS)
* OGC Web Feature Server (WFS)
* OGC Web Feature Server Transactional (WFS-T)
* OGC Simple Features for SQL (SFQL)
* Web Map Server Cache (WMS-C)
* OGC Style Layer Descriptor (SLD)

Details
--------------------------------------------------------------------------------

**Website:** @WEB_udig@

**Licence:** Dual BSD / EPL (Eclipse Foundation)

**Software Version:** |version-udig|

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** GeoTools, ImageIO-Ext, Java Advanced Imaging, Eclipse Rich Client Platform, Eclipse Modelling Framework

**Support:** http://udig.refractions.net/users/

**Developers:** http://udig.refractions.net/developers/


@VMDK_udig@
@QUICKSTART_udig@

.. presentation-note
    uDig is a java-based spatial data viewer and editor, which is based upon the geotools library and powerful Eclipse development environment, making uDig a common choice for developers wishing to integrate mapping into java based applications.

