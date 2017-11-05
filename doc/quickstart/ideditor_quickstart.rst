:Source: https://github.com/hotosm/learnosm/blob/gh-pages/_posts/en/0200-12-23-id-editor.md
:Source Reviewed: 2016-03-30  
:Author: Nick Allen
:Version: osgeo-live 11
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Reviewer: Cameron Shorter (transposed from source)

@LOGO_ideditor@
@OSGEO_KIND_ideditor@

********************************************************************************
@NAME_ideditor@
********************************************************************************

The iD editor is the de facto, browser-based OpenStreetMap editor. iD is
fast and easy to use, and allows mapping from various data sources such
as satellite and aerial imageries, GPS, Field Papers or Mapillary.

The iD editor is a great way to edit for small and easy changes that
don't require the advanced features of JOSM (a more advanced mapping
editor). This chapter demonstrates the basics of editing with iD.

.. contents:: Contents

Starting the iD Editor
----------------------

-  The iD editor requires an active connection to the Internet.
-  Open your Internet browser, and go to the OpenStreetMap website at
   http://www.openstreetmap.org.
-  **Login** using your OpenStreetMap account.
-  Pan and zoom the map to the area that you wish to edit. You can pan
   by holding the left mouse button and dragging the map to your desired
   area.
-  Click on the small arrow next to **Edit**. Then click **Edit with iD
   (in-browser editor)**.

  .. image:: /images/projects/ideditor/id-editor_image1.png

iD Editor User Interface
------------------------

  .. image:: /images/projects/ideditor/id-editor_image2.png

1. **Edit Feature Panel:** This panel shows tags from the object
   selected on the map.

   You can add or edit tags from this panel.

2. **Tools:** This panel shows basic editing tools:

   Draw point (node), *shortcut key* **1** |image3|

   Draw line (way), *shortcut key* **2** |image4|

   Draw shape (polygon), *shortcut key* **3** |image5|

   Undo, *shortcut keys* **Ctrl+z** |image6|

   Redo, *shortcut keys* **Ctrl+y** |image7|

   Save changes, *shortcut keys* **Ctrl+s** |image8|

3. **Map panel:** This panel show various configuration functions:

   Zoom In, *shortcut key* **+** |image9|

   Zoom Out, *shortcut key* **-** |image10|

   Go to your location |image11|

   Configure background layer, *shortcut key* **b**

   Map Data, *shortcut key* **f**

   Open Help Menu, *shortcut key* **h**

4. **Information panel:** This panel shows various information, such as
   the scale bar and which users have contributed to the area.

Configuring the Background Layer
--------------------------------

  Click the **Background settings** button or use the *shortcut key*
  **b**. |image14|

  |image15|

  To change the **brightness level** click one of these boxes, the
  levels are 100%, 75%, 50%, and 25% |image16|

  You also can **change the background layer** based on your desired
  tile provider (the default is Bing Aerial Imagery).

  You can add your own map tiles by clicking on **Custom**. For example,
  if you want to **add a Field Paper**  [1], click **Custom** then
  click on the magnifying glass (search) icon to open the following
  window:-

  |image17|
  and enter your **FieldPaper snapshot URL**, which will be something
  like this:
  http://fieldpapers.org/snapshot.php?id=cqhmf2v9#18/37.80593/-122.22715

  To **display GPS tracks from your computer** (GPX format), drag and
  drop the GPX file into iD editor.

  To enable **OpenStreetMap GPS traces** click on the box. In the image
  below, public GPS traces are shown in various colors, indicating the
  direction of travel.

  |osm gps traces|
 
  If there is `imagery offset </en/josm/aerial-imagery>`__, you can
  **correct the imagery offset** by clicking **Fix Alignment**.

  |image18|

-  Click the navigation buttons to move the imagery. Click the reset
   button to return to the default position. |image20|

Basic Editing with iD
---------------------

Adding Points
~~~~~~~~~~~~~

To add a new point, click on the **Point** button. |image3|

-  Your mouse cursor will change into plus (+) sign. Now, click on a
   position that you know to mark a location. For example, if you know
   that there is a hospital in your area, click on the position of the
   hospital building.

   |image21|

-  Notice that a new point is added. At the same time, the left panel
   will change to show a form where you can select attributes for the
   object. Click **Hospital Grounds** to tag the point as a hospital.

   |image22|

-  You can use the forms to fill detail information about your point.
   You can fill hospital name, address, and/or other additional
   information. Note that each feature will have different options,
   depending on what tag you choose from the feature panel.
-  If you make a mistake, such as a wrong location, you can move your
   point to a new location by holding the left mouse button on your
   point and dragging it. Or, if you want to delete your point, click
   the left mouse button on the point, activate the context menu by
   clicking with the right mouse button and then click the button which
   looks like a trashcan. |image23|

   A "point" created in the iD editor is actually a standalone "node"
   with a set of "tags" on it.

Drawing Lines
~~~~~~~~~~~~~

To add a new line, click on the **Line** button. |image4|

-  Your mouse cursor will change into plus (+) sign. Find a road that
   hasn’t been drawn on the map and trace it. Click once on a point
   where the road segment begins, move your mouse, and click to add
   additional points. Double-click to end the drawing process. Notice
   the panel on the left.

   |image24|

-  Just as with a point, select the appropriate tags for your line.
-  You can drag points from the line by clicking your left mouse button
   on a point and dragging it.
-  You also can move the whole line by selecting it, and choosing the
   **Move tool**. Then drag the line to a new position. |image30|
-  When you click your left mouse button on an individual point (node)
   on the line and click on the right mouse button to activate the
   context menu, you will see these tools:
-  Delete point from line. |image23|
-  Disconnect point from line. |image26|
-  Split a line into two lines from the point you’ve selected.
   |image27|
-  When you click your left mouse button on a line (but not on a point),
   you will see these tools:
-  Delete line. |image23|
-  Create a circle from a line (only active if the line is closed)
   |image29|
-  Move line |image30|
-  Form a square shape from a line (only active if the line is closed)
   |image31|
-  Reverse line direction (good for rivers & one-way streets)
   |image32|

A "line" created in the iD editor is actually a "way" with "tags" on it.

.. note::
    A special note about **Deleting**: In general you should avoid
    deleting other people's mapping if it just needs improvement. You
    can delete your own mistakes, but you should try to *adjust* other
    people's mapped objects if they need changes. This preserves the
    history of the items in the OSM database and is respectful of fellow
    mappers. If you really feel something should be deleted, consider
    asking the original mapper or one of the OSM email lists about it
    first.

Drawing Shapes (Polygons)
~~~~~~~~~~~~~~~~~~~~~~~~~

To add a new multi-sided shape, click on the **Area** button.

  |image34|

-  Your mouse cursor will change into plus (+) sign. Try to trace a
   building using the imagery as a guide.
-  You will notice that the color of your shape will change depending on
   the attributes that you assign to it. |image35|
-  The tools that are available when you select a shape and activate the
   context menu with the right mouse button are similar to those when
   you click on a line.

A "polygon" in the iD editor is actually a "closed way" with tags on it.

Drawing Multipolygons
~~~~~~~~~~~~~~~~~~~~~

Sometimes you have to draw a polygon which does not only have an outer
contour but also one or more inner contours. Just think of buildings
with inner courtyards or lakes with islands. *Do not draw all these ways
in one line* so that the inner contours suspend from the outer contour.
Rather draw these contours separate, attach tags to the outer contour
only, select all contours and hit **c** in order to combine them into
what is called a multipolygon.

  .. image:: /images/projects/ideditor/id-editor_create_multipolygon.png
   :alt: create multipolygon


When you select any of the contours of the newly created multipolygon
you can see on the left to which multipolygons it belongs

  .. image:: /images/projects/ideditor/id-editor_part_of_multipolygon.png
   :alt: part of multipolygon


Saving Your Changes
-------------------

When (and if) you want to save your edits to OpenStreetMap, click the
  **Save** button. The panel on the left will show the upload panel.

  |image36|

-  Enter a comment about your edits and click **Save**.

    If you have edited the same feature (point, way or area) at the same
    time as another person was editing it, you will receive a warning
    that your edits cannot be uploaded until you have resolved the
    **conflicts** - choose whose edits to accept & upload your changes.
    *Resolving conflicts often involves accepting the other persons
    edits, in which case you will probably wish to return to the feature
    in question and edit again (**this time save soon after the edit to
    try to avoid a conflict again!**).*

Additional Information and Custom Tags
--------------------------------------

When you are editing an object, you will see a strip of icons at the
bottom of the attribute panel. You can add additional information by
clicking these icons:

-  Add elevation |image37|
-  Add notes |image38|
-  Add contacts / phone number |image39|
-  Add source tag |image40|
-  Add website |image41|
-  Add accessibility information |image42|
-  Add Wikipedia link |image43|

Or, you can add custom tags by clicking **All tags**. |image44|

-  This will show all the tags attached to the feature.

   |image45|

-  Click the plus sign (+) to add keys and values or click the trash
   icon to delete tags.

iD versus JOSM
--------------

**iD is good for...**

-  When you are doing simple edits
-  When you have fast Internet to load the imagery and save the edits
-  When you want to be sure to follow a consistent and simple tagging
   scheme
-  When you are restricted from installing a program on the computer you
   are using

**JOSM is better...**

-  When you are adding many buildings (See buildings_tool plugin)
-  When you are editing many polygons or lines that already exist
-  When you are on an unreliable Internet connection or offline
-  When you are using a specific tagging scheme (or custom presets)

What Next?
----------

- Try the LearnOSM documentation, from which this quickstart was derived: http://learnosm.org/en/beginner/id-editor/

.. |image3| image:: /images/projects/ideditor/id-editor_image3.png
  :height: 24px
.. |image4| image:: /images/projects/ideditor/id-editor_image4.png
  :height: 24px
.. |image5| image:: /images/projects/ideditor/id-editor_image5.png
  :height: 24px
.. |image6| image:: /images/projects/ideditor/id-editor_image6.png
  :height: 24px
.. |image7| image:: /images/projects/ideditor/id-editor_image7.png
  :height: 24px
.. |image8| image:: /images/projects/ideditor/id-editor_image8.png
  :height: 24px
.. |image9| image:: /images/projects/ideditor/id-editor_image9.png
  :height: 24px
.. |image10| image:: /images/projects/ideditor/id-editor_image10.png
  :height: 24px
.. |image11| image:: /images/projects/ideditor/id-editor_image11.png
  :height: 24px
.. |image12| image:: /images/projects/ideditor/id-editor_image12.png
  :height: 24px
.. |Map Data| image:: /images/projects/ideditor/id-editor_map_data.png
.. |image13| image:: /images/projects/ideditor/id-editor_image13.png
  :height: 24px
.. |image14| image:: /images/projects/ideditor/id-editor_image14.png
  :height: 24px
.. |image15| image:: /images/projects/ideditor/id-editor_image15.png
.. |image16| image:: /images/projects/ideditor/id-editor_image16.png
  :height: 24px
.. |image17| image:: /images/projects/ideditor/id-editor_image17.png
.. |osm gps traces| image:: /images/projects/ideditor/id-editor_gps_public.png
.. |image18| image:: /images/projects/ideditor/id-editor_image18.png
.. |image20| image:: /images/projects/ideditor/id-editor_image20.png
.. |image21| image:: /images/projects/ideditor/id-editor_image21.png
.. |image22| image:: /images/projects/ideditor/id-editor_image22.png
.. |image23| image:: /images/projects/ideditor/id-editor_image23.png
  :height: 24px
.. |image24| image:: /images/projects/ideditor/id-editor_image24.png
.. |image30| image:: /images/projects/ideditor/id-editor_image30.png
  :height: 24px
.. |image26| image:: /images/projects/ideditor/id-editor_image26.png
  :height: 24px
.. |image27| image:: /images/projects/ideditor/id-editor_image27.png
  :height: 24px
.. |image29| image:: /images/projects/ideditor/id-editor_image29.png
  :height: 24px
.. |image31| image:: /images/projects/ideditor/id-editor_image31.png
  :height: 24px
.. |image32| image:: /images/projects/ideditor/id-editor_image32.png
  :height: 24px
.. |image34| image:: /images/projects/ideditor/id-editor_image34.png
  :height: 24px
.. |image35| image:: /images/projects/ideditor/id-editor_image35.png
.. |image36| image:: /images/projects/ideditor/id-editor_image36.png
.. |image37| image:: /images/projects/ideditor/id-editor_image37.png
  :height: 24px
.. |image38| image:: /images/projects/ideditor/id-editor_image38.png
  :height: 24px
.. |image39| image:: /images/projects/ideditor/id-editor_image39.png
  :height: 24px
.. |image40| image:: /images/projects/ideditor/id-editor_image40.png
  :height: 24px
.. |image41| image:: /images/projects/ideditor/id-editor_image41.png
  :height: 24px
.. |image42| image:: /images/projects/ideditor/id-editor_image42.png
  :height: 24px
.. |image43| image:: /images/projects/ideditor/id-editor_image43.png
  :height: 24px
.. |image44| image:: /images/projects/ideditor/id-editor_image44.png
  :height: 24px
.. |image45| image:: /images/projects/ideditor/id-editor_image45.png

