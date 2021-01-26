:Author: jupyter developers team
:Author: Massimo Di Stefano
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Astrid Emde, OSGeo
:Version: osgeolive14
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_jupyter@
@OSGEO_KIND_jupyter@


@NAME_jupyter@
================================================================================

Mixing rich media in documentation
--------------------------------------------------------------------------------

The Jupyter Notebook is a web application that allows you to create and share documents that contain live code, equations, visualizations and explanatory text. 

It combines two components:

* A web application providing browser-based, interactive authoring of notebook documents.

* Notebook documents which store a representation of all content visible in the web application, including inputs and outputs of computations, explanatory text, mathematics, code, images, videos, graphs, maps, and other rich media representations of objects.

@SCREENSHOT_jupyter@

Notebooks can be shared with others on GitHub, Dropbox, and the `Jupyter Notebook Viewer <https://nbviewer.jupyter.org/>`_.

Uses include: data cleaning and transformation, numerical simulation, statistical modeling, machine learning and much more. 
  

Core Features
================================================================================

Create Jupyter Notebooks which can contain:

* Marked up text (with headings, styles, paragraphs, etc)
* Formulas, mathematics, plots, maps, ...
* Imported external libraries to add functionality
* Code from multiple programming languages, including Python, R, Julia, Bash and many more.

Jupyter Notebooks on OSGeoLive can use geospatial functions from:

* Numpy, SciPy Matplotlib, IRIS, Cartopy, gdal, Geopandas, pyshp, Fiona, netCDF4, PostgreSQL, psycopg2, R, rpy2, and more.


Details
--------------------------------------------------------------------------------

**Website:** @WEB_jupyter@

**Licence:** The 3-Clause BSD License

**Software Version:** |version-jupyter|

**Supported Platforms:** Linux, Mac, Windows

**API Interfaces:** Python

**Support:** http://jupyter.org/community.html


@VMDK_jupyter@
@QUICKSTART_jupyter@

.. presentation-note
    Jupyter notebooks contain a list of input and output cells which allow you to embed rich media into a document. They are a bit like a spreadsheet in that each cell can contain code or a formula, and a bit like a web page in that authors can create presentations using structured text along with embedded rich media. Input cells can include geospatial functions from other applications, such as gdal, R, and many others.
