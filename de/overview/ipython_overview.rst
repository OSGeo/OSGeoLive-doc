:Author: OSGeo-Live
:Translator: Astrid Emde
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


IPython bietet eine geeignete Architektur für interaktive Operationen:

* Leistungsstarke interaktive Konsole (Terminal und Qt-basiert).
* Ein browser-basierte Anwendung mit Ünterstützung von Code, Text, mathematischen Ausdrücken, Ausdrucken und anderen Medien.
* Unterstützung interaktiver Datenvisualisierung und der Verwendung von grafischen Werkzeugen.
* Flexibel, eingebettete Interpreter für das Laden ins eigene Projekt.
* Einfach in der Anwendung, hohe Performance, für parallele Prozesse geeignet.

.. image:: ../../images/screenshots/800x600/ipython-notebook1.png
  :scale: 100 %
  :alt: screenshot
  :align: right
  

.. _Protokoll: http://ipython.org/ipython-doc/stable/development/messaging.html

.. _bash-perl-oder-ruby: http://nbviewer.ipython.org/github/ipython/ipython/blob/master/examples/notebooks/Script%20Magics.ipynb

.. _offizielle-Beispielsammlung: https://github.com/ipython/ipython/tree/master/examples/notebooks#a-collection-of-notebooks-for-using-ipython-effectively

.. _notebook-Galerie: https://github.com/ipython/ipython/wiki/A-gallery-of-interesting-IPython-Notebooks

.. _Videos-und-Screencasts : http://ipython.org/videos.html#videos

.. _Vorträge-und-Präsentationen: http://ipython.org/presentation.html

.. _ausführliche-Dokumentation: http://ipython.org/documentation.html

.. _anderen-Projekten: https://github.com/ipython/ipython/wiki/Projects-using-IPython


  
While the focus of the project is Python, the IPython architecture is designed in a language-agnostic way to facilitate interactive computing in any language. An interactive kernel speaks to clients such as the terminal or web notebook via a well-specified Protokoll_, and all features of a kernel are available to all clients. We ship the official IPython kernel, but kernels for other languages are being currently developed, with prototypes in Ruby and JavaScript already existing. Additionally, the IPython kernel supports multi-language integration, letting you for example mix Python code with Cython, R, Octave, and scripting in bash-perl-oder-ruby_.

To get started with the IPython Notebook, see the offizielle-Beispielsammlung_. The notebook-Galerie_ is an excellent way to see the many things can be done with IPython while learning about a variety of topics, from basic programming to advanced statistics or quantum mechanics.

Lernen Sie mehr über IPython! Es liegen Videos-und-Screencasts_, Vorträge-und-Präsentationen_ oder eine ausführliche-Dokumentation_ vor. IPython ist Open Source (BSD license) und wird von einigen anderen-Projekten_ verwendet; Füge Dein Projekt in die Liste ein, wenn es IPython als Bibliothek verwendet.

IPython unterstützt Python 2.6 bis 2.7 und 3.2 oder neuere Versionen. Unsere ältere 0.10 Series unterstützt Python 2.5 und kann mit Python 2.4 verwendet werden.




Kernfunktionen
--------------------------------------------------------------------------------



The IPython Notebook is a web-based interactive computational environment where you can combine code execution, text, mathematics, plots and rich media into a single document:



These notebooks are normal files that can be shared with colleagues, converted to other formats such as HTML or PDF, etc. You can share any publicly available notebook by using the IPython Notebook Viewer service which will render it as a static web page. This makes it easy to give your colleagues a document they can read immediately without having to install anything.

To learn more about using the IPython Notebook, you can visit our example collection, and you can read the documentation for all the details on how to use and configure the system. The Notebook Gallery showcases many interesting notebooks covering a variety of topics, from basic programming to advanced scientific computing.


Räumliche Datenanalyse und IPython
--------------------------------------------------------------------------------
.. _Data_and_Visualization_Integration_Via_Web-based_Resources: http://tw.rpi.edu/media/2013/09/25/a48/The_Perfect_Storm_1991.html

.. _Exploring_seafloor_habitats_geographic_analysis_using_IPython_Notebook_with_GRASS_and_R: http://nbviewer.ipython.org/gist/epifanio/7598354

.. _slideshow: http://orion.tw.rpi.edu/~epifanio/AGU-2013/AGU-2013-H52E02-MDS.slides.html

.. _geo-notebook: https://github.com/OSGeo/IPython_notebooks

On OSGeoLive a number of python libraries and command line tools are installed (GDAL, GRASS, )and ready to be used, IPython provides a rich interface for such kind of tools, example usage can be found in the geo-notebook_ git repository other examples are available online on the IPython notebook gallery see : Data_and_Visualization_Integration_Via_Web-based_Resources_ and Exploring_seafloor_habitats_geographic_analysis_using_IPython_Notebook_with_GRASS_and_R_ , and an IPython Notebook can be also rendered as a slideshow_




Details
--------------------------------------------------------------------------------

IPython Webseite_ 

.. _Webseite: http://ipython.org/

**Lizenz:** BSD Lizenz

**Software Version:** 1.2.1

**Unterstützte Plattformen:** Linux, Mac, Windows

**API Interfaces:** Python


COMMUNITY
--------------------------------------------------------------------------------

.. _Help-Chat-Room: http://www.hipchat.com/ghSp7E1uY

Help-Chat-Room_

.. _Stack-Overflow: http://stackoverflow.com/questions/tagged/ipython


.. _Mailing-Liste: http://projects.scipy.org/mailman/listinfo/ipython-dev

Stack-Overflow_ 

Mailing-Liste_

.. _Wiki: https://github.com/ipython/ipython/wiki

Wiki_

.. _Reddit: http://www.reddit.com/r/IPython

Reddit_

.. _File_a_bug: https://github.com/ipython/ipython/issues

File_a_bug_


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/ipython_quickstart>`
