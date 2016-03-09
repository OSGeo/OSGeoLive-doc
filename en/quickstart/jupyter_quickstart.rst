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


Starting jupyter notebook
================================================================================

From the application launch menu in the lower left corner.
 
* Choose  *Geospatial* -> *Spatial Tools* -> *Start Jupyter Notebook* (fig. 1.1)
  
A terminal window will open and a startup log will begin to scroll.
Next

* Choose   *Geospatial* -> *Spatial Tools* -> *Jupyter Notebook * (fig. 1.2)

A web browser is automatically launched pointing to the localhost URL at
the Jupyter notebook port number (you should see the Notebook main page) (fig. 1.3).

  .. image:: ../../images/screenshots/1024x768/jupyter1.png
     :scale: 60 %
     :align: right

**Figure 1**	 
	 
	 
	 
	
From the main page (notebook dashboard) is possible to navigate the directory tree (starting point is the notebook root directory, which is set in the notebook configuration) or start nerw notebooks, create files and directory, as well as rename, delete and upload files.

From the main page click on the directory GSOC (Fig 2)

  .. image:: ../../images/screenshots/1024x768/jupyter2.png
     :scale: 60 %
     :align: right
**Figure 2**

and chose the Introduction notebook (Fig 3), an introductive notebok will be rendered fig4 listing some of the notebooks avalialble
 
  .. image:: ../../images/screenshots/1024x768/jupyter3.png
     :scale: 60 %
     :align: right
**Figure 3**

From the introductive notebook you can explore some of the topic, as example, scroll down to the "Simple-web-gis-products" click on "CESIUM", a new notebook will be opened in a new tab (Fig. 4)

  .. image:: ../../images/screenshots/1024x768/jupyter4.png
     :scale: 60 %
     :align: right
**Figure 4**
	 
	 
Here there are a series of example using the cesium js library, click on "CesiumWidget Interact-Example", a new notebook whch make wide use of the  widget extension, some python libraries and cesium-js will be rendered.

From the toolbar on top of the notebook chose: cell->run all. If everything worked as planned ... you shoul be able to see the results at the bottom of the page (Fig 5)

  .. image:: ../../images/screenshots/1024x768/jupyter5.png
     :scale: 60 %
     :align: right
**Figure 5**

Now Interact with the code:

In the code cell ``in [8]`` we generated a python dictionary based on some keywords (location names) with empty values:

``in [8]:  myplace = {'Eboli, IT':'', 'Woods Hole, MA':'', 'Durham, NH':''}``
``        {'Durham, NH': '', 'Eboli, IT': '', 'Woods Hole, MA': ''}``

and at the code input cell ``in [9]``, we loop over the dictionary keys and making use of a geocoding library ``geocoder``, we add the location information inside the previously created python dictionary ``my place``:

``
in [9]: import geocoder
	import time
        for i in myplace.keys():
            g = geocoder.google(i)
            print(g.latlng)
            myplace[i]=g.latlng
``
with output:
``
[41.5264977, -70.6730857]
[40.6179234, 15.0564332]
[43.1339545, -70.9264393]
``

Now try to add or replace new keywords like we did in ``In [8]``

``in []:  mynewplace = {'Cairns, AU':'', 'Cooktown, AU':'', 'Darvin, AU':''}``

and re run ``In [9] [10] [11]`` you will see the newly dictionary is now used in the brop down menu to select the new location and zoom-to withing the Cesium globe.
