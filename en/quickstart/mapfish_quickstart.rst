:Author: Eric Lemoine
:Version: osgeo-live4.0
:License: GPLv3 ?

.. _mapfish-quickstart:
 
.. image:: ../../images/project_logos/logo-mapfish.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.mapfish.org


********************
MapFish Quickstart 
********************

MapFish is a flexible and complete framework for building rich web-mapping
applications. It emphasizes high productivity, and high-quality development. 

This Quickstart describes how to (a) run the minimal MapFish application
installed on this live DVD, (b) create MapFish applications, and (b) install
MapFish.

Run the minimal application
===========================

To run the minimal application click on the MapFish link on the Desktop. This
will start the server and open a FireFox tab pointing to the application
(http://localhost:5000).

The minimal application includes a map with two `OSM
<http://www.openstreetmap.org>`_ layers, a toolbar above the map, and a layer
tree.

Create a MapFish application
============================

The MapFish framework is installed on the live DVD in the virtual Python
environment located in the ``/usr/lib/mapfish/mapfish-venv`` directory. We
will use this installation of the framework here.</p>

A MapFish application is created in three commands (from a terminal):

* activate the virtual Python environment::

    $ source /usr/lib/mapfish/mapfish-venv/bin/activate

* create the application::

    $ paster create -t mapfish MyMapFishApp sqlalchemy=true

* install the JavaScript librairies in the application::

    $ paster create -t mapfish_client MyMapFishApp

The above commands should have created the MapFish application in the
``MyMapFishApp`` directory.

.. note::

    if the sample application (from the `Run the minimal application`_ section)
    is running then port 5000 is already used, and you'll have to edit the
    ``MyMapFishApp/development.ini`` file and change the port number from 5000
    to for example 5001.

At this point you should be able to run the application with::

    $ cd MyMapFishApp
    $ paster serve development.ini

Open http://localhost:5000 (or http://localhost:5001) in your browser. You
should see the same minimal application as that presented in the previous
section.

The MapFish framework offers more than that. In particular it allows easily
creating RESTful web services for creating, reading, updating and deleting
features. Please visit http://www.mapfish.org to learn more about
MapFish.

Install MapFish
===============

As indicated in the previous section the MapFish
framework is installed on the Live DVD in the  the virtual Python environment
located in the ``/usr/lib/mapfish/mapfish-venv`` directory. Yet, keep
reading if you want to know how to install MapFish in a fresh, clean virtual
environment.

Installing the MapFish framework is done with one command line::

    $ go-mapfish-framework-all.py --python=python2.5 venv

The above command creates the virtual Python environment in the
``venv`` directory, fetches MapFish and its dependencies and install
them all in the virtual environment.

Ok, the framework is installed, you can go back to `Create a MapFish
application`_ section to create a MapFish application using this installation.

