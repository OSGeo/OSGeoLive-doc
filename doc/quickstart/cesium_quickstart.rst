:Author: Balasubramaniam Natarajan
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:Version: osgeolive13.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_cesium@
@OSGEO_KIND_cesium@
@VMDK_cesium@



********************************************************************************
@NAME_cesium@ Quickstart
********************************************************************************
Cesium is a JavaScript library for creating 3D globes and 2D maps in a web browser without any plugins. It uses WebGL for hardware-accelerated graphics, and is cross-platform, cross-browser, and tuned for time-dynamic data visualization.

This guide shows how to use the Cesium with the 3D (Globe), 2.5D (Columbus View) and 2D (map).

.. contents:: Contents
   :local:

Start Cesium 
============

Open the browser and point it to http://localhost/cesium/Apps/HelloWorld.html

Search for a location
=====================
Click on the magnifying glass and type in the location you are looking for. In the following display, we look for India.

.. image:: /images/projects/cesium/cesium_1_SearchingLocation.png
  :scale: 70 %
  :alt: Cesium Searching Location

Switch between 3D, 2.5D and 2D
==============================
Click on the wire framed globe icon to select your preferred view.  Here the 2.5D Columbus view has been selected.

.. image:: /images/projects/cesium/cesium_2_2253d.png
  :scale: 70 %
  :alt: Cesium switching between 3D, 2.5D and 2D

Now the 2D map is selected.

.. image:: /images/projects/cesium/cesium_3_2D.png
  :scale: 70 %
  :alt: Cesium 2D map

Select the Image layer
======================
Click on the last icon and select a type of image service.  Here the Natural Earth II is selected and you can see how the map's image layer has changed.

.. image:: /images/projects/cesium/cesium_4_Layer.png
  :scale: 70 %
  :alt: Cesium 2D map

.. TBD: There is room here for a couple more examples.

What next?
==========
* Watch our `video tutorials <https://www.youtube.com/playlist?list=PLBk_Dtk-_Tlm4STvXKFEdfUWylPemo-9V>`_.

* Read our written `tutorials <https://cesium.com/docs>`_.

* You can develop some quick applications using the `Sandcastle website <https://sandcastle.cesium.com/index.html>`_. Sandcastle is generally one of the best ways to learn about Cesium, and all the code examples are useful for this purpose.

* The `Cesium Forum <https://community.cesium.com`_ is a great place to search for answers to common questions, and to raise questions that haven't been asked before.

* In-depth documentation is available `locally <http://localhost/cesium/>`_ on the OSGeoLive package.
