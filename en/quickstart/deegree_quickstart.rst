:Author: Johannes Küpper
:Version: OSGeo-Live DVD, Version 5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-deegree.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://deegree.org/

********************************************************************************
deegree 3 webservices quickstart 
********************************************************************************

Project description
================================================================================

deegree is open source software for spatial data infrastructures and the geospatial web. deegree includes components for geospatial data management, including data access, visualization, discovery and security. Open standards are at the heart of deegree. The software is built on the standards of the Open Geospatial Consortium (OGC) and the ISO Technical Committee 211.

This Quick Start describes how to:
   * start deegree 3 webservices on the Live DVD
   * use the deegree 3 services console to activate example configurations
   * find more information


Start deegree webservices
================================================================================

Choose "Start deegree" from the start menu.
The application will take a few moments to start up.


deegree services console
================================================================================

When you start deegree for the first time, firefox should open (otherwise open it manually and point your browser to http://localhost:8033). Please wait until you can see the deegree 3 services console. This is a simple web-based GUI for editing the configuration files of the so-called deegree workspace.


deegree webservices example workspaces
================================================================================

deegree 3 is based on a unified configuration concept that's shared by all deegree 3-based applications (web services, web applications, desktop applications, command line tools). The different configuration aspects are built on the notion of a deegree workspace -- a configuration directory with a standardised layout. Within the deegree 3 services console, you get an overview of the supplied, or available preconfigured deegree 3 workspaces by clicking on the "workspaces" link (left side).

You are now in the workspace-management of the services console. At the top, the currently active workspace is displayed (a single workspace is active at any given time). The workspace view displays inactive local workspaces and official workspaces, which you can import (internet access required).

The Live DVD ships with an example INSPIRE workspace (pre-configured View and Download Service). Things to try:

 * Start the INSPIRE workspace. In the "workspaces" view, click on "Start" right to "deegree-workspace-inspire-3.2-pre9". (this will take a while as several dozens of megabytes of rich INSPIRE GML are loaded)
 * Click on "see layers" -> click the "+" and activate the AdministrativeUnit layer. This layer is rendered straight from the rich INSPIRE data model and served using the configured deegree INSPIRE View Service.
 * Go back to the console and click "send requests". A simple interface for sending raw WFS requests will open up. It contains several examples (including transactions for inserting valid INSPIRE GML).
 * If you want to learn more (e.g. configuring SQL backends / relational mapping), please refer to the official handbook (see below).

Alternatively, you may want to download other example workspace to get and idea of what else deegree webservices can do for you:

  * deegree utahDemo: A web mapping setup (WFS/WMS/WMTS) based on data from Utah (warning: about 100 MB download)
  * deegree CSW demo: A catalogue service setup that is compliant to the ISO Application Profile and the INSPIRE Discovery Service specification
  * deegree WPS demo: A processing service setup with some simple example processes

For further information on these example workspaces, please refer to the official deegree webservices documentation (see below).

NOTE: Unfortunately, the INSPIRE configuration included on the Live DVD is missing the configuration of the Address and CadastralParcels layer. You may download a fixed version or get support from the deegree community to learn how to fix it (http://www.deegree.org/Community).

What Next?
================================================================================

In order to learn more about the configuration of deegree webservices, please refer to: http://www.deegree.org/Documentation. It's still work in progress. Contributions, comments and funding is welcome.