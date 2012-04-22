:Author: OSGeo-Live
:Author: Raf Roset
:Version: osgeo-live4.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-QGIS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.qgis.org

********************************************************************************
QGIS inici ràpid
********************************************************************************

Quantum GIS (QGIS) és un programa SIG amigable d'escriptori que permet visualitzar, gestionar, editar i analitzar dades, i confeccionar mapes per ser impresos.

Aquest guia d'inici ràpid descriu com:

  * actualitzar un projecte QGIS existent
  * crear un nou projecte QGIS amb una capa vector simple


Editar un projecte QGIS
================================================================================

#. Feu clic a :menuselection:`Desktop --> Desktop GIS --> Quantum GIS`.

#. Escolliu :menuselection:`File --> Open Project...` de la barra de menú.

#. Escolliu :file:`QGIS-NaturalEarth-Example.qgs` i premeu :guilabel:`Open`.

   * Haurieu de veure un mapa del món.

#. Marqueu **10m_populated_places_simple** a l'arbre de Capes

   * Es mostren els llocs habitats:

     .. image:: ../../images/screenshots/1024x768/qgis.png
        :scale: 50 %

#. Feu doble clic a  **10m_rivers_lake_centerlines** a l'arbre de Capes.

#. Canvieu el color a Outline Options a un blau diferent.

#. Premeu :guilabel:`OK`.

   * Els rius ara es mostren amb un nou color.


Crear un nou projecte QGIS
================================================================================

#. Escolliu :menuselection:`File --> New Project`.

#. Feu clic a :menuselection:`Layer --> Add Vector Layer...`.

#. Seleccioneu les dades :file:`/home/user/data/natural_earth/10m_admin_0_countries.shp`.

#. Premeu :guilabel:`Open`.

   * Haurieu de veure tots els països del món.


Què més?
================================================================================

Les guies per a les funciones avançades de QGIS estan recollides a `OSGeo-Live QGIS tutorials`_.

Per saber més de QGIS, un lloc on començar és `Documentation page`_ a la pàgina de QGIS.

OSGeo-Live conté `A Gentle Introduction to GIS`_  i `QGIS User Guide`_.

.. _`OSGeo-Live QGIS tutorials`: ../../qgis/tutorials/
.. _`Documentation page`: http://www.qgis.org/en/documentation.html
.. _`A Gentle Introduction to GIS`: ../../qgis/qgis-1.0.0_a-gentle-gis-introduction_en.pdf
.. _`QGIS User Guide`: ../../qgis/qgis-1.7.0_user_guide_en.pdf