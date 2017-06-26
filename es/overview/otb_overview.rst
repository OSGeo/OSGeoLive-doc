:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Translator: Samuel Mesa
:Translator: David Mateos
:Version: osgeo-live8.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-otb.png
  :alt: project logo
  :align: right
  :target: http://www.orfeo-toolbox.org/

OTB
================================================================================

Procesamiento de imágenes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Acrónimo del inglés de `ORFEO Toolbox Library (OTB)`, es una biblioteca de alto rendimiento
para procesamiento de imágenes. Se usa principalmente para procesar imágenes grandes
de teledetección como las capturados por radares, satélites o plataformas aéreas. 
OTB proporciona herramientas para imágenes ópticas y radar (aspectos tridimensionales,
segmentación, clasificación, detección de cambios, análisis de texturas, similitud de 
patrones y  complementariedades óptico/radar), muchas de las cuales se pueden ejecutar
en portátiles de recursos limitados.

OTB está disponible con una interfaz de usuario completamente integrada llamada 
Monteverdi que permite a los usuarios seleccionar cadenas de procesos OTB en un conjunto
de menús. 

OTB fue fundado por la Agencia Espacial Francesa (CNES) en el marco Metodológico
del Programa de Acompañamiento ORFEO/Pleiades y se desarrolla activamente desde el año 2006. 
Se basa en la biblioteca de procesamiento de imágenes ITK  y se distribuye 
como código de fuente abierta.

Características principales
--------------------------------------------------------------------------------

.. image:: /images/screenshots/1024x768/otb-mvd3-screenshot.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

* Acceso a imágenes: acceso lectura/escritura optimizado  para la mayoría de los
  formatos de imágenes de teledetección, acceso a metadatos y visualización.
* Ortorectificación usando MDE, proyección de mapas y ajuste de modelos de sensores.
* Calibración.
* Fusión de imágenes.
* Filtrado: desenfoque, eliminación de ruido, mejoramiento.
* Extracción de características: puntos de interés, alineamientos, líneas.
* Detección de objetos.
* Segmentación de imágenes: crecimiento de regiones, transformación divisoria, valor umbral.
* Clasificación: K-medias, SVM, campos aleatorios de Markov.
* Análisis de imágenes basadas en objetos.
* Análisis geoespacial.
* Análisis de datos SAR.
* Detección de cambios.

Detalles
--------------------------------------------------------------------------------

**Sitio Web:** http://www.orfeo-toolbox.org/

**Licencia:** CeCILL (CeCILL es compatible con GPL y mejorado en orientación de la ley Francesa)

**Versión de software:**  |version-otb|

**Plataformas soportadas:** Linux, Mac, Windows

**Interfaces API:** C++

**Soporte comercial:** http://www.osgeo.org/search_profile


Guía de inicio rápido
--------------------------------------------------------------------------------

* :doc:`Documentación de Guía de incio rápido <../quickstart/otb_quickstart>`

