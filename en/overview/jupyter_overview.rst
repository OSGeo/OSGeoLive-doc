:Author: jupyter developers team
:Author: Massimo Di Stefano
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-jupyter.png
  :alt: project logo
  :align: center
  :target: http://jupyter.org/

Jupyter Notebook
================================================================================

Mixing rich media in documentation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Jupyter Notebook is a web application that allows you to create and share documents that contain live code, equations, visualizations and explanatory text. 

It combines two components:

.. image:: ../../images/screenshots/800x600/jupyter-screenshot.png
  :scale: 70 %
  :alt: screenshot
  :align: center
  
.. Cameron Comment: Reverted to prior screenshot
  New image was: .. image:: ../../images/screenshots/1024x768/jupyter6.png
  The new image is too big, and has too much white space. Either it will need to be one snapshot, or layered over each other. The GeoServer image might provide some good inspiration: http://adhoc.osgeo.osuosl.org/livedvd/docs/_images/geoserver3.png
.. TBD: The image should show use of iPython Notebook with maps, possibly as
   collage. Show an [In] cell with code. Show a heading or 2 and text
   demonstrating how it is easy to build an publish powerful web pages.

* A web application providing browser-based, interactive authoring of notebook documents.

* Notebook documents which store a representation of all content visible in the web application, including inputs and outputs of computations, explanatory text, mathematics, code, images, videos, graphs, maps, and other rich media representations of objects.

Notebooks can be shared with others on GitHub, Dropbox, and the `Jupyter Notebook Viewer <https://nbviewer.jupyter.org/>`_.

Uses include: data cleaning and transformation, numerical simulation, statistical modeling, machine learning and much more.   

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
