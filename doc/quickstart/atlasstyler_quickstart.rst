:Author: Stefan Tzeggai
:Version: osgeolive4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_atlasstyler@
@OSGEO_KIND_atlasstyler@
@VMDK_atlasstyler@



********************************************************************************
@NAME_atlasstyler@ Quickstart
********************************************************************************

Manuals
================================================================================
* `AtlasStyler manual, German, Created for version 1.2 <../../geopublishing/AtlasStyler_v1.2_DE_Handbuch_090601.pdf>`_

Tutorials
================================================================================

AtlasStyler (Styling layers with SLD)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* `AtlasStyler Labelling tutorial, English, Created for version 1.3 <../../geopublishing/tutorial_AtlasStyler_Labelling/AtlasStyler_v1.3_EN_LabellingTutorial_091012.pdf>`_
* `AtlasStyler tutoriel d'étiquetage SLD, French, Created for version 1.3 <../../geopublishing/tutorial_AtlasStyler_Labelling/AtlasStyler_v1.3_FR_Tutoriel_etiquetage_091012.pdf>`_

More tutorials are posted as blog entries at `http://en.geopublishing.org <http://en.geopublishing.org>`_ (you have to be online to visit this webpage).

Running
================================================================================

Getting Started
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

AtlasStyler is an end-user based application, that allows you to create .SLD files for your vectordata.

1) The OSGeoLive DVD uses the Lubuntu Operating system which has a temporary small problem with Java-based applications: As a solution please right-click on menu-bar (Where 'Applications' and 'Places' is listed) and select 'Customize Panel'. There check the 'Autohide' option. The menubar is now hidden unless your mouse reaches the top of the screen.

#) Go to |menu_atlasstyler|

#) Use the import buttons to either add ESRI Shapefiles oder PostGIS datasources to your project.

#) To import PostGIS, the correct database settings are already preset in the dialog. Just enter the password 'user' to add the 'ne_10m_land' layer.

#) To import a Shapefile, choose '/home/user/data/natural_earth2/ne_10m_lakes.shp' for example.

#) Click the tool-icon in the layer legend and select style. The main AtlasStyler dialog will open. While you change the style, the 'automatic preview' option at the bottom will allow to see your changes on the fly. If the data is too big (or the system too slow) deactivate the 'automatic preview' checkbox.

#) Have fun and/or please give feedback to tzeggai@wikisquare.de

