:Author: OSGeo-Live
:Translator: Jorge Sanz
:Author: Pirmin Kalberer
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-osgearth.gif
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
Guía de inicio rápido de osgEarth
********************************************************************************

osgEarth es una caja de herramientas escalable para visualizar terrenos para OpenSceneGraph_.

.. _OpenSceneGraph: http://www.openscenegraph.org/

Esta guía de inicio rápido describe como arrancar un globo 3D con diferentes capas superpuestas.


Ejecución de osgearth_viewer
================================================================================

* Abre una terminal y arranca el visor de osgEarth::

   export OSG_FILE_PATH=/usr/share/osgearth
   osgearth_viewer --window 50 50 900 700 /usr/share/osgearth/maps/srtm.earth

Deberías ver un globo con imágenes de satélite.

* Haz clic para navegar: haz clic con el botón derecho o mueve la rueda del ratón para hacer *zoom* arriba y abajo
* Arrastra el ratón con el botón izquierdo para inclinar la vista.
* Pulsa :kbd:`h` para mostrar la ayuda.
* Pulsa la tecla :kbd:`ESCAPE` para salir. 


Ejecutar osgviewer con la capa superpuesta de OpenStreetMap
================================================================================

* En una terminal ejecuta::

   osgviewer /usr/share/osgearth/maps/openstreetmap.earth

* Pulsa :kbd:`h` para mostrar la ayuda. Puedes visitar openscenegraph.org_ para obtener más ayuda.

.. _openscenegraph.org: http://www.openscenegraph.org/projects/osg/wiki/Support/UserGuides/osgviewer


¿Qué es lo siguiente?
================================================================================

Para aprender sobre osgEarth, un punto de entrada sería la `página de documentación`_ en el Wiki.

.. _`página de documentación`: http://osgearth.org/wiki/Documentation
