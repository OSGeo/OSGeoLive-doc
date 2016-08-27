:Author: OSGeo-Live 
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Samuel Mesa
:Translator: David Mateos
:Version: osgeo-live8.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-otb.png
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

.. image:: ../../images/screenshots/1024x768/otb-mvd3-screenshot.jpg
  :scale: 80 %
  :alt: screenshot
  :align: right

* acceso a imágenes: acceso lectura/escritura optimizado  para la mayoría de los
  formatos de imágenes de teledetección, acceso a metadatos y visualización;
* ortorectificación usando MDE, proyección de mapas y ajuste de modelos de sensores
* calibración
* fusión de imágenes
* filtrado: desenfoque, eliminación de ruido, mejoramiento
* extracción de características: puntos de interés, alineamientos, líneas;
* detección de objetos
* segmentación de imágenes: crecimiento de regiones, transformación divisoria, 
  valor umbral;
* clasificación: K-medias, SVM, campos aleatorios de Markov;
* análisis de imágenes basadas en objetos
* análisis geoespacial
* análisis de datos SAR
* detección de cambios.

Detalles
--------------------------------------------------------------------------------

**Sitio Web:** http://www.orfeo-toolbox.org/

**Licencia:** CeCILL (CeCILL es compactible con GPL y mejorado en orientación de 
  la ley Francesa)

**Versión de software:**  |version-otb|

**Plataformas soportadas:** Linux, Mac, Windows

**Interfaces API:** C++

**Soporte comercial:** http://www.osgeo.org/search_profile


Guía de inicio rápido
--------------------------------------------------------------------------------

* :doc:`Documentación de Guía de incio rápido <../quickstart/otb_quickstart>`

