:Author: Eric Lemoine, Bruno Binet
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _mapfish-quickstart-zh:
 
.. image:: ../../images/project_logos/logo-mapfish.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.mapfish.org


********************************************************************************
MapFish Quickstart 
********************************************************************************

MapFish is a flexible and complete framework for building rich web-mapping
applications. It emphasizes high productivity, and high-quality development. 

This Quickstart describes how to 

* run the MapFish sample application installed on this live DVD
* install MapFish, and 
* create MapFish applications.

Run the sample application
================================================================================

To run the sample application click on the MapFish link on the Desktop. This
will open a FireFox tab pointing to the application served by mod_wsgi in
apache (http://localhost/mapfishsample/osgeolive/wsgi/).

This demo application has the following features: Query, Editing, Search, and
Printing.
To see the MapFish REST protocol in action you can open the Firebug debugger 
and look at the requests/responses exchanged between the browser and the
MapFish web services.

Install MapFish
================================================================================

To install MapFish, download the installation script, and execute it from a
terminal::

    $ wget http://www.mapfish.org/downloads/go-mapfish-framework-2.2.py

    $ python go-mapfish-framework-2.2.py --no-site-packages venv

The above command creates the virtual Python environment in the ``venv``
directory, fetches MapFish and its dependencies and install them all in the
virtual environment.

You can then activate the virtual Python environment and check that MapFish
has been successfully installed::

    $ source venv/bin/activate

    (venv) $ paster create --list-templates

The above command should produce the following output::

    Available templates:
    basic_package:   A basic setuptools-enabled package
    mapfish:         MapFish application template
    mapfish_client:  MapFish client plugin template
    paste_deploy:    A web application deployed through paste.deploy
    pylons:          Pylons application template
    pylons_minimal:  Pylons minimal application template

Ok, the framework is properly installed. You can now follow the next section
to create a MapFish application using this installation.

Create a MapFish application
================================================================================

After having activated the virtual Python environment, you can generate your
first MapFish application named for exemple MyMapFishApp::

    (venv) $ paster create -t mapfish MyMapFishApp sqlalchemy=true

Then you can also install the JavaScript librairies in the application::

    (venv) $ paster create --no-interactive -t mapfish_client MyMapFishApp

The above commands should have created the MapFish application in the
``MyMapFishApp`` directory.

At this point you should be able to run the application with::

    (venv) $ cd MyMapFishApp
    (venv) $ paster serve development.ini

Open http://localhost:5000 in your browser. You should see a minimal
application that includes a map with two `OSM layers
<http://www.openstreetmap.org/>`_, a toolbar above the map, and a layer tree.

The MapFish framework offers more than that. In particular it allows easily
creating RESTful web services for creating, reading, updating and deleting
features. Please visit http://mapfish.org/doc/2.2/quickstart.html to learn
how to create such RESTful web services and http://mapfish.org to learn more
about MapFish.

