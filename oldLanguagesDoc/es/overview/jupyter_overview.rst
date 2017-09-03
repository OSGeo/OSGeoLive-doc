:Author: jupyter developers team
:Author: Massimo Di Stefano
:Reviewer: Cameron Shorter, Jirotech
:Translator: David Mateos
:Version: osgeo-live9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-jupyter.png
  :alt: project logo
  :align: center
  :target: http://jupyter.org/

################################################################################
Jupyter Notebook
################################################################################

Mixing rich media in documentation
================================================================================

El Jupyter *Notebook*  (cuaderno Jupyter) es una aplicación web que permite crear y compartir documentos que pueden contener código, ecuaciones, visualizaciones y texto explicativo.

Combina dos componentes:

.. image:: /images/screenshots/jupyter/jupyter-screenshot.png
  :scale: 70 %
  :alt: screenshot
  :align: center

.. Cameron Comment: Reverted to prior screenshot
  New image was: .. image:: /images/screenshots/jupyter/jupyter6.png
  The new image is too big, and has too much white space. Either it will need to be one snapshot, or layered over each other. The GeoServer image might provide some good inspiration: http://adhoc.osgeo.osuosl.org/livedvd/docs/_images/geoserver3.png
.. TBD: The image should show use of iPython Notebook with maps, possibly as
   collage. Show an [In] cell with code. Show a heading or 2 and text
   demonstrating how it is easy to build an publish powerful web pages.

* Una aplicación web, que ofrece la creación interactiva de documentos *notebook* a través del navegador.

* Documentos *notebook* que almacenan una representación de todo el contenido visible en la aplicación web, incluyendo entradas y salidas de los cálculos, texto explicativo, matemáticas, código, imágenes, videos, gráficos, mapas y otros contenidos multimedia.

Los *notebooks* se pueden compartir via GitHub, Dropbox, y a través del `Jupyter Notebook Viewer <https://nbviewer.jupyter.org/>`_.

Entre sus usos está la limpieza y transformación de datos, la simulación numérica, el modelado estadístico, el aprendizaje automático y mucho más.

Características principales
================================================================================

Crear *notebooks* Jupyter que pueden contenter:

* Texto marcado (con cabeceros, estilos, parrafos, etc).
* Fórmulas, matematicas, gráficos, mapas, ...
* Bibliotecas externas importadas para añadir funcionalidades. 
* Código de múltiples lenguajes de programación, incluyendo  python, R, Julia, Bash y muchos más.

Los *notebooks* Jupyter en OSGeo-Live pueden usar funciones geoespaciales de:

* Numpy, SciPy Matplotlib, IRIS, Cartopy, gdal, Geopandas, pyshp, Fiona, netCDF4, PostgreSQL, psycopg2, R, rpy2, y más.

Detalles
--------------------------------------------------------------------------------

**Página web:** http://jupyter.org/

**Licencia:** revised BSD license

**Versión del Software :** |version-jupyter|

**Platformas soportadas:** Linux, Mac, Windows

**Interfaces API :** Python

**Apoyo:**  http://jupyter.org/community.html


Guía de inicio rápido
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/jupyter_quickstart>`
