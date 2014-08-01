:Author: OSGeo-Live
:Reviewer: Massimo Di Stefano, Center for Coastal and Ocean Mapping - UNH
:Version: osgeo-live7.9
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-ipython.png
  :scale: 90 %
  :alt: project logo
  :align: center
  :target: http://ipython.org/



IPython
================================================================================


IPython provides a rich architecture for interactive computing with:

* Powerful interactive shells (terminal and Qt-based).
* A browser-based notebook with support for code, text, mathematical expressions, inline plots and other rich media.
* Support for interactive data visualization and use of GUI toolkits.
* Flexible, embeddable interpreters to load into your own projects.
* Easy to use, high performance tools for parallel computing.

.. image:: ../../images/screenshots/800x600/ipython-notebook1.png
  :scale: 100 %
  :alt: screenshot
  :align: right
  

.. _protocol: http://ipython.org/ipython-doc/stable/development/messaging.html

.. _bash-perl-or-ruby: http://nbviewer.ipython.org/github/ipython/ipython/blob/master/examples/notebooks/Script%20Magics.ipynb

.. _official-example-collection: https://github.com/ipython/ipython/tree/master/examples/notebooks#a-collection-of-notebooks-for-using-ipython-effectively

.. _notebook-gallery: https://github.com/ipython/ipython/wiki/A-gallery-of-interesting-IPython-Notebooks

.. _videos-and-screencasts : http://ipython.org/videos.html#videos

.. _talks-and-presentations: http://ipython.org/presentation.html

.. _extensive-documentation: http://ipython.org/documentation.html

.. _other-projects: https://github.com/ipython/ipython/wiki/Projects-using-IPython


  
While the focus of the project is Python, the IPython architecture is designed in a language-agnostic way to facilitate interactive computing in any language. An interactive kernel speaks to clients such as the terminal or web notebook via a well-specified protocol_, and all features of a kernel are available to all clients. We ship the official IPython kernel, but kernels for other languages are being currently developed, with prototypes in Ruby and JavaScript already existing. Additionally, the IPython kernel supports multi-language integration, letting you for example mix Python code with Cython, R, Octave, and scripting in bash-perl-or-ruby_.

To get started with the IPython Notebook, see the official-example-collection_. The notebook-gallery_ is an excellent way to see the many things can be done with IPython while learning about a variety of topics, from basic programming to advanced statistics or quantum mechanics.

To learn more about IPython, there are videos-and-screencasts_ available or download talks-and-presentations_, or read the extensive-documentation_. IPython is open source (BSD license), and is used by a range of other-projects_; add your project to that list if it uses IPython as a library, and please don’t forget to cite the project.

IPython supports Python 2.6 to 2.7 and 3.2 or newer. Our older 0.10 series supports Python 2.5, and can be used with Python 2.4.




Core Features
--------------------------------------------------------------------------------



The IPython Notebook is a web-based interactive computational environment where you can combine code execution, text, mathematics, plots and rich media into a single document:



These notebooks are normal files that can be shared with colleagues, converted to other formats such as HTML or PDF, etc. You can share any publicly available notebook by using the IPython Notebook Viewer service which will render it as a static web page. This makes it easy to give your colleagues a document they can read immediately without having to install anything.

To learn more about using the IPython Notebook, you can visit our example collection, and you can read the documentation for all the details on how to use and configure the system. The Notebook Gallery showcases many interesting notebooks covering a variety of topics, from basic programming to advanced scientific computing.


Geospatial Data Analysis and IPython
--------------------------------------------------------------------------------
.. _Data_and_Visualization_Integration_Via_Web-based_Resources: http://tw.rpi.edu/media/2013/09/25/a48/The_Perfect_Storm_1991.html

.. _Exploring_seafloor_habitats_geographic_analysis_using_IPython_Notebook_with_GRASS_and_R: http://nbviewer.ipython.org/gist/epifanio/7598354

.. _slideshow: http://orion.tw.rpi.edu/~epifanio/AGU-2013/AGU-2013-H52E02-MDS.slides.html

.. _geo-notebook: https://github.com/OSGeo/IPython_notebooks

On OSGeoLive a number of python libraries and command line tools are installed (GDAL, GRASS, )and ready to be used, IPython provides a rich interface for such kind of tools, example usage can be found in the geo-notebook_ git repository other examples are available online on the IPython notebook gallery see : Data_and_Visualization_Integration_Via_Web-based_Resources_ and Exploring_seafloor_habitats_geographic_analysis_using_IPython_Notebook_with_GRASS_and_R_ , and an IPython Notebook can be also rendered as a slideshow_




Details
--------------------------------------------------------------------------------

IPython Website_ 

.. _Website: http://ipython.org/

**Licence:** BSD license

**Software Version:** 1.2.1

**Supported Platforms:** Linux, Mac, Windows

**API Interfaces:** Python


COMMUNITY
--------------------------------------------------------------------------------

.. _Help-Chat-Room: http://www.hipchat.com/ghSp7E1uY

Help-Chat-Room_

.. _Stack-Overflow: http://stackoverflow.com/questions/tagged/ipython


.. _Mailing-list: http://projects.scipy.org/mailman/listinfo/ipython-dev

Stack-Overflow_ 

Mailing-list_

.. _Wiki: https://github.com/ipython/ipython/wiki

Wiki_

.. _Reddit: http://www.reddit.com/r/IPython

Reddit_

.. _File_a_bug: https://github.com/ipython/ipython/issues

File_a_bug_


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/ipython_quickstart>`
