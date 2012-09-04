:Author: OSGeo-Live
:Author: Manuel Grizonnet
:Translator: David Mateos
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-otb.png
  :scale: 80 %
  :alt: project logo
  :align: right

********************************************************************************
Guía de inicio rápido de OTB 
********************************************************************************

La Biblioteca de Herramientas OTB (por sus siglas en inglés *ORFEO Toolbox library*) es una biblioteca de alto rendimiento para el procesamiento de imágenes orientada a la teledetección.

Esta guía de inicio rápido describe cómo:

  * Conseguir información de los metadatos de una imagen.
  * Desarrollar operaciones matemáticas entre las bandas de una imagen. 
  * Abrir imágenes *raster* con la aplicación monteverdi, desarrollar segmentación (*mean-shift clustering*) y visualizar el resultado. 

El paquete de Aplicaciones OTB proporciona muchas aplicaciones interesantes que facilitan la manipulación de imágenes. Todas estas herramientas están disponibles a través de:  

  * Interfaz de línea de comandos (CLI, por sus siglas en inglés: *command line interface*). 
  * QT GUI: una interfaz de usuario autónoma.
  * extensión para QGIS: una extensión que se usa directamente desde Quantum GIS .

Los datos de ejemplo usados en esta guía se pueden descargar en:
  * http://www.orfeo-toolbox.org/packages/OTB-Data-Examples.tgz

Mostrar la información de los metadatos de una imagen
================================================================================

Se puede obtener toda la información contenida en los metadatos de una imagen mediante el comando:  `otbReadImageInfo-cli`
El único parámetro necesario es el nombre de archivo de la imagen de entrada, por ejemplo:  `otbReadImageInfo-cli -in qb_RoadExtract.tif`

Calculadora de bandas de imagen
================================================================================

La aplicación`otbBandMath-cli` proporciona un método eficiente para desarrollar operaciones matemáticas con imágenes monobanda. 
La sintaxis es muy simple. Por ejemplo, para restar dos bandas para estudiar las diferencias entre las imágenes SpotBefore.tif y SpotAfter.tif, sólo hay que usar el comando: `otbBandMath-cli -ims SpotBefore.png SpotAfter.png -out difference.tif -exp "im1b1-im2b1"`
La aplicación es capaz de desarrollar operaciones matemáticas complejas sobre imágenes tales como cálculo de umbrales, reescalado logarítmico,...
Esta calculadora digital "casera" incluye funciones personalizadas que permiten procesar una expresión compleja. Por ejemplo, dado que las imágenes de teledetección miden magnitudes físicas, es posible extraer varios índices como el NDVI (*Normalized Difference Vegetation Index*, Índice de vegetación de diferencia normalizada) para la vegetación. Con la calculadora se puede procesar el NDVI de una imagen de un sensor multispectral escribiendo:
`otbBandMath-cli -ims qb_RoadExtract.tif -out ndvi.tif -exp "ndvi(im1b3,im1b4)"`


Realizar segmentación con Monteverdi
================================================================================

* Arrancar Monteverdi desde el menú de inicio en *Geospatial>Spatial Tools>Monteverdi*
* Seleccionar una imagen *raster* usando: :menuselection:`File --> Open Dataset --> /home/user/otb/qb_RoadExtract.tif` en el directorio donde se hayan descargado los datos.
* Ir al menú :menuselection:`Filtering --> Mean Shift clustering`. 
* Seleccionar la imagen *raster* de entrada (Reader0) en el desplegable de entrada. En "Instance Label", seleccionar el nombre de salida (por defecto "MeanShift0").
* Comprobar que se pueden modificar los parámetros de la segmentación y ver el resultado sobre la región de interés haciendo click en "Run"
* Seleccionar "Close" una vez el resultado sea satisfactorio.
* En la ventana principal, click derecho en la imagen segmentada ("Clustered Image") en el juego de datos de resultado "MeanShift0" (o el nombre que se le haya asignado) y seleccionar "Display in viewer" para visualizarlo.

  .. image:: ../../images/screenshots/800x600/otb-mean_shift.jpg
     :scale: 100 %

Ejecutar clasificación supervisada basada en SVM con Monteverdi
================================================================================

(SVM = *Support Vector Machines*, Máquinas de Soporte Vectorial)

* Arrancar Monteverdi desde el menú de inicio.
* Seleccionar una imagen *raster*, usando :menuselection:`File --> Open Dataset --> /home/user/otb/qb_RoadExtract.tif`.
* Ir a :menuselection:`Learning --> SVM classification`
* Seleccionar la imagen *raster* de entrada (Reader0) en la ventana de selección.
* Se pueden añadir clases con el botón `Add` dentro del menú `Edit Classes`. Para seleccionar las áreas de entrenamiento se dibujan polígonos cliqueando en los vértices y pulsando "End Polygon" en el menú "Regions of Interest" cuando esté terminado. 
* Ir a :menuselection:`Setup --> SVM` para establecer los parámetros del algoritmo de clasificación.
* Cliquear en el botón de `Learn` para crear un modelo de clasificación a partir de las clases de aprendizaje.
* Cliquear en el botón de `Display` para mostrar el resultado de la clasificación supervisada en la imagen completa. 

  .. image:: ../../images/screenshots/800x600/otb-svm.jpg
     :scale: 100 %

Para leer el tutorial completo, leer el `artículo`_.

.. _`artículo`: http://www.orfeo-toolbox.org/otb/monteverdi.html


¿Y después?
================================================================================

* Guía de Software OTB  (en inglés)

  La principal fuente de información es la Guía de Software OTB. Esta es una guía exhaustiva que comprende cerca de 600 páginas, detallando los pasos para instalar y usar OTB. La mayoría de los temas están profusamente ilustradas con resultados de procesos reales de teledetección. 
  
  * `OTBSoftwareGuide.pdf <http://orfeo-toolbox.org/packages/OTBSoftwareGuide.pdf>`_
  * `Versión Online html <http://orfeo-toolbox.org/SoftwareGuide/>`_

* OTB CookBook

  También está disponible una guía para las Aplicaciones-OTB y Monteverdi orientada a no-desarrolladores. Esta guía está compuesta por un breve tour por las Aplicaciones-OTB y Monteverdi, seguida de un conjunto de recetas para ejecutar tareas habituales de teledetección con ambas herramientas. 
  
  * `OTBCookBook.pdf <http://orfeo-toolbox.org/packages/OTBCookBook.pdf>`_

* Tutoriales OTB

  Tutoriales_ para aprender más sobre OTB.

.. _Tutoriales: http://www.orfeo-toolbox.org/SoftwareGuide/SoftwareGuidepa2.html#x17-49000II

* Documentación en el DVD

  Ver también la documentación_ incluida en este DVD.

.. _documentación: ../../otb/

