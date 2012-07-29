:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Version: osgeo-live4.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-QGIS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.qgis.org

********************************************************************************
QGIS Quickstart 
********************************************************************************

Quantum GIS (QGIS) is a user friendly Desktop GIS client which lets
you visualize, manage, edit, analyse data and compose printable maps.

This Quick Start describes how to:

  * update an existing QGIS project
  * create a new QGIS project with a simple vector layer


Edit QGIS project
================================================================================

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
================================================================================

#. Choose :menuselection:`File --> New Project`.

#. Click :menuselection:`Layer --> Add Vector Layer...`.

#. Browse to dataset :file:`/home/user/data/natural_earth/10m_admin_0_countries.shp`.

#. Press :guilabel:`Open`.

   * You should see all world countries.


Connect to a PostGIS spatial database
================================================================================

#. Choose :menuselection:`File --> New Project`.

#. Choose :menuselection:`Layer --> Add PostGIS Layers...`.

   * Both Natural Earth and OpenStreetMap databases will be available.

#. With the OpenStreetMap connection selected, press :guilabel:`Connect`.

   * A list of database tables will appear.

#. Select ``planet_osm_roads`` and click :guilabel:`Add`.

   * See the :doc:`PostGIS Quickstart <postgis_quickstart#Mapping>` for a more detailed exercise.

Using the GRASS Toolbox
================================================================================

#. Choose :menuselection:`File --> New Project`.

#. Choose :menuselection:`Plugins --> Manage Plugins`.

#. Type ``grass`` into the Filter box and select the `GRASS` plugin. Then click :guilabel:`Ok`.

   * A new `GRASS` menu with in the `Plugin` menu and a new toolbar will appear.

#. Choose :menuselection:`Plugins --> GRASS --> Open mapset`.

   * The GRASS GIS data base will be automatically set to `~/grassdata` on the disc.

#. Choose the `nc_basic_smp` Location and `user1` working mapset, then click :guilabel:`Ok`.

#. Choose :menuselection:`Plugins --> GRASS --> Add GRASS raster layer`.

   * From the PERMANENT mapset select the `elevation_shade` map and click :guilabel:`Ok`.

#. Choose :menuselection:`Plugins --> GRASS --> Add GRASS raster layer`.

   * From the PERMANENT mapset select the `elevation` map and click :guilabel:`Ok`.

   * Double click on the `elevation` map in the QGIS layer list and set its transparency to 65%.

#. Choose :menuselection:`Plugins --> GRASS --> Add GRASS vector layer`.

   * From the PERMANENT mapset select the `roadsmajor` map and click :guilabel:`Ok`.

You also have access to many of the powerful GRASS analysis modules.

.. maybe describe a raster processing task instead of a NVIZ one?

#. Choose :menuselection:`Plugins --> GRASS --> Open GRASS tools`.

   * A long list of analysis tools will appear.

#. Type ``nviz`` into the Filter box then select `NVIZ`.

#. In the new module tab that pops open, select the `elevation` map as the map for elevation, and `roadsmajor` for the vector overlay, then click :guilabel:`Run`.

#. Once the NVIZ 3D view opens, maximize the window, set z-exag to 10.0, perspective to 15.0, height to 3500, and drag the positioning puck in the compass box on the left to a nice view.

#. Choose :menuselection:`Visualize --> Raster surfaces` and set the `fine` resolution to 1.


Using the Sextante Toolbox
================================================================================

#. Choose :menuselection:`Plugins --> Manage Plugins`.

#. Type ``sextante`` into the Filter box and select the `SEXTANTE` plugin. Then click :guilabel:`Ok`.

   * A new `Analysis` menu and toolbar will appear.

#. Choose :menuselection:`Analysis --> Sextante Toolbox`.

   * A new toolbar will open on the right side of the screen with many processing tools to choose from.


Using the OpenStreetMap plugin
================================================================================

#. Open the Terminal Emulator from the Xubutu :menuselection:`Applications --> Accessories` menu.

   * Make a working copy of the OSM data in the home directory:

::

  cp data/osm/feature_city_CBD.osm.bz2 .
  bzip2 -d feature_city_CBD.osm.bz2

#. In QGIS, choose :menuselection:`File --> New Project`.

#. Choose :menuselection:`Plugins --> Manage Plugins`.

#. Type ``open`` into the Filter box and select the `OpenStreetMap` plugin. Then click :guilabel:`Ok`.

   * A new `Web` menu and toolbar will appear.

#. Choose :menuselection:`Web --> OpenStreetMap --> Load OSM from file`.

#. Select the `feature_city_CBD.osm` file you just copied into the home directory.

#. Tick the `name`, `highway`, and `amenity` check boxes.

#. Choose :guilabel:`Medium scale` rendering, then click :guilabel:`Ok`.


What Next?
================================================================================

Tutorials for more advanced features of QGIS are collected
as `OSGeo-Live QGIS tutorials`_.

To learn more about QGIS, a starting point is the `Documentation page`_ on
the QGIS homepage.

OSGeo-Live contains a `A Gentle Introduction to GIS`_  and
the `QGIS User Guide`_.

.. _`OSGeo-Live QGIS tutorials`: ../../qgis/tutorials/
.. _`Documentation page`: http://www.qgis.org/en/documentation.html
.. _`A Gentle Introduction to GIS`: ../../qgis/qgis-1.0.0_a-gentle-gis-introduction_en.pdf
.. _`QGIS User Guide`: ../../qgis/qgis-1.7.0_user_guide_en.pdf
