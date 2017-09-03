:Author: Hamish Bowman
:Translator: Jorge Sanz
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

.. image:: /images/project_logos/logo-mb-system.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://www.ldeo.columbia.edu/res/pi/MB-System/

********************************************************************************
Guía de inicio rápido de MB-System
********************************************************************************


Ejecución
================================================================================

Los usuarios que estén familiarizados con :doc:`GMT <../overview/gmt_overview>` y :doc:`GDAL <../overview/gdal_overview>` se encontrarán como en casa con MB-System. De hecho, MB-System hace uso intensivo de GMT para el renderizado de mapas. MB-System es una *suite* modular y dirigida mediante líneas de comando, de unos 75 programas que trabajan conjuntamente para procesar datos masivos de sonar de barrido lateral y batimétricos multihaz de rastreo (incluso terabytes) usando automaticaciones mediante guiones (*scripts*). Los ficheros se pueden dejar mezclados e intactos en el disco duro en docenas de formatos y solo los que sean necesarios serán seleccionados automáticamente, permitiendo el procesamiento eficiente y la combinación sin errores de juegos de datos obtenidos en diferentes tiempos, por diferentes embarcaciones y en diferentes formatos. Se incluye también software para la generación de salidas cartográficas y la limpieza avanzada de datos 3D.

Abrir un terminal,

* Vimualizar información sobre un archivo de datos: (similar a `gdalinfo`)

::

  cd /usr/local/mbsystem/examples/
  cd mbinfo
  ./mbinfo.cmd

.. image:: /images/screenshots/mb-system/mb-system_screenshot.png
  :scale: 35 %
  :alt: relieve sombreado 2D
  :align: right

* Procesar y preparar gráficos 3D a partir de los datos de ejemplo:

::

  cd /usr/local/mbsystem/examples/
  cd mbgrid
  export PATH="$PATH:."
  ./mbgrid.cmd

* Procesar y preparar una imagen de relieve de sombras 2:

::

  cd /usr/local/mbsystem/examples/
  cd mbm_plot
  export PATH="$PATH:."
  ./mbm_plot_5.cmd

Documentación
================================================================================

La documentación en línea se puede encontrar en 
 http://www.ldeo.columbia.edu/res/pi/MB-System/html/mbsystem_home.html

La versión en línea del tutorial puede encontrarse en 
 http://www.ldeo.columbia.edu/res/pi/MB-System/mb-cookbook/

La documentación puede encontrarse en este mismo LiveDVD en 
 `/usr/share/doc/mbsystem-doc/docs/ <../../mbsystem/docs/>`_

La versión PDF del tutorial puede encontrarse en este disco en 
 `/usr/local/mbsystem/mbcookbook.pdf <../../mbsystem/mbcookbook.pdf>`_

Los datos usados en los ejemplos del tutorial pueden encontrarse en este disco en 
 `/usr/local/mbsystem/examples/ <../../mbsystem/examples/>`_

Puede también consultar la entrada en `wiki de GRASS sobre MB-System <http://grass.osgeo.org/wiki/MB-System>`_
