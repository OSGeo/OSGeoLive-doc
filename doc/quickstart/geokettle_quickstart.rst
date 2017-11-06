:Author: Jean Mathieu
:Author: Thierry Badard
:Reviewer: Sergio Baños Calvo
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live7.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_geokettle@
@OSGEO_KIND_geokettle@


********************************************************************************
@NAME_geokettle@ Quickstart
********************************************************************************

GeoKettle is a “spatially-enabled” version of Pentaho Data Integration (also known as Kettle). It is a powerful, metadata-driven spatial ETL (Extract, Transform and Load) tool dedicated to the integration of different data sources for building and updating geospatial databases, data warehouses and web services.

GeoKettle enables the Extraction of data from data sources, the Transformation of data in order to correct errors, clean data, change data structure, make data compliant with standards, and Loading of transformed data into a target DataBase Management System (DBMS), GIS file, or geospatial web service. GeoKettle is particularly useful for automating complex and repetitive data processing without producing specific code, converting between data formats, migrating data between databases, feeding data into databases, etc.

This Quick Start describes how to:

  * Load an existing data transformation
  * Create a new data transformation

.. contents:: Contents
 
Start GeoKettle 
================================================================================

#. Choose :menuselection:`Spatial Tools --> GeoKettle` from the Geospatial start menu
#. Please wait, the application will take a few moments to start up
#. You will be prompted with the following dialog. Fill in the repository information or simply click the "No repository" button to enter the GeoKettle's workbench

  .. image:: /images/projects/geokettle/geokettle_welcome.png
    :scale: 80 %

Workbench
================================================================================

As illustrated in the following screenshot, the Workbench window is composed of different panels.

  .. image:: /images/projects/geokettle/geokettle_workbench.png
    :scale: 80 %

The left part acts as a catalog containing all the steps which could compose a data transformation. The right part of the workbench is the area where the transformation itself would be designed and run/debugged.

The contents of these panels will be described further as we demonstrate their use.

Loading an existing transformation
================================================================================

To load an existing transformation, select :menuselection:`File --> Open`. Browse to the transformation samples subdirectory :file:`/opt/geokettle/samples/transformations/geokettle`, then select one of the available sample transformations and click :guilabel:`OK`. GeoKettle transformation are stored in files with the extension `*.ktr`.

The following picture shows the sample « intersection » transformation.

  .. image:: /images/projects/geokettle/geokettle_intersection_transformation.png
    :scale: 80 %

A description of the transformation and optional directives can be seen in the yellow tooltip area.

Before starting the transformation, you will need to specify which shapefile to use. In order to do that, double click on each of the « GIS file input » steps to make the following dialog appear.

  .. image:: /images/projects/geokettle/geokettle_shapefile_input_step.png

.. note: 
   You may also customize any steps of any transformation by double clicking on it.

Enter the name of your shapefile including the `*.shp` extension or leave it as is to use the sample dataset and click :guilabel:`OK`.

You are now ready to start the transformation. To do so, simply hit the play button in the toolbar above your transformation. 

Creating a new data transformation
================================================================================

Launch GeoKettle and access the workbench in the same way you would do when loading an existing transformation (see previous section).

To create a new transformation, select :menuselection:`File --> New --> Transformation`. You can specify the name of the transformation by saving it under a different name (select :menuselection:`File --> Save as...`).

As shown in the following picture, all available steps are listed by category in the left area of the workbench. Expand any category to see its available steps.

  .. image:: /images/projects/geokettle/geokettle_your_transformation.png
    :scale: 80 %

To add a new step to the transformation, drag it from the **Steps** panel to the **transformation** panel. You may then customize this new added step to your transformation by double clicking on it.


**Hops**

A hop, represented as an arrow between 2 steps, defines the dataflow between those steps. As shown in the following picture, adding a hop from **Table Input** to **Add sequence** means that the resulting output of **Table Input** will be sent to the **Add sequence** step for further processing and etc.

  .. image:: /images/projects/geokettle/geokettle_hop.png
    :scale: 60 %

To create a new hop, select 2 steps, right click on one of them and select :menuselection:`New hop`. Another way of doing it is to press and hold :kbd:`Ctrl` while selecting the 2 steps. 

Any hop can be edited at any time by double clicking on it or right clicking on it and selecting :menuselection:`Edit hop` in the popup menu.


**Setting up the transformation**

Most of the steps in a transformation will require custom parametrization before being usable. Double click on any step to display a dialog interface in which you can see and specify each requested parameter values.


**Running a transformation**

When executing a transformation, a new panel appears below the one where the transformation is designed. This panel (aka the **Execution Results** panel) contains information about data flow through all steps involved in the transformation. 

The **Step Metrics** tab (shown in the next figure) will be initially displayed. You can see in this tab general information regarding the transformation's dataflow such as the number of rows read, written, in input and in output in each step. The column **Active** informs the user if the step is started, running, finished, aborted, etc. The time elapsed since the step has been started is shown in the column **Time**, as well as the average speed (column **Speed**) of the step (rows/seconds).

  .. image:: /images/projects/geokettle/geokettle_running_transformation.png
    :scale: 70 %


**Previewing a transformation**

Trying to execute a transformation may result in errors in the **Execution Results** panel (see next figure). Please then review the content of the **Logging** tab. There is always a lot of useful information dealing with the source and reason of the error. Modify the parameters of the faulty step and restart the transformation.

  .. image:: /images/projects/geokettle/geokettle_transformation_fail.png
    :scale: 70 %

To help in finding the source of an error, you can also preview the results of a transformation from another step earlier in the workflow. To do so, right click on the step, and select :menuselection:`Preview` in the popup menu that appears. This way, you can see in a tabular and cartographic way what the data looks like at this point in the overall process without executing the whole transformation.

Things to Try
================================================================================

Here are some additional challenges for you to try:

#. Explore the diversity of all the steps that GeoKettle provides
#. Try the GeoKettle debugger in order to debug a faulty transformation
#. Try to build a transformation with your own data

What Next?
================================================================================

Take a look at the documentation available on the Spatialytics `documentation center <http://docs.spatialytics.com/doku.php?id=en:spatialytics_etl>`_. Do not hesitate also to ask for help on the Spatialytics `forum <http://forum.spatialytics.com>`_.
