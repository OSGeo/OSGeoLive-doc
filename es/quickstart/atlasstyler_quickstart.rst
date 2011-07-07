:Author: Stefan Tzeggai
:Version: osgeo-live4.0
:License: Creative Commons

 
.. image:: ../../images/project_logos/logo-AtlasStyler.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://en.geopublishing.org/AtlasStyler

.. _atlasstyler-quickstart: 

**************************************
Guía de inicio rápido de AtlasStyler
**************************************

Manuales
========
* `Manual de AtlasStyler, Idioma alemán, Creado para la versión 1.2 <../../geopublishing/AtlasStyler_v1.2_DE_Handbuch_090601.pdf>`_  

Tutoriales
==========

AtlasStyler (Estilo de capas con SLD)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* `AtlasStyler tutorial de etiquetado, Idioma inglés, Creado para la versión 1.3 <../../geopublishing/tutorial_AtlasStyler_Labelling/AtlasStyler_v1.3_EN_LabellingTutorial_091012.pdf>`_
* `AtlasStyler tutorial de etiquetado SLD, Idioma francés,  Creado para la versión 1.3 <../../geopublishing/tutorial_AtlasStyler_Labelling/AtlasStyler_v1.3_FR_Tutoriel_etiquetage_091012.pdf>`_

Más tutoriales se publican como entradas en el blog `http://en.geopublishing.org <http://en.geopublishing.org>`_ (necesita estar en linea para visitar la página).

Ejecutar
========

Primeros pasos
~~~~~~~~~~~~~~~

AtlasStyler es una aplicación para usuario final, que permite crear archivos .SLD para datos vectoriales.

0) El Live DVD utiliza el sistema operativo Xubuntu, el cual tiene temporalmente un pequeño problema con las aplicaciones basadas en Java: como solución, por favor de click derecho en la barra del menú
(donde se listan 'Applications' y 'Places') y seleccione 'Customize Panel'. Aquí, seleccione la opción 'Autohide'. Con esto, la barra de menú se oculta, excepto cuando el ratón alcance la parte superior de 
la pantalla.

1) Vaya a : menú de selección:`Geospatial --> Desktop GIS --> AtlasStyler` para iniciar la aplicación.

2) Utilice los botones de importar para adicionar archivos shapefiles de ESRI o fuentes de datos de PostGIS a su proyecto.

3) Para importar desde PostGIS, los parámetros correctos ya están preestablecidos en el diálogo. Sólo ingrese el password (contraseña) 'user' y adicione la capa '10m_land'

4) Para importar un Shapefile, escoja, por ejemplo '/home/user/data/natural_earth/10m_lakes.shp'

5) De click en el ícono de la leyenda de la capa y seleccione el estilo. El diálogo principal de AtlasStyler se abrirá. Mientras modifica el estilo, la opción 'automatic preview' que está al pie, permitirá
   ver los cambios sobre la marcha. Si los datos son muy grandes (o el sistema en muy lento) desactive el elemento 'automatic preview'.

6) Diviértase y/o por favor de su realimentación a tzeggai@wikisquare.de

