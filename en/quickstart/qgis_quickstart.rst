:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Version: osgeo-live4.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _qgis-quickstart:
 
.. image:: ../../images/project_logos/logo-QGIS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.qgis.org

***************
QGIS Quickstart 
***************

Quantum GIS (QGIS) is a user friendly Desktop GIS client which lets
you visualize, manage, edit, analyse data and compose printable maps.

This Quick Start describes how to:

  * update an existing QGIS project
  * create a new QGIS project with a simple vector layer


Edit QGIS project
=================

#. Click :menuselection:`Desktop --> Desktop GIS --> Quantum GIS`.

#. Choose :menuselection:`File --> Open Project...` from the menu bar.

#. Select :file:`QGIS-NaturalEarth-Example.qgs` and press :guilabel:`Open`.

   * You should see a world map.

#. Check **10m_populated_places_simple** in the Layers tree

   * Populated places are now displayed:

     .. image:: ../../images/screenshots/1024x768/qgis.png
        :scale: 50 %

#. Double click **10m_rivers_lake_centerlines** in the Layers tree.

#. Change the color in Outline Options to a different blue tone.

#. Press :guilabel:`OK`.

   * Rivers are now rendered in a new color.


Create a new QGIS project
=========================

#. Choose :menuselection:`File --> New Project`.

#. Click :menuselection:`Layer --> Add Vector Layer...`.

#. Browse to dataset :file:`/home/user/data/natural_earth/10m_admin_0_countries.shp`.

#. Press :guilabel:`Open`.

   * You should see all world countries.


What Next?
==========

To learn more about QGIS, a starting point is the `Documentation page`_ on the QGIS homepage.

OSGeo-Live contains a `A Gentle Introduction to GIS`_  and the `QGIS User Guide`_.

.. _`Documentation page`: http://www.qgis.org/en/documentation.html
.. _`A Gentle Introduction to GIS`: ../../qgis/qgis-1.0.0_a-gentle-gis-introduction_en.pdf
.. _`QGIS User Guide`: ../../qgis/qgis-1.6.0_user_guide_en.pdf





