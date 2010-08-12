:Author: Stefan Tzeggai
:Version: osgeo-live4.0
:License: Creative Commons

 
.. image:: images/project_logos/logo-AtlasStyler.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://en.geopublishing.org/AtlasStyler

.. _atlasstyler-quickstart: 

***********************
AtlasStyler Quickstart 
***********************

Manuals
=======
* `AtlasStyler manual, German, Created for version 1.2 <file:///usr/share/doc/geopublishing/AtlasStyler_v1.2_DE_Handbuch_090601.pdf>`_  

Tutorials
=========

AtlasStyler (Styling layers with SLD)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* `AtlasStyler Labelling tutorial, English, Created for version 1.3 <file:///usr/share/doc/geopublishing/tutorial_AtlasStyler_Labelling/AtlasStyler_v1.3_EN_LabellingTutorial_091012.pdf>`_
* `AtlasStyler tutoriel d'étiquetage SLD, Frensh, Created for version 1.3 <file:///usr/share/doc/geopublishing/tutorial_AtlasStyler_Labelling/AtlasStyler_v1.3_FR_Tutoriel_etiquetage_091012.pdf>`_

More tutorials are posted as blog entries at `http://en.geopublishing.org <http://en.geopublishing.org">`_ (you have to be online to visit this webpage).

Running
=======

Getting Started
~~~~~~~~~~~~~~~

AtlasStyler is a GUI based application, that allows you to create .SLD files for your vectordata. 

1) Go to :menuselection:`Applications --> Education --> AtlasStyler`. 
 
2) Use the import buttons to either add ESRI Shapefiles oder PostGIS datasources to your project. 

2.1) If you select PostGIS, the correct database settings are already preset. Just enter password 'user' to add the '10m_land' layer.

2.2) If you select Shapefile, choose '/usr/local/share/data/natural_earth/10m_land.shp' for example. 

3) Click the tool-icon in the layer legend and select style. The main AtlasStyler dialog will open. While you change the style, the 'automatic preview' option at the bottom will allow to see your changes on the fly. If the data is too big (or the system too slow) deactivate the 'automatic preview' checkbox.

