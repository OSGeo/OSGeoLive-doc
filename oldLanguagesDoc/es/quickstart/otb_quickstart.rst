:Author: OSGeo-Live
:Author: Manuel Grizonnet
:Translator: David Mateos
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-otb.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://www.orfeo-toolbox.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
Guía de inicio rápido de OTB 
********************************************************************************

La Biblioteca de Herramientas OTB (por sus siglas en inglés *ORFEO Toolbox library*) es una biblioteca de alto rendimiento para el procesamiento de imágenes orientada a la teledetección.

Esta guía de inicio rápido describe cómo:

  * Conseguir información de los metadatos de una imagen.
  * Desarrollar operaciones matemáticas entre las bandas de una imagen. 
  * Abrir imágenes *raster* con la aplicación monteverdi, desarrollar segmentación (*mean-shift clustering*) y visualizar el resultado. 
  * Desarrollar una clasificación supervisada basada en el algoritmo *Support Vector Machine* (Máquinas de Soporte Vectorial).
  
El paquete de Aplicaciones OTB proporciona muchas aplicaciones interesantes que facilitan la manipulación de imágenes. Todas estas herramientas están disponibles a través de:  

  * Interfaz de línea de comandos (CLI, por sus siglas en inglés: *command line interface*). 
  * QT GUI: una interfaz de usuario autónoma. Las -aplicaciones se pueden llamar desde un terminal con el alias `otbgui_` más el nombre de la aplicación. Otra opción es usar un pequeño lanzador (disponible en el menu -> Geospatial -> Spatial Tools -> OTB Launcher).
  * extensión para QGIS: una extensión que se usa directamente desde Quantum GIS .

Los datos de ejemplo usados en esta guía se pueden encontrar en:
  * /home/user/data/north_carolina/rast_geotiffs

Mostrar la información de los metadatos de una imagen
================================================================================

Se puede obtener toda la información contenida en los metadatos de una imagen mediante el comando:  `otbcli_ReadImageInfo`
El único parámetro necesario es el nombre de archivo de la imagen de entrada, por ejemplo::

  otbcli_ReadImageInfo -in ortho_2001_t792_1m.tif

Calculadora de bandas de imagen
================================================================================

La aplicación`otbBandMath-cli` proporciona un método eficiente para desarrollar operaciones matemáticas con imágenes monobanda. 
La sintaxis es muy simple. Por ejemplo, para restar dos bandas para estudiar las diferencias entre las imágenes SpotBefore.tif y SpotAfter.tif, sólo hay que usar el comando::

  otbcli_BandMath -il lsat7_2002_10.tif lsat7_2002_20.tif -out difference.tif -exp "im1b1-im2b1"
  
La aplicación es capaz de desarrollar operaciones matemáticas complejas sobre imágenes tales como cálculo de umbrales, reescalado logarítmico,...
Esta calculadora digital "casera" incluye funciones personalizadas que permiten procesar una expresión compleja. Por ejemplo, dado que las imágenes de teledetección miden magnitudes físicas, es posible extraer varios índices como el NDVI (*Normalized Difference Vegetation Index*, Índice de vegetación de diferencia normalizada) para la vegetación. Con la calculadora se puede procesar el NDVI de una imagen de un sensor multispectral escribiendo::

  otbcli_BandMath -il lsat7_2002_30.tif lsat7_2002_40.tif -out ~/ndvi.tif -exp "ndvi(im1b1,im2b1)"

El archivo `lsat7_2002_30.tif` corresponde al canal rojo de Landsat 7 red y `lsat7_2002_40.tif` se corresponde con el infrarrojo cercano.

Clasificación a nivel de pixel
================================================================================
La clasificación en el marco de trabajo de la aplicación proporciona un flujo de clasificación pixel a pixel basado en el aprendizaje a partir de múltiples imágenes y usando un método específico de aprendizaje automático como SVM, Bayes, KNN, Random Forests, Redes Neuronales Artificiales y otros ... (ver la ayuda de la aplicación `TrainImagesClassifier` para más detalles sobre todos los clasificadores disponibles).
Soporta imágenes muy grandes a través de *streaming* y *multi-threading*. El flujo de clasificación desarrolla una etapa de entrenamiento basadao en las intensidades de cada pixel como características. Hay que notar que todas las imágenes de entrada deben tener el mismo número de bandas para ser comparables.


Realizar segmentación
=============================================================================

La aplicación de *Segmentación* de OTB permite producir una segmentación raster usando diferentes algoritmos y 
Hay cuatro métodos de segmentación disponibles:

* Mean-Shift
* Watershed (ITK implementation)
* Connected-Components
* Perfiles morfológicos.

Se puede probar la segmentación con estos comandos:

* Creación de una imagen multicanal Roja-Verde-Azul-NIR
    ::

      otbcli_ConcatenateImages -il lsat7_2002_30.tif lsat7_2002_20.tif lsat7_2002_10.tif lsat7_2002_40.tif -out ~/lsat7_rgbn.tif

* Aplicar segmentación

    ::

      otbcli_Segmentation -in ~/lsat7_rgbn.tif -filter meanshift -mode raster -mode.raster.out ~/segmentation.tif

* Generar colores en lugar de etiquetas

    ::

      otbcli_ColorMapping -in ~/segmentation.tif -out ~/segmentation_colored.tif -method image -method.image.in ~/lsat7_rgbn.tif

Además la aplicación puede funcionar en dos modos diferentes:

* Modo ráster: permite segmentar una imagen pequeña y producir un ráster donde cada componente de la segmentación está etiquetado con un valor entero único.
* Modo vectorial: segmenta imágenes más grandes y produce un fichero vectorial donde cada segmento de la segmentación está representado por un polígono. 

  .. image:: /images/projects/otb/otb-meanshift-lsat7.png

OTB incluye también un marco de trabajo para desarrollar segmentación basada en teselas de imágenes muy grandes con garantías (en teoría) de obtener idénticos resultados que aquellas sin teselado llamadas LSMS_.

.. _LSMS: https://www.orfeo-toolbox.org/CookBook/CookBooksu42.html


OTB en QGis
================================================================================
El mismo conjunto de aplicaciones OTB se pueden usar desde el menú  Procesos -> Caja de Herramientas en QGis. Las aplicaciones están ordenadas por etiqueta.

  .. image:: /images/projects/otb/otb-processing-qgis.png


Desarrollo con OTB
================================================================================

Para usar la biblioteca OTB library y compilar tu propio código C++ code dentro de OSGeo-Live, se necesita instalar el paquete de desarrollo  **libotb-dev** y **libqt4-dev** .
También comprobar que **cmake** esté instalado. 
La localización OTB_DIR debería encontrarse automáticamente (normalmente en
*/usr/lib/x86_64-linux-gnu/cmake/OTB-...*). En la configuración CMake, se deberían vincular las bibliotecas en la variable OTB_LIBRARIES. Se puede encontrar más información en la SoftwareGuide.


¿Y después?
================================================================================

* Guía de Software OTB  (en inglés)

  La principal fuente de información es la Guía de Software OTB. Esta es una guía exhaustiva que comprende cerca de 600 páginas, detallando los pasos para instalar y usar OTB. La mayoría de los temas están profusamente ilustradas con resultados de procesos reales de teledetección. 
  
  * `OTBSoftwareGuide.pdf <http://orfeo-toolbox.org/packages/OTBSoftwareGuide.pdf>`_
  * `Guía Versión Online <http://orfeo-toolbox.org/SoftwareGuide/>`_

* OTB CookBook

  También está disponible una guía para las Aplicaciones-OTB y Monteverdi orientada a no-desarrolladores. Esta guía está compuesta por un breve tour por las Aplicaciones-OTB y Monteverdi, seguida de un conjunto de recetas para ejecutar tareas habituales de teledetección con ambas herramientas. 
  
  * `OTBCookBook.pdf <http://orfeo-toolbox.org/packages/OTBCookBook.pdf>`_
  * `Versión Online html <https://www.orfeo-toolbox.org/CookBook/CookBook.html>`_

* Tutoriales OTB

  Tutoriales_ para aprender más sobre OTB.

.. _Tutoriales: http://www.orfeo-toolbox.org/SoftwareGuide/SoftwareGuidepa2.html#x17-49000II

* Documentación en el DVD

  Consultar la detallada documentación sobre aplicaciones :doc:`../quickstart/otb_quickstart`

.. _aplicaciones: http://orfeo-toolbox.org/Applications/
