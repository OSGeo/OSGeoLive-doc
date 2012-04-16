:Author: Stefan Tzeggai
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-Geopublisher.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://en.geopublishing.org/Geopublisher

********************************************************************************
Geopublisher Quickstart 
********************************************************************************

Demo-Atlas
================================================================================
* `Tiny demo atlas with an interactive diagram and a world map on socio-economic data, English, Created for version 1.5 <../../geopublishing/ChartDemoAtlas_WorkingCopy.zip>`_

Tutorials
================================================================================
Geopublisher (Create and export atlases)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* `First "Hands on Geopublisher" tutorial, English, Created for version 1.3 <../../geopublishing/tutorial_Geopublisher_1/HandsOn-Geopublisher1_EN.pdf>`_
* `First "Hands on Geopublisher" tutorial, French, Created for version 1.3 <../../geopublishing/tutorial_Geopublisher_1/HandsOn-Geopublisher1_FR.pdf>`_
* `Second "Hands on Geopublisher" tutorial, English, Created for version 1.3 <../../geopublishing/tutorial_Geopublisher_2/HandsOn-Geopublisher2_EN.pdf>`_
* `Second "Hands on Geopublisher" tutorial, French, Created for version 1.3 <../../geopublishing/tutorial_Geopublisher_2/HandsOn-Geopublisher2_FR.pdf>`_

AtlasStyler (Styling layers with SLD)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* `AtlasStyler Labelling tutorial, English, Created for version 1.3 <../../geopublishing/tutorial_AtlasStyler_Labelling/AtlasStyler_v1.3_EN_LabellingTutorial_091012.pdf>`_
* `AtlasStyler tutoriel d'étiquetage SLD, French, Created for version 1.5 <../../geopublishing/tutorial_AtlasStyler_Labelling/AtlasStyler_v1.5_FR_Tutoriel_d_etiquetage_101006.pdf>`_

More tutorials are posted as blog entries at `http://en.geopublishing.org <http://en.geopublishing.org">`_ (you have to be online to visit this webpage).

Manuals
================================================================================

Geopublisher (Create and export atlases)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* `Geopublisher manual, French, Created for version 1.2 <../../geopublishing/Geopublisher_v1.2_FR_Handbuch_090803.pdf>`_
* `Geopublisher manual, German, Created for version 1.2 <../../geopublishing/Geopublisher_v1.2_DE_Handbuch_090801.pdf>`_    

AtlasStyler (Styling layers with SLD)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* `AtlasStyler manual, German, Created for version 1.2 <../../geopublishing/AtlasStyler_v1.2_DE_Handbuch_090601.pdf>`_  

AtlasViewer (How to use atlases created with Geopublisher)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* `AtlasViewer manual, French, Created for version 1.3 <../../geopublishing/AtlasViewer_v1.3_FR_Manual_090522.pdf>`_
* `AtlasViewer manual, English, Created for version 1.3 <../../geopublishing/AtlasViewer_v1.3_EN_Manual_090522.pdf>`_ 
* `AtlasViewer manual, German, Created for version 1.3 <../../geopublishing/AtlasViewer_v1.3_DE_Handbuch_090522.pdf>`_  


Running
================================================================================

Getting Started
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Geopublisher is an end-user application, that allows you to compile and style your geodata and publish it to the world quickly. This DVD contains a small demo atlas, that you can use as a base before adding you own data.

0) The OSGeo-Live DVD uses the Xubuntu Operating system which has a temporary small problem with Java-based applications: As a solution please right-click on menu-bar (Where 'Applications' and 'Places' is listed) and select 'Customize Panel'. There check the 'Autohide' option. The menubar is now hidden unless your mouse reaches the top of the screen. 

1) Uncompress the demo atlas: Click on `this link <../../geopublishing/ChartDemoAtlas_WorkingCopy.zip>`_ and select 'Open with Archive Manager (default)'. This will open the ZIP file. Next select the third icon in the toolbar to extract and choose 'Desktop' as the target folder. Now you should have a folder 'ChartDemoAtlas' on your desktop. You can close the Archive Manager application.

3) Now start the Geopublisher application. :menuselection:`Geospatial --> Desktop GIS --> Geopublisher`. Geopublisher starts and will ask you which atlas to open. Select 'atlas.gpa' from folder 'ChartDemoAtlas'. It now loads the atlas. You should see a triparted GUI with a map-pool, data-pool and menu area. This GUI allows you to create and organize multiple multi-language maps.

4) Add a Shapefile to the atlas: Select :menuselection:`File --> Import... --> Import files` and select '/home/user/data/natural_earth/10m_lakes.shp'. Geopublisher will ask you to describe that new layer with a title and a description. If that atlas would be configured to be multilingual, this information would be asked for every language. You will see the new layer appearing the DataPool section.

5) Open the map 'The digital divide' by double-clicking it in the map-pool (top right area). A second window opens. To add the layer to the may, use drag'n'drop: Position the 'Map Composer' windows so that you can still see the DataPool. Click the new layer and hold the left mouse-button. Move the layer into the legend area of the Map Composer window and release it there. Using drag'n'drop you can also change the order of layers in the map. Try out styling the layer with AtlasStyler (tool-icon -> style) and finally close the window.

5) Export the atlas: :menuselection:`File --> Export` and follow the wizard: Export online and offline version of the atlas to a new directory 'Desktop/ChartAtlasExported'. When the export finished, click the "open folder" button. You see the exported and stand-alone versions of the atlas, that you were just editing.

6) Try the exported atlas: Go into the `Desktop/ChartAtlasExported/DISK` folder and run `start.sh`. 

7) Geopublisher has many more possibilities of course. Go to :menuselection:`Applications --> Education --> Geopublishing documentation` and look at all the documentation provided.

8) Have fun and/or please give feedback to tzeggai@wikisquare.de
