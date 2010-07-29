:Author: Gérald Fenoy
:Version: osgeo-live4.0
:License: Creative Commons

.. _mapguide-overview:

.. image:: images/project_logos/logo-ZOO-Project.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://zoo-project.org/

ZOO Project
=========

ZOO Project provides an OGC WPS compliant developer-friendly framework supporting many programming languages. Two demo applications using simple spatialtools Services Providers (a C shared library and a Python module) based on the GEOS and OGR Libraries.

WPS Server
~~~~~~~~~~~

ZOO is a WPS (Web Processing Service) open source project released under a MIT/X-11 style license . It provides an OGC WPS compliant developer-friendly framework to create and chain WPS Web services. ZOO is made of three parts:
 
ZOO Kernel : A powerful server-side C Kernel which makes it possible to manage and chain Web services coded in different programming languages. 
ZOO Services : A growing suite of example Web services based on various Open Source libraries. (get inspired !) 
ZOO API : A server-side JavaScript API able to call and chain the ZOO Services, which makes the development and chaining processes easier. 

ZOO is based on a 'WPS Service Kernel' which constitutes the ZOO's core system (aka ZOO Kernel). The latter is able to load dynamic libraries and to handle them as on-demand Web services. The ZOO Kernel is written in C language, but supports several common programming languages in order to connect to numerous libraries and above all to simplify the Web service end-developer's job.

A ZOO service is a link composed of a metadata file (.zcfg) and the code for the corresponding implementation. The metadata file describes all the available functions which can be called using a WPS Exec Request, as well as the desired input/output. Services contain the algorithms and functions, and can now be implemented in C/C++, Fortran, Java, Python, PHP and JavaScript. 

Core Features
-------------

* Multi language WPS server 
* Simple Web Service creation and depoyment procedure
* Simple WPS chaining with ZOO API

Implemented Standards
---------------------

* OGC WPS 1.0.0

Demo
----

* `Demo using simple C Services Provider based GEOS and OGR libraries <http://localhost/zoo-demo/spatialtools.html>`_
* `Demo using simple Python Services Provider based GEOS and OGR libraries <http://localhost/zoo-demo/spatialtools-py.html>`_
* `Simple html form to process your request to the ZOO Kernel <http://localhost/zoo-demo/spatialtools.html>`_


Details
-------

**Website:** http://zoo-project.org/

**Licence:** MIT x/11

**Software Version:** 1.0

**Supported Platforms:** Windows, Linux, Mac

**Programing language support:** C, Python, Java, PHP, Fortran, Javascript

**Support:** http://zoo-project.org/trac
