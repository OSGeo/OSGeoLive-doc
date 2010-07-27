:Author: Johannes Wilden
:Version: osgeo-live4.0
:License: Creative Commons
:Thanks: geotools-user list

.. _deegree-quickstart:

******************
deegree Quickstart 
******************

.. Writing Tip:
  First sentence defines what the application does.
  You may also need to include a sentence of two describing the domain.
  Eg: For a Business Intelligence applicaiton, you should describe what
  Business Intelligence is.

deegree is a Java framework which can be used for setting up web based spatial
data infrastructures. 

This Quick Start describes how to:

  * use the iGeoportal Client
  * send some example requests to our Services

Start deegree
=============

#. Choose deegree start from the start menu
#. The application will take a few moments to start up

Welcome View
============

#. When you start up deegree for the first time the Welcome view takes up the entire display. This screen
   has links to tutorials, documentation and the project website.

You can return to the Welcome view at any time by clicking on "`Start page`" in
the menu on the left side.

Services
========

By clicking on "`Services`" in the menu bar on the left side of the welcome
view, a new view will be opened. In the menu bar on the left, you can choose
between "`WMS example requests & clients`", "`WFS example requests & client`"
and "`WCS example requests & client`".

Client(iGeoPortal) 
==================

Starting with the deegree welcome view, choose "`Client (iGeoPortal)`" from the
menu bar. The next window shows an overview of deegree iGeoPortal. Click on
"Utah" in the "`deegree iGeoPortal WebMapContexts`" menu on the left side. Now
iGeoPortal with the "Utah" WebMapContexts will be loaded. On the right side of
the map window, there is a LayerListView, where different layers can be switched
on and off. To see activated layers, you have to refresh the map window with the
"`refresh`" button above the map. It is the leftmost one. A menu bar containing
tools for navigating in the map can be found above the map window. Click on the
magnifier with the "+" Button and click into the map window, to zoom in. You can
either use the "hand" Button, to move the map extent.


Web Map Service
===============

Starting on the "`Services`" page mentioned above, you can access the deegree Web
Map Service example requests and clients. Choose the "`Basic WMS requests`" to
have a look at the basic requests of the deegree WMS and its responses. 
Clicking on "Generic Client" on the left side starts the deegree Generic OGC
WebService Client to send POST requests to the WMS.  Choose WMS from the Service
drop down menu and push the "Send" Button on the right side. The Response might
be a picture showing the citelayers below the xml field.

Web Feature Service
====================

Starting on the "`Services`" page mentioned above, you can access the deegree
Web Feature Service example requests and clients. Choose the "`Basic WFS
requests`" to have a look at the basic requests of the deegree WFS and its
responses. Clicking on "`Generic Client`" on the left side starts the deegree
Generic OGC WebService Client to send POST requests to the WFS. Chose utah from
the examples drop down menu and Springs_code5.xml from the Request drop down
menu. Then push the "Send" button on the right side and ahve a look at the
response below. 

Web Coverage Service
====================

Starting on the "`Services`" page mentioned above, you can access the deegree Web
Feature Service example requests and clients. Choose the "Basic WFS requests" to
have a look at the basic requests of the deegree WFS and its responses.

What Next?
==========

This was just a small overview about deegree services and clients. Have a look
into the degree wiki, the deegree online demo and the deegree.org home, to learn
more about further services and functionalities of the deegree framework.

* deegree wiki

  Available on: http://wiki.deegree.org

* deegree online demo

  Available on: http://demo.deegree.org

* deegree home

  Available on http://deegree.org/
