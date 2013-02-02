:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. TBD: Cameron's review comments:
  This document is in "DRAFT" state until these comments have been removed.
  I've added a number of review comments, starting with TBD: ...
  Overall: Each section needs to explain what it is about to do and the
  benefits of it. (target audience is a new user).
  We also need screen shots after each significant step.
  Once these comments have been addressed, please remove my comment.

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

  * Update an existing QGIS project
  * Create a new QGIS project with a simple vector layer
  * Load QGIS plugins

.. TBD: Cameron's review comments:
  Describe the other sections include:
  * Analyse data with GRASS and Sextante plugins
  * Load data from Open Street Map

.. contents:: Contents
 

Edit QGIS project
================================================================================

Lets start by opening up an existing QGIS project, and turning layers on and
off.

#. Click :menuselection:`Geospatial --> Desktop GIS --> Quantum GIS`.

#. Choose :menuselection:`File --> Open Project...` from the menu bar.

#. Select :file:`QGIS-NaturalEarth-Example.qgs` and press :guilabel:`Open`.

.. TBD: Cameron's review comments:
  Screen shot here (showing menu selection with NaturalEarth highlighted)

   * You should see a world map.

#. Check **ne_10m_populated_places** in the Layers tree

   * Populated places are now displayed:

     .. image:: ../../images/screenshots/1024x768/qgis.png
        :scale: 70 %

#. Try dragging layers up and down in the legend and see how that
   effects visiblity of the layers below.

#. Have a look at the tools on the tool bar. Try panning, zooming in,
   and zooming back out to full extent again.  Find these tools next
   to the :guilabel:`hand` icon.

.. TBD: Cameron's review comments:
  Screen shot here, touched up with a red circle around the "hand" icon.
  http://wiki.osgeo.org/wiki/Live_GIS_Add_Project#Screen_Shot

Style a layer
================================================================================

Now lets try customising the style of the map.

#. Double click **ne_10m_rivers_lake_centerlines** in the Layers tree.

#. Change the color in Outline Options to a different color, say yellow.

.. TBD: Cameron's review comments:
  Screen shot here

#. Press :guilabel:`OK`.

   * Notice that rivers are now rendered in your new color.

.. TBD: Cameron's review comments:
  Screen shot here

Create a new QGIS project
================================================================================

Lets now create a new QGIS project and load our own data.

#. Choose :menuselection:`File --> New Project`.

#. Click :menuselection:`Layer --> Add Vector Layer...`.

#. Browse to dataset :file:`/home/user/data/natural_earth2/ne_10m_admin_0_countries.shp`.

#. Press :guilabel:`Open`.

   * You should see all world countries.

.. TBD: Cameron's review comments:
  Screen shot here

Connect to a PostGIS spatial database
================================================================================

.. TBD: Cameron's review comments:
  For Info of author: I've switched from OSM dataset to Natural Earth,
  as OSM extent changes between releases, which means screenshots from
  this quickstart would become dated.

Lets now include a layer from a Postgres database.

#. Choose :menuselection:`Layer --> Add PostGIS Layers...`.

   * On OSGeo-Live, both Natural Earth and OpenStreetMap Postgis databases
     are already available. We will use the Natural Earth database.
     If you wanted to add a new database, you would select the :guilabel:`New`
     button and fill in the database parameters.

.. TBD: Cameron's review comments:
  Screen shot here

#. Select the "Natural Earth" connection and press :guilabel:`Connect`.

   * A list of database tables will appear.

.. TBD: Cameron's review comments:
  Screen shot here

#. Select ``ne_10_populated_places`` and click :guilabel:`Add`.

   * For more details about selecting a Postgis database, see the :doc:`PostGIS Quickstart <postgis_quickstart>`.

Using the GRASS Toolbox
================================================================================

There have been many plugins written for QGIS which extend QGIS's core
functionality. We will now look at the GRASS plugin.

.. TBD: Cameron's review comments:
  Explain what functionality the GRASS function provides.

.. TBD: Cameron's review comments:
  In some of the steps below, we need to explain why we are about to do the step. "In order to XXX, press the YYY button, then ..." or "We will now XXX. Open the ..."

#. Choose :menuselection:`File --> New Project`.

#. Choose :menuselection:`Plugins --> Manage Plugins`.

.. TBD: Cameron's review comments:
  Screen shot here, show menu, which has been scrolled to show GRASS, ticked.

#. Select the `GRASS` plugin. Then click :guilabel:`Ok`.

   * Notice that a new `GRASS` menu icon has been added to the Toolbar.

.. TBD: Cameron's review comments:
  What does the follow step do?

#. Choose :menuselection:`Plugins --> GRASS --> Open mapset`.

   * The GRASS GIS data base will be automatically set to `~/grassdata` on the disc.

.. TBD: Cameron's review comments:
  What does the follow step do?

#. Choose the `nc_basic_smp` Location and `user1` working mapset, then click :guilabel:`Ok`.

#. Choose :menuselection:`Plugins --> GRASS --> Add GRASS raster layer`.

   * Select the PERMANENT mapset, then select the `elevation_shade` map and click :guilabel:`Ok`.

.. TBD: Cameron's review comments:
  Screen shot here.

   * Double click on the `elevation` map in the QGIS layer list and set its transparency to 65%.

#. Choose :menuselection:`Plugins --> GRASS --> Add GRASS vector layer`.

   * From the PERMANENT mapset select the `roadsmajor` map and click :guilabel:`Ok`.

You also have access to many of the powerful GRASS analysis modules.

.. TBD: Earlier review comments:
.. maybe describe a raster processing task instead of a NVIZ one?

.. TBD: Cameron review comments:
  We need to describe what this algorithm is going to do for us. Eg:
  "A commonly used GRASS algorithm is the XXX, which is used for YYY. Lets
  try that now. ..."
  I'm not going to comment further on this, as we might decide to change
  the algorithm. Whatever algorithm is chosen, it will require more
  screen shots.

#. Choose :menuselection:`Plugins --> GRASS --> Open GRASS tools`.

   * A long list of analysis tools will appear.

#. Type ``nviz`` into the Modules List's Filter box then select `NVIZ`. You may need to drag the corner of the toolbox window to make it a bit larger.

#. In the new module tab that pops open, select the `elevation` map as the map for elevation. Then depress the rectangle with red corners button on the right of the map name to use the region bounds and resolution of that map. The computational region is a core theme in GRASS raster processing.

#. Select `roadsmajor` for the vector overlay, then click :guilabel:`Run`.

#. Once the NVIZ 3D view opens, maximize the window and drag the positioning puck in the compass box on the left to a nice view.

#. Choose :menuselection:`Visualize --> Raster surfaces` and set the `fine` resolution to 1, then click the green :guilabel:`DRAW` button in the top left and wait while it renders.


Using the Sextante Toolbox
================================================================================

.. TBD: Cameron's review comments:
  I'd suggest that we should either include GRASS or Sextante, as I assume
  they introduce similar concepts of using plugins?
  If we are to include Sextante, then we need to describe using one of the
  Sextane features.
  I suggest that it would be better to say: "Why don't you now explore other
  QGIS plugins. For instance, why not try the XXX algorithm in the Sextante plugin."
#. Choose :menuselection:`Plugins --> Manage Plugins`.

#. Type ``sextante`` into the Filter box and select the `SEXTANTE` plugin. Then click :guilabel:`Ok`.

   * A new `Analysis` menu and toolbar will appear.

#. Choose :menuselection:`Analysis --> Sextante Toolbox`.

   * A new toolbar will open on the right side of the screen with many processing tools to choose from.


.. TBD: Cameron's review comments:
  I've removed the section describing how to add an OpenStreetMap plugin
  as it is not describing anything specifically different to the other plugins.



What Next?
================================================================================

Tutorials for more advanced features of QGIS are collected
as `OSGeo-Live QGIS tutorials`_.

To learn more about QGIS, a good starting point is the `Documentation page`_ on
the QGIS homepage.

`A Gentle Introduction to GIS`_ `[1]`_ and the `QGIS User Guide`_ `[2]`_ are also included on OSGeo-Live.

.. _`OSGeo-Live QGIS tutorials`: ../../qgis/tutorials/en/
.. _`Documentation page`: http://www.qgis.org/en/documentation.html
.. _`A Gentle Introduction to GIS`: http://docs.qgis.org/html/en/docs/gentle_gis_introduction/index.html
.. _`QGIS User Guide`: http://docs.qgis.org/html/en/docs/user_manual/index.html
.. _`[1]`: ../../qgis/qgis-1.0.0_a-gentle-gis-introduction_en.pdf
.. _`[2]`: ../../qgis/QGIS-1.8-UserGuide-en.pdf
