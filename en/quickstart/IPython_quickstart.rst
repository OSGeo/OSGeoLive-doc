:Author: darkblueb
:Contact: darkblueb @ osgeo
:Version: osgeo-live8.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-ipython.png
  :scale: 100 %
  :alt: project logo
  :align: center
  :target: http://ipython.org/

********************************************************************************
Getting Started with IPython Notebook
********************************************************************************

The IPython Notebook is a web-based graphical interface to Notebook documents.
This Quick Start describes how to:

  * start the IPython Notebook
  * load sample data from a netCDF file
  * draw the data into a map, using various projections


Starting IPython
================================================================================

Let's look at two ways to use IPython Notebook: local (the default); and
remote using a web browser on another computer. The second option is
useful when running **OSGeo Live** in a Virtual Machine (VM).

Local IPython Notebook
---------------------------------------------------------------------------------

Use the application launch menu in the lower left corner.
 
* Choose  *Geospatial* -> *Spatial Tools* -> *Start IPython Notebook*
  
A terminal window will open and a startup log will begin to scroll.
Next

* Choose   *Geospatial* -> *Spatial Tools* -> *IPython Notebook*

A web browser is automatically launched pointing to the localhost URL at
the IPython port number (you should see the Notebook main page).
When IPython is launched, the current directory is read for Notebooks.
Any sub-directory is shown in the listing ("*tree*"). The user can 
navigate up and down the tree by clicking on a directory, or open a Notebook
listed by clicking on it. On the computer, Notebook files are just a single text 
file ending in suffix .ipynb, and are displayed by their filename. 
Renaming a Notebook simply changes the filename. Creating a new directory will automatically become visible in the IPython Notebook tree browser.

 
Remote IPython Notebook
---------------------------------------------------------------------------------

* open a terminal window by clicking on the green terminal icon
* execute `ipython notebook ---ip=* ---matplotlib=inline ---no-browser --port=8883`
* determine the IP address of your computer or VM, for example using: 
  *ifconfig -a | grep 192*
  
Use a web browser from another computer and enter the IP address from above, 
along with the IPython Notebook port ':8888'. e.g.  192.168.1.13:8883

Note: the default http port number for IPython Notebook is 8888. On the 
OSGeo-Live the Notebook port is set to 8883 to prevent address conflicts
with other web applications that use this common number. 


Using the IPython Notebook
================================================================================

With the IPython Notebook main page open, you should see the directory tree browser interface, including a directory called ``OSGeo-live``, and a Notebook called ``cartopy-simple.ipynb``.
Click on the link titled ``cartopy_simple.ipynb``. A new tab should open in the 
web browser, showing the Notebook interface. Try moving the mouse over 
each button in the toolbar and hold it there, to see the tooltip titles. Also
take a moment to click on the menus to begin to become familiar with their contents.


Take particular note of the **Help** menu. You can try the clever User Interface Tour and open the Keyboard Shortcuts
cheatsheet, however you will need an active Internet connection to use the other Help topics.

The Notebook interface is a list of *cells*. Each cell has a type, for
example a heading or python code, and consists of one or more lines of text, code, inline image tags or other script. Any cell of type code can be executed by making it *active* and then clicking on the *run* button, or using the Run keyboard shortcut Shift-Return.

Try clicking on the first code cell, which includes **Import numpy as np**
and executing it. You should see no error messages, and the next cell downwards
becomes active. 

To start this Quickstart, it is useful to clear all the stored output in the Notebook. Choose *Cell* -> *All Output* -> *Clear* . All output in the Notebook is now removed. 


Importing Data with Python netCDF4
-----------------------------------------------------------------------------

The first Notebook code cell imports important libraries to the active Python interpreter. The second cell assigns a string pathname into variable ``my_example_nc_file``, and then initializes a netCDF4 Dataset object ``fh``.
Finally, the third cell reads three Dataset object variables into local
numpy ndarrays. For more information about numpy, see http://www.numpy.org/ .

When you click in the cell with the heading **Import Cartopy, Display Example Maps** notice the cell type in the toolbar area changes to *Markdown*.


Display Data using Cartopy
------------------------------------------------------------------------------

Click or navigate to the next code cell, which begins with ``%matplotlib inline``.
This is an IPython Notebook Cell "Magic" - special commands interpreted by the Notebook
to change the environment or behavior of the Notebook. This directive tells the 
Notebook to place **matplotlib** graphics directly in the window contents, instead of creating a new window. Execute the cell to import matplotlib and cartopy.

In the rest of the Notebook, each cell will draw the sample netCDF data in a different mapping projection. Try executing each cell, and see the results projected in different ways.


General IPython Notebook Tutorial
--------------------------------------------------------------------------------

http://ipython.org/ipython-doc/stable/interactive/tutorial.html

.. _`iPython Blog`: http://www.damian.oquanta.info/posts/48-themes-for-your-ipython-notebook.html

