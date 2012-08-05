:Author: OSGeo-Live
:Author: Massimo Di Stefano
:Author: Pirmin Kalberer
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-ossim.gif
  :scale: 80 %
  :alt: project logo
  :align: right

********************************************************************************
Guía de inicio rápido de Ossim
********************************************************************************

Open Source Software Image Map (OSSIM) en un motor de alto rendimiento para teledetección, procesamiento de imágenes, sistemas de información geográfica y fotogrametría.

Esta guía de inicio rápido describe cómo:

  * Ver imágenes *raster* con imagelinker
  * Ejecutar ossimPlanet

Imagelinker
================================================================================

* Arranca Imagelinker desde su icono en la carpeta "Spatial Tools" del escritorio
* Selecciona un fichero de proyecto usando :menuselection:`File --> Open Project --> /home/user/ossim/landsatrgb.prj`
* Accede a :menuselection:`menu bar --> window --> tile`
* Selecciona :menuselection:`ventana de imagen --> seleccionar el botón de arrastrar --> clic en la imagen -->  pulsa el botón "propagate"`
* Verifica que puedes ver tres imágenes de satélite en escala de grises. 

  .. image:: ../../images/screenshots/800x600/ossim_imagelinker2.jpg
     :scale: 100 %

Para ver un tutorial completo puedes visitar este `artículo`_.

.. _`artículo`: http://www.geofemengineering.it/GeofemEngineering/Blog/Voci/2010/3/15_OSGEO_-_Live_-_DVD_-_%22running_imagelinker%22.html


OssimPlanet
================================================================================

* Ejecuta OssimPlanet desde su icono en la carpeta "Desktop-GIS" en el escritorio 

* Selecciona :menuselection:`File --> Open Image --> /home/user/data/raster/band1.tiff`

* Dirígete a :menuselection:`menu --> Open kml --> /home/user/data/kml/*.kml`

* En :menuselection:`árbol de leyenda --> Image Layers --> abrir el árbol --> haz doble clic en la imagen band1`,
  deberías desplazar la escena a la localización de la imagen 

* Navega por la escena


.. note::
   Para apagar el sombreado automático con luz real desactiva :menuselection:`File --> Preferences --> Environment --> Enable Ephemeris`


¿Qué es lo siguiente?
================================================================================

* Tutoriales de Ossim

  Sigue los tutoriales_ para aprender más sobre Ossim.

.. _tutoriales: http://download.osgeo.org/ossim/tutorials/pdfs/

* Documentación en el DVD

  Puedes consultar también la documentación_ existente en este DVD.

.. _documentación: ../../ossim/

