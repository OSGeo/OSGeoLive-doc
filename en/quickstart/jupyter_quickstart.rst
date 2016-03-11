:Author: Massimo Di Stefano
:Contact: epiesasha at me dot com
:Version: osgeo-live9.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-jupyter.png
  :scale: 30 %
  :alt: project logo
  :align: center
  :target: http://jupyter.org/

********************************************************************************
Getting Started with Jupyter Notebook
********************************************************************************

The Jupyter Notebook is a web application that allows you to create and share documents that contain live code, equations, visualizations and explanatory text. Uses include: data cleaning and transformation, numerical simulation, statistical modeling, machine learning and much more.


This Quick Start describes how to:

  * start a jupyter notebook server
  * load a jupyter notebook
  * interact with python code and javascript widgets

Starting jupyter notebook
================================================================================

From the application launch menu in the lower left corner.
 
* Choose  *Geospatial* -> *Spatial Tools* -> *Start Jupyter Notebook*

  .. image:: ../../images/screenshots/1024x768/jupyter1-1.png
     :scale: 100 %
     :align: center
  
A terminal window will open and a startup log will begin to scroll.
Next

* Choose   *Geospatial* -> *Spatial Tools* -> *Jupyter Notebook * 


  .. image:: ../../images/screenshots/1024x768/jupyter1-2.png
     :scale: 60 %
     :align: center

A web browser is automatically launched pointing to the localhost URL at
the Jupyter notebook port number (you should see the Notebook main page).


  .. image:: ../../images/screenshots/1024x768/jupyter1-3.png
     :scale: 60 %
     :align: center
	 
	 
	
From the main page (notebook dashboard) is possible to navigate the directory tree (starting point is the notebook root directory, which is set in the notebook configuration) or start nerw notebooks, create files and directory, as well as rename, delete and upload files.

From the main page click on the directory "Educational material - GSoC-2015", an introductive notebok will be rendered listing some of the notebooks avalialble
 
  .. image:: ../../images/screenshots/1024x768/jupyter3.png
     :scale: 60 %
     :align: center


From the introductive notebook you can explore some of the topic, as example, scroll down to the "Simple-web-gis-products" click on "CESIUM", a new notebook will be opened in a new tab (Fig. 4)

  .. image:: ../../images/screenshots/1024x768/jupyter4.png
     :scale: 60 %
     :align: center

	 
	 
Here there are a series of example using the cesium js library, click on "CesiumWidget Interact-Example", a new notebook whch make wide use of the  widget extension, some python libraries and cesium-js will be rendered.

From the toolbar on top of the notebook chose: cell->run all. If everything worked as planned ... you shoul be able to see the results at the bottom of the page (Fig 5)

  .. image:: ../../images/screenshots/1024x768/jupyter5.png
     :scale: 60 %
     :align: center


Now Interact with the code:

In the code cell ``in [8]`` we generated a python dictionary based on some keywords (location names) with empty values:

.. code-block:: center

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

and re run ``In [9] [10] [11]`` you will see the newly crerated dictionary is now used in the drop down menu to select the new location and zoom-to withing the Cesium globe.

For more information about the jupyter notebook, please refer to the `jupyter official documentation`_.
More notebook examples are available from the notebook root directory.
For a quick introduction on how to use the jupyter-notebook interface, from the start page, check the notebook: "Introduction to jupyter notebook"


.. _jupyter official documentation: http://jupyter.readthedocs.org/en/latest/index.html
