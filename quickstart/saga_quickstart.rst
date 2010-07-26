:Author: Johan Van de Wauw
:Version: osgeo-live4.0
:License: Creative Commons

.. image:: images/project_logos/logo-saga.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.saga-gis


*******************
SAGA GIS Quickstart
*******************

Running
=======

To run SAGA GIS on the Live DVD, click on the SAGA link on the Desktop.

Open the SAGA GUI and load the grid ** via the File|Grid|Load Grid menu. You will 
get a message in the General tab of the Messages window regarding the success or 
failure of this task. You should see something like Load Grid: DGM_30m_Mt.St.Helens_SRTM.grd...okay. 
Once you loaded the dataset, it will show up in the Data tab of the Workspace window. 
It will be listed under Grids and the grid system it belongs to. In this case, the grid 
system information will look like 30;312x 458y; 557970x 5108130y. The first number is
the cell size (30 meters), the next two numbers show the number of cells in x and y 
direction respectively, and the last two numbers are the origin of the grid. SAGA's grid 
systems are referenced by the bottom left corner. This, and some more useful information 
on the dataset show up if you select the Description tab of the Properties window. Once 
you click on the tab, you will see not only more detailed information on the grid system, 
but also the Value Type of the grid (here FLOAT), the Value Range, some statistical measures 
and the Memory Size.

To display the dataset in a map view, just double click on the dataset in the Data tab of the Workspace window. A new Map window will open up with the dataset displayed. The canvas is framed: top and left the x- and y-world coordinates are displayed. Bottom and right you see rulers in map units. Move the mouse pointer over the map and watch the x-, y- and z-coordinates displayed in the bottom bar of the SAGA GUI window. The z-coordinates displayed correspond to the elevation values of the dataset (be aware that the values displayed are always those of the dataset selected in the Data or Maps tab).

Now use the navigation tools to zoom and pan. The Zoom tool is selected by default. A left click on the map zooms in, a right click zooms out. Holding the left mouse button down, dragging to the opposite corner and letting the mouse button up allows you to zoom to an area of interest. If you zoom in quite a lot, you will see that the cell values are getting displayed. To pan, select the Pan tool and click and drag to move the map. Have a look at the other bottoms in the tool bar: these allow you to zoom e.g. to Full Extent.

Creating shaded relief map view
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Let's enhance the map display by calculating a shaded relief map. Switch to the Modules tab of the Workspace window and click on the plus sign left to the Terrain Analysis - Lightning, Visibility module library: the list with the modules of this library will show up. Now select the Analytical Hillshading module and then select the Settings tab of the Properties window. This will show up the module parameters (also have a look at the Description tab, which will display more information about the module and it's parameters). Click in the right column of the Grid system parameter (where [not set] is displayed) and select the grid system of the Mt. St. Helens dataset. Next click into the right column of the Elevation parameter and select the dataset. Click in the right column of the Shading Method option and select Standard. Now press the Apply and then the Execute button. A new dataset containing the hillshade will be calculated. More information about the execution of SAGA modules is provided in the Using SAGA Modules.

Have a look at the Data tab of the Workspace window - you will find the newly created dataset. Double click on the 'Analytical Hillshading' dataset and select New in the dialog popping up. This will display the dataset in a new map view. After inspecting the dataset, close the Map window by selecting Close from the Window menu.

Now double click on the hillshade dataset again, but select the Map containing the elevation dataset in the dialog popping up (Add layer to selected map). This will place the hillshade on top of the elevation dataset.

Now switch to the Maps tab of the Workspace window. You will see the entry of your map and the datasets the map is composed of. The drawing order is top to buttom. Now do a right click on the 'Analytical Hillshading' dataset and select Move To Buttom from the context menu popping up. This will change the drawing order, placing the hillshade beneath the elevation dataset (which now shows up again in the map view). Now select the elevation dataset (by left clicking) and have a look at the Settings tab of the Properties window. Find the Display section of the parameters and click in the right column of the Transparency option. Enter a value of 30 and press the Apply button. Now you will see your elevation values shaded by relief.


Feel free to try other Transparency settings or even try other Shading Methods in the Analytical Hillshading module (in case you do not change the output dataset parameter, the changes will be written to the grid already created, i.e. you will see the changes in the map view immediately).

3D visualization
~~~~~~~~~~~~~~~~
In a next step, you might like to visualize your map in 3D. Be sure your Map window is selected and press the Show 3D-View button in the tool bar. In the dialog popping up, select the grid system containing your elevation dataset and set the Mt. St. Helens dataset as the Elevation parameter. Once you press the Okay button, the 3D view of your map will show up. Hold the left mouse button pressed and move the mouse to rotate and tilt the map. Use the right mouse button to zoom in/out and shift the map. Also have a look at the tool bar of the 3D View: the buttons replicate the mouse operations and offer further functionality. To close the 3D view select the Close option from the Window menu.
