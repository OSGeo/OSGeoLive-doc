:Author: jupyter developers team
:Author: Massimo Di Stefano
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-jupyter.png
  :alt: project logo
  :align: right
  :target: http://jupyter.org/

Jupyter Notebook
--------------------------------------------------------------------------------

Mixing rich media in documentation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Cameron Comment: Our docs target new users, focusing on current state, and as such mentioning how a project has been derived is not the focus of a Project Overview. Hence I'm proposing to comment out following sentence.
.. Project Jupyter was born out of the IPython Project in 2014 as it evolved to support interactive data science and scientific computing across all programming languages.

The Jupyter Notebook is a web application that allows you to create and share documents that contain live code, equations, visualizations and explanatory text.  It combines two components:

* A web application providing browser-based, interactive authoring of notebook documents.

* Notebook documents which store a representation of all content visible in the web application, including inputs and outputs of computations, explanatory text, mathematics, code, images, videos, graphs, maps, and other rich media representations of objects.

Notebooks can be shared with others on GitHub, Dropbox, and the `Jupyter Notebook Viewer <https://nbviewer.jupyter.org/>`_.

Uses include: data cleaning and transformation, numerical simulation, statistical modeling, machine learning and much more.

.. Cameron comment: I like the collage layout and selected examples, however
  the image scale: above should change from 100% to 70% for 1024x768 images, to fit text layout. (this image is actually 1007x725). The image should be stored in images/screenshots/1024x768. The font size in the image is too small to see the text layout (which is a really cool message to get across). I suggest resampling, probably in a 800x600 resolution, maybe limit source collage images to 3. Maybe have one screenshot as the entire background, then place other samples on top - see the geoserver screenshot.
   
.. image:: ../../images/screenshots/800x600/jupyter-screenshot.png
  :scale: 70 %
  :alt: screenshot
  :align: right
  
Core Features
================================================================================

Create Jupyter notebooks which can contain:

* Marked up text (with headings, styles, paragraphs, etc)
* Formulas, mathematics, plots, maps, ...
* Imported external libraries to add functionality.
* Code from multiple programming languages, including python, R, Julia, Bash and many more.

Jupyter notebooks on OSGeo-Live can use geospatial functions from:

* Numpy, SciPy Matplotlib, IRIS, Cartopy, gdal, Geopandas, pyshp, Fiona, netCDF4, PostgreSQL, psycopg2, R, rpy2, and more.

Details
--------------------------------------------------------------------------------

**Website:** http://jupyter.org/

**Licence:** revised BSD license

**Software Version:** 4.1

**Supported Platforms:** Linux, Mac, Windows

**API Interfaces:** Python

**Support:**  http://jupyter.org/community.html


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/jupyter_quickstart>`
