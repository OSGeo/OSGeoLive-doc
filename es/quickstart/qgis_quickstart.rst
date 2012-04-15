:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Version: osgeo-live4.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _qgis-quickstart-es:
 
.. image:: ../../images/project_logos/logo-QGIS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.qgis.org

********************************************************************************
Guía de inicio rápido de QGIS 
********************************************************************************

Quantum GIS (QGIS) es un cliente de escritorio amigable que permite visualizar, 
administrar, editar, analizar datos y componer mapas.

Esta Guía de Inicio Rápido describe como:

  * actualizar un proyecto de QGIS
  * crear un nuevo proyecto de QGIS con una capa vectorial


Editar un proyecto de QGIS
================================================================================

#. Clic en :menuselection:`Escritorio --> Desktop GIS --> Quantum GIS`.

#. Seleccione :menuselection:`Archivo --> Abrir Proyecto...` desde la barra de menús.

#. Seleccione :file:`QGIS-NaturalEarth-Example.qgs` y pulse :guilabel:`Abrir`.

   * Debes ver un mapa del mundo.

#. Chequee **10m_populated_places_simple** en el árbol de capas

   * Los Poblados ahora son desplegados:

     .. image:: ../../images/screenshots/1024x768/qgis.png
        :scale: 50 %

#. Doble clic en **10m_rivers_lake_centerlines** en el árbol de capas.

#. Cambie el color en Opciones de línea exterior a un diferente tono de azul.

#. Pulse :guilabel:`Aceptar`.

   * Los ríos ahora son representados en un nuevo color.


Crear un nuevo proyecto de QGIS
================================================================================

#. Seleccione :menuselection:`Archivo --> Nuevo proyecto`.

#. Clic en :menuselection:`Capa --> Añadir capa vectorial...`.

#. Navegue hasta los datos :file:`/home/user/data/natural_earth/10m_admin_0_countries.shp`.

#. Pulse :guilabel:`Abrir`.

   * Debes ver los países del mundo


¿Qué sigue ahora?
================================================================================

Para aprender más sobre QGIS, un punto de partida es la `Página de Documentación`_ en el sitio web de QGIS.

OSGeo-Live contiene `Una breve introducción a los SIG`_  y la `Guía de usuario de QGIS`_.

.. _`Página de documentación`: http://www.qgis.org/en/documentation.html
.. _`Una breve introducción a los SIG`: file:///usr/local/share/qgis/qgis-1.0.0_a-gentle-gis-introduction_en.pdf
.. _`Guía de usuario de QGIS`: file:///usr/local/share/qgis/qgis-1.7.0_user_guide_en.pdf





