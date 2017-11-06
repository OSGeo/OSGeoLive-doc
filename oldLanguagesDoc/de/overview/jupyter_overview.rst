:Author: jupyter developers team
:Author: Massimo Di Stefano
:Reviewer: Cameron Shorter, Jirotech
:Translator: Astrid Emde
:Version: osgeo-live9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-jupyter.png
  :alt: project logo
  :align: right
  :target: http://jupyter.org/

Jupyter Notebook
--------------------------------------------------------------------------------

Einbindung von Rich Media in Dokumentationen
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Cameron Comment: Our docs target new users, focusing on current state, and as such mentioning how a project has been derived is not the focus of a Project Overview. Hence I'm proposing to comment out following sentence.
.. Project Jupyter was born out of the IPython Project in 2014 as it evolved to support interactive data science and scientific computing across all programming languages.

Jupyter Notebook ist eine Webanwendung, über 
die Dokumente erzeugt und geteilt werden 
können, die Live-Code, Gleichungen, Visualisierungen und erklärenden Text enthalten können.
Jupyter Notebook verbindet damit zwei Komponenten:  

* Eine Webanwendung, die browser-based, interaktives veröffentlichen 
    von notebook Dokumenten bereitstellt.

* Notebook Dokumente speichern eine Repräsentation von allen sichtbaren 
    Inhalten in der Webanwendung, inklusive Eingaben und Ausgaben
    von Berechnungen, erklärenden text, Berechnungen, Code, Bilder, Videos,
    Diagramme, Karten und andere Rich Media Repräsentationen von Objekten.

Notebooks können mit anderen auf GitHub, Dropbox und dem `Jupyter Notebook Viewer <https://nbviewer.jupyter.org/>`_ geteilt werden.

Die Verwendung beinhaltet: Datenbereinigung und Transformation, 
numerische Simulation, statistische Modellierung, 
machine learning und viel mehr.

.. Cameron comment: I like the collage layout and selected examples, however
  the image scale: above should change from 100% to 70% for 1024x768 images, to fit text layout. (this image is actually 1007x725). The image should be stored in /images/projects/1024x768. The font size in the image is too small to see the text layout (which is a really cool message to get across). I suggest resampling, probably in a 800x600 resolution, maybe limit source collage images to 3. Maybe have one screenshot as the entire background, then place other samples on top - see the geoserver screenshot.
   
.. image:: /images/projects/jupyter/jupyter-screenshot.png
  :scale: 70 %
  :alt: screenshot
  :align: right
  
Kernfunktionen
================================================================================

Erzeugen von Jupyter notebooks die folgendes beinhalten können:

* Marked up text (mit Überschriften, Styles, Absätzen usw.)
* Formulare, Berechnungen, Druck, Karten, ...
* Importiert externe Bibliotheken, um Funktionalität bereitzustellen.
* Code zahlreicher Programmiersprachen, inklusive python, R, Julia, Bash und viele mehr.

Jupyter notebooks auf OSGeo-Live kann räumliche Funktionen verwenden von:

* Numpy, SciPy Matplotlib, IRIS, Cartopy, gdal, Geopandas, pyshp, Fiona, netCDF4, PostgreSQL, psycopg2, R, rpy2 und mehr.

Details
--------------------------------------------------------------------------------

**Webseite:** http://jupyter.org/

**Lizenz:** revised BSD license

**Software Version:** |version-jupyter|

**Unterstützte Plattformen:**  Linux, Mac, Windows

**API Schnittstellen:** Python

**Support:**  http://jupyter.org/community.html


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/jupyter_quickstart>`
