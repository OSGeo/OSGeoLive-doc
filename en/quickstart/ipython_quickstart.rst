:Author: darkblueb
:Contact: darkblueb @ osgeo
:Version: osgeo-live7.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-ipython.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://ipython.org/

********************************************************************************
Getting Started with IPython Notebook
********************************************************************************

.. contents::
    :depth: 3
    :backlinks: none


IPython provides a rich architecture for interactive computing. 
The Notebook is a graphical interface that is easily modified and shareable.

This Quick Start describes how to:

  * start the IPython Notebook
  * load sample data from a netCDF file
  * draw the data into a map, using a selection of projections


Starting IPython
================================================================================


IPython Notebook is designed to work in several display environments, local
to the computer (or VM), remotely via a web browser; when running locally,
the display system can use a Qt window to interact with graphics. 

Let's look at two ways to use IPython Notebook - local (the default), and
remotely using the network and a remote web browser. The second option is
useful when running OSGeo Live in a VM.

Local IPython Notebook

* from the application launch menu in the lower left corner, 
  choose Geospatial -> Spatial Tools -> Start IPython Notebook
  
A terminal window will open and a startup log will begin to scroll.
Next

* Choose Geospatial -> Spatial Tools -> IPython Notebook

A web browser is automatically launched pointing to a localhost URL and
the IPython port number. The directory system is straightforward -
when IPython is launched, the current directory is read for Notebooks.
Any sub-directory is shown in the listing ("tree"). The user can 
navigate up and down the tree by clicking on a directory. Notebook files 
are just a single text file ending in suffix .ipynb, and are displayed 
by their filename. Renaming a Notebook simply changes the filename.

 
Remote IPython

* open a terminal window by clicking on the green terminal icon, or 
using a menu item
* execute `ipython notebook --ip=* --matplotlib=inline --no-browser`
* determine the IP address of your computer or VM, for example
  ifconfig -a | grep 192
  
Use a web browser from another computer and enter the web address of 
IPython Notebook and ':8883'. e.g.  192.168.1.13:8883
  



Using the IPython Notebook
================================================================================

Click on the link titled ``cartopy_simple.ipynb``. A new tab should open in the 
web browser, showing a complete Notebook interface. Try moving the mouse over 
each button in the toolbar and hold it there, to see the tooltip titles. Also
take a moment to click on the menus to begin to become familiar with their contents.
Take particular note of the **Help** menu.

The Notebook interface is a vertical list of *cells*. Each cell has a type, for
example a heading or code. Any code cell can be executed by making it *active*
and then clicking on the *run* command, or using a keyboard shortcut Shift-Return.

Try clicking on the first code cell, which includes **Import numpy as np**
and executing it. Execute the next cell, which becomes active.




General IPython Notebook Tutorial
--------------------------------------------------------------------------------

http://ipython.org/ipython-doc/stable/interactive/tutorial.html

.. _`iPython Blog`: http://www.damian.oquanta.info/posts/48-themes-for-your-ipython-notebook.html


