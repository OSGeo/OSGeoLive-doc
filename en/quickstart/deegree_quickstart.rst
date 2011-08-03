:Author: Johannes Küpper
:Version: OSGeo-Live DVD, Version 5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _deegree-quickstart:

.. image:: ../../images/project_logos/logo-deegree.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://deegree.org/

******************
deegree 3 Quickstart 
******************


Project description
===============

deegree is an open source project dedicated to providing geospatial components for the Java platform.

Available components are:

  * web services: WFS, WMS, WCS , CSW, WPS, SOS, WPVS
  * desktop applications: iGeoDesktop
  * web applications: iGeoPortal
  * command line tools
  * security


This quickstart describes how to...
===============

* start deegree 3
* use the deegree 3 services console
* use and configure a deegree 3 workspace
  

About deegree 3
===============

deegree 3 is the new generation of the deegree Java framework for 
geospatial applications and OGC service implementations. It can be
used for setting up web based spatial data infrastructures (SDI). 


Start deegree 3
===============

Choose "Start deegree" from the start menu.
The application will take a few moments to start up.


deegree 3 services console
===============

When you start deegree for the first time, the internet browser firefox will open.
Please wait until you can see the deegree 3 services console.
The deegree 3 services console is a web based GUI for convenient editing the configuration
files in the so-called deegree workspace. It is included in all downloadable deegree 3 setups. 
Please type in the password "deegree" (without double quotes) to get access to the console.


deegree 3 workspaces
===============

deegree 3 is based on a unified configuration concept that's shared by all deegree 3-based
applications (web services, web applications, desktop applications, command line tools).
The different configuration aspects are built on the notion of a deegree workspace --
a configuration directory with a standardised layout. 
Within the deegree 3 services console, you get an overview of the supplied, preconfigured
deegree 3 workspaces by clicking on the "workspace" (left side).
You are now in the workspace-management of deegree 3. Here you have got an overview of the
currently active workspace (it can only have one workspace to be active), other inactive
workspaces and official workspaces, which you can import (internet access required).


deegree 3 workspaces on the OSGeo-Live GIS Disc
===============

  * deegree-workspace-utah

At the start of deegree 3 the deegree-workspace-utah is activated.
The so-called Utah Demo provides an ideal entry point for creating your own web based
mapping setups with deegree. The deegree-utah-workspace includes the configuration of a
Web Map Service (WMS) and a Web Feature Service (WFS).

You have the ability to have a look on and adapt the workspace configuration by klicking
on the buttons "coverages," "feature stores", "jdbc connections", "metadata stores",
"observation stores", "processes", "remote OWS", "render styles", "web services".
If you make changes to a configuration file (e.g. to add a layer-style ar a Layers),
you must klick the "[Reload]" button in the upper left corner so that the changes
in the deegree-workspace are registered.

With the button "send request" you get to a generic client, with which you can send request
to the WFS of the utah-workspace. The response will be displayed in the XML-box below.
By clicking on the button "see layers" will open a OpenLayers client that allows you to display
the map layers of the WMS of the utah-workspace. Just click on the small plus symbol in the upper
right corner and select the desired map layers. When you are at the generic client or the
OpenLayers client you get back to the deegree 3 services console by clicking the back button in firefox.

You can find more detailed information and step-by-step tutorials for configuring the Utah Demo
at the deegree wiki page: http://wiki.deegree.org/deegreeWiki/deegree3/UtahDemo


More deegree 3 workspaces on the OSGeo-Live GIS Disc:

  * deegree-workspace-csw (Catalogue Service / wiki page: http://wiki.deegree.org/deegreeWiki/deegree3/CatalogueService)
  * deegree-workspace-wps (Web Processing Service / wiki page: http://wiki.deegree.org/deegreeWiki/deegree3/ProcessingService)
  * deegree-workspace-inspire (Inspire / wiki page: http://wiki.deegree.org/deegreeWiki/InspireNode)
  * deegree-workspace-xplan40 (XPlanung / wiki page: http://wiki.deegree.org/deegreeWiki/XplanNode) 

For further information on the deegree 3 workspaces and its configuration, please visit the deegree wiki.


What Next?
===============

This was just a small overview about the functions of deegree. Have a look
into the degree wiki, the deegree online demo and the deegree.org home, to learn
more about further services and functionalities of the deegree framework.

  * deegree wiki

    Available on: http://wiki.deegree.org

  * deegree online demo

    Available on: http://demo.deegree.org

  * deegree home
 
    Available on http://deegree.org/
