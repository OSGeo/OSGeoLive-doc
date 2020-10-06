:Author: Trevor Wekel
:Version: osgeolive5.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_mapguide@
@OSGEO_KIND_mapguide@
@VMDK_mapguide@



@NAME_mapguide@ Quickstart
================================================================================

This guide describes how to:

* Getting MapGuide Up and Running 
* Stylization of spatial data using Maestro 

.. comment: ? * Extra note on 64-bit Ubuntu  

Getting MapGuide Up and Running
--------------------------------------------------------------------------------

.. comment: 1. Go to Desktop->Server, click icon Start MapGuide. This will start both MapGuide server and MapGuide Web server

.. comment: .. image:: /images/projects/mapguide/mapguide_desktopIcons.png
.. comment:   :scale: 50 %
.. comment:   :alt: mapguide desktop icons
.. comment:   :align: center 

1. Manually install MapGuide

   .. note:: Due to space constraints on the DVD, MapGuide is currently not installed.

   .. commented out as manual install doesn't currently work: To install
    it open up a terminal and run ``cd gisvm/bin; sudo ./install_mapguide.sh``

2. Open a browser to the address http://localhost:8008/mapguide/phpviewersample/ajaxtiledviewersample.php to view the sample application 

   .. image:: /images/projects/mapguide/mapguide_viewer.png
     :scale: 50 %
     :alt: mapguide desktop icons
     :align: center

MapGuide Maestro
--------------------------------------------------------------------------------

1. To start Maestro, go to Desktop->Server, click icon MapGuide Maestro, this will open Maestro login GUI, as shown in following screenshot. Login to http://localhost:8008/mapguide/mapagent/mapagent.fcgi with username "Administrator" and password "admin" 

   .. image:: /images/projects/mapguide/mapguide_maestroLogin.png
     :scale: 50%
     :alt: screenshot
     :align: center
 
2. Click Ok to go to Maestro main GUI, as shown in following screenshot.

   .. image:: /images/projects/mapguide/mapguide_maestroMain.png
      :scale: 50%
      :alt: mapguide maestro main GUI
      :align: center

3. Expand tree view on left panel, go to Samples->Sheboygan->Layers, double click Buildings, the layer editor for Buildings will open in the right panel, as shown in the following screenshot:

   .. image:: /images/projects/mapguide/mapguide_maestroLayerFeatures.png
      :scale: 50%
      :alt: mapguide maestro layer features
      :align: center

4. Scroll down the right panel to show the Layer Style. On the Featurestyle column, click the ... cell to bring up the Style Editor, as shown in the following screenshot: 

   .. image:: /images/projects/mapguide/mapguide_maestroLayerStyle.png
      :scale: 50%
      :alt: mapguide maestro layer stype panel
      :align: center

   .. image:: /images/projects/mapguide/mapguide_maestroStyleEditor.png
      :scale: 50%
      :alt: mapguide maestro color chooser
      :align: center

5. in Foreground Color dropdown list, select Green, click Ok to close Style Editor. In Maestro Main GUI, click the Disk icon to save. 

   .. image:: /images/projects/mapguide/mapguide_maestroSaveIcon.png
      :scale: 50%
      :alt: mapguide maestro Save icon 
      :align: center

6. to preview the change, open a browser to address http://localhost:8008/mapguide/phpviewersample/ajaxtiledviewersample.php or click the Preview icon in the tool bar from Maestro main GUI), which will open a browser to the above address. In the browser map view, Zoom in to building level, the building color now is Green. 

   .. image:: /images/projects/mapguide/mapguide_buildingColorBeforeChanging.png
      :scale: 50%
      :alt: Building color is grey 
      :align: center

   .. image:: /images/projects/mapguide/mapguide_buildingColorAfterChanging.png
      :scale: 50%
      :alt: Building color is green 
      :align: center

