:Author: Massimo Di Stefano
:Contact: epiesasha at me dot com
:Version: osgeo-live9.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Reviewer: Cameron Shorter, Jirotech

@LOGO_jupyter@
@OSGEO_KIND_jupyter@

********************************************************************************
@NAME_jupyter@
********************************************************************************

The Jupyter Notebook is a web application that allows you to create and share documents that contain live code, equations, visualizations and explanatory text. Uses include: data cleaning and transformation, numerical simulation, statistical modeling, machine learning and much more.


This Quick Start describes how to:

  * start a jupyter notebook server
  * load a jupyter notebook
  * interact with python code and javascript widgets

.. contents:: Contents

Start the jupyter server
================================================================================

From the application launch menu in the lower left corner.
 
* Choose  *Geospatial* -> *Spatial Tools* -> *Start Jupyter Notebook*

.. image:: /images/projects/jupyter/jupyter1-1.png
   :scale: 60 %
  
A terminal window will open and a startup log will begin to scroll.

* Choose   *Geospatial* -> *Spatial Tools* -> *Jupyter Notebook* 

.. image:: /images/projects/jupyter/jupyter1-2.png
   :scale: 60 %

A web browser is launched showing the notebook dashboard.

.. image:: /images/projects/jupyter/jupyter1-3.png
   :scale: 60 %

From the notebook dashboard you can navigate the directory tree, start new notebooks, create files and directories, as well as rename, delete and upload files.

.. Cameron Comment. I suggest the first step should be to create a simple
  "Hello World" notebook from scratch. 
  Probably then extend to simple calculations. Like "print 10 + 5 = 15".

Open and execute an existing notebook
================================================================================

Let's open an existing notebook. From the main page click on the directory GSOC.

.. Cameron Comment: We are going through too many steps here to find the
  Cesium example. We should be able to select Cesium from the first TOC.

.. image:: /images/projects/jupyter/jupyter2.png
   :scale: 80 %

Choose the Introduction notebook. 
 
.. image:: /images/projects/jupyter/jupyter3.png
   :scale: 60 %

This is a simple notebook, which contains text and links, like a HTML web page.

Then under "Simple-web-gis-products" select "CESIUM".

.. image:: /images/projects/jupyter/jupyter4.png
   :scale: 60 %

.. Cameron Comments:
  * Suggest rename Interact to Interactive

Here there is a series of examples using the cesium javascript library.
Let's click on "CesiumWidget Interact-Example", which uses the widget extension, some python libraries and cesium-js.

From the toolbar on top of the notebook choose: cell->run all. If everything worked as planned you should be able to see the results at the bottom of the page.

.. image:: /images/projects/jupyter/jupyter5.png
   :scale: 60 %

Change code
================================================================================

Now let's change some of the code:

In the code cell ``in [8]`` we generated a python dictionary based on some keywords (location names) with empty values:

.. code-block:: python

    in [8]:  myplace = {'Eboli, IT':'', 'Woods Hole, MA':'', 'Durham, NH':''}

and at the code input cell ``in [9]``, we loop over the dictionary keys and making use of a geocoding library ``geocoder``, we add the location information inside the previously created python dictionary ``my place``:


.. code-block:: python

    in [9]: import geocoder
            import time
            for i in myplace.keys():
                g = geocoder.google(i)
                print(g.latlng)
                myplace[i]=g.latlng

Try to add or replace new keywords like we did in ``In [8]``

.. code-block:: python

    in []:  mynewplace = {'Cairns, AU':'', 'Cooktown, AU':'', 'Darvin, AU':''}

and re run ``In [9] [10] [11]`` you will see the newly created dictionary is now used in the drop down menu to select the new location and zoom-to within the Cesium globe.

What Next?
================================================================================

For more information about the jupyter notebook, please refer to the `jupyter official documentation`_.
More notebook examples are available from the notebook root directory.
For a quick introduction on how to use the jupyter-notebook interface, from the start page, check the notebook: "Introduction to jupyter notebook"


.. _jupyter official documentation: http://jupyter.readthedocs.org/en/latest/index.html
