:Author: Gérald Fenoy
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live7.9
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/zoo-simple.png
  :alt: project logo
  :align: right
  :target: http://zoo-project.org/

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100
  :alt: OSGeo Incubation Project
  :align: right
  :target: http://www.osgeo.org

ZOO-Project
================================================================================

WPS Server
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

ZOO-Project provides a developer friendly Web Processing Service (WPS) framework for creating and chaining Web Processing Services.
A WPS provides web access to functions which run spatial algorithms.
ZOO-Project supports many programming languages and comes with three demo applications. The first uses the simple
spatialtools services based on the :doc:`GEOS <geos_overview>` and :doc:`OGR <gdal_overview>` libraries, the second showcase Voronoi and Delaunay triangulation (from the CGAL library) and the third present how to interract with OTB applications runninng as WPS services.

The three demontration applications are available from the ZOO-Project demo landing page presented bellow.

ZOO is made of three parts:

.. image:: ../../images/screenshots/1024x768/zoo-demo-2.png
  :scale: 40 %
  :alt: screenshot
  :align: right

*ZOO Kernel* : A powerful server-side C Kernel which makes it possible to
manage and chain Web services coded in different programming languages. 

*ZOO Services* : A growing suite of example Web services based on various
Open Source libraries.

*ZOO API* : A server-side JavaScript API able to call and chain the ZOO
Services, which makes the development and chaining processes easier. 

ZOO is based on a 'WPS Service Kernel' which constitutes the ZOO's core
system (aka ZOO Kernel). The latter is able to load dynamic libraries and
to handle them as on-demand Web services. The ZOO Kernel is written in C
language, but supports several common programming languages in order to
connect to numerous libraries and above all to simplify the Web service
end-developer's job.

A ZOO service is a link composed of a metadata file (.zcfg) and the code
for the corresponding implementation. The metadata file describes all the
available functions which can be called using a WPS Exec Request, as well
as the desired input/output. Services contain the algorithms and
functions, and can now be implemented in C/C++, Fortran, Java, Python, PHP, Ruby, C#
and JavaScript. 

Core Features
--------------------------------------------------------------------------------

* Multi language WPS server 
* Simple Web Service creation and deployment procedure
* Simple WPS chaining with ZOO API

Implemented Standards
--------------------------------------------------------------------------------

* OGC WPS 1.0.0
* OGC WPS 2.0.0

Demo
--------------------------------------------------------------------------------

* `Demo using Services Provider based GEOS and OGR libraries <http://localhost/zoo-demo/ogr-example.html>`_
* `Demo using Services Provider based CGAL library <http://localhost/zoo-demo/cgal.html>`_
* `Demo using OTB Applications as WPS Services <http://localhost/zoo-demo/otb-example.html>`_


Details
--------------------------------------------------------------------------------

**Website:** http://zoo-project.org

**Licence:** MIT x/11

**Software Version:** |version-zoo-project|

**Supported Platforms:** Windows, Linux, Mac

**Programing language support:** C, Python, Java, PHP, Fortran, Javascript, C#, Ruby

**Support:** http://zoo-project.org/


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/zoo-project_quickstart>`


