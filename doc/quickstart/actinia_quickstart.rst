:Author: Markus Neteler, mundialis
:Reviewer: Astrid Emde 
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:Version: osgeolive13.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
:Copyright: 2019 by The OSGeo Foundation

@LOGO_actinia@
@OSGEO_KIND_actinia@

********************************************************************************
@NAME_actinia@ Quickstart
********************************************************************************

Actinia is an open source REST API for scalable, distributed, high performance
processing of geographical data that uses GRASS GIS for computational tasks.
Actinia provides a REST API to process satellite images, time series of 
satellite images, raster and vector data.

.. contents:: Contents

Actinia can be used in different ways:

-  `curl` or similar command line tools
-  the `Postman` extension for browsers
-  open a GRASS GIS session and use the `ace` (actinia command execution) tool
-  other interfaces to REST API

In this quickstart, we make use of GRASS GIS to conveniently launch
commands from the session to the actinia server (which itself uses GRASS GIS).
The idea is to rapidly develop a workflow locally on small data sets to
then execute it on the server.


Introduction to ace - actinia command execution
===============================================

The ``ace`` tool (`details <https://github.com/mundialis/actinia_core/tree/master/scripts>`_)
allows the execution of a single GRASS GIS command or a
list of GRASS GIS commands on an actinia REST service
(https://actinia.mundialis.de/). In addition it provides job management,
the ability to list locations, mapsets and map layer the user has access
to as well as the creation and deletion of mapsets.

Th ``ace`` tool must be executed in an active GRASS GIS session and will
use the current location of this session to access the actinia service.

The current location setting can be overridden by the
``--location LOCATION_NAME`` option. All commands will be executed per
default in an **ephemeral** database. Hence, generated output must be
exported using augmented GRASS commands.

The option ``--persistent MAPSET_NAME`` allows the execution of commands
in the **persistent** user database. It can be used with
``--location LOCATION_NAME``\ option.

Setup your environment
================================================================================
The user must setup the following environmental variables to specify the
actinia server and credentials:

.. code:: bash

   # set credentials and REST server URL
   export ACTINIA_USER='demouser'
   export ACTINIA_PASSWORD='gu3st!pa55w0rd'
   export ACTINIA_URL='https://actinia.mundialis.de/latest'

Access sample data
================================================================================

Selected datasets are available to the demo user . To list the locations you have access to, run

.. code:: bash

   ace --list-locations
   ['latlong', 'nc_spm_08', 'utm_32n', 'latlong']

The following command lists mapsets of current location in the active
GRASS GIS session (nc_spm_08):

.. code:: bash

   # running ace in the "nc_spm_08" location:
   ace --list-mapsets
   ['PERMANENT', 'landsat']


Inspect the REST call prior to submission
================================================================================

To generate the actinia process chain JSON request simply add the
–dry-run flag:

.. code:: bash

   ace --dry-run r.slope.aspect elevation=elevation slope=myslope

Display a map - map rendering
================================================================================

It is very easy (and fast) to render a map:

::

   # check amount of pixels, just FYI
   ace --location latlong r.info globcover@globcover
   ace --location latlong --render-raster globcover@globcover

.. figure:: /images/projects/actinia/esa_globcover_rendered_by_ace.png
   :alt: ESA Globcover map shown by actinia

   ESA Globcover map shown by actinia

Ephemeral processing is the default processing approach of actinia. Commands are executed in an
ephemeral mapset which will be removed after processing. You can export the
output of GRASS GIS modules to store the computational result for download and further analysis.
The following export formats are currently supported:

-  raster: ``GTiff``
-  vector: ``ESRI_Shapefile``, ``GeoJSON``, ``GML``
-  table: ``CSV``, ``TXT``


Script examples
================================================================================

Example 1: computing slope and aspect and univariate statistics from an elevation model
--------------------------------------------------------------------------------

The following commands (to be stored in a script and executed with
``ace``) will import a raster layer from an internet source as raster
map ``elev``, sets the computational region to the map and computes the
slope. Additional information about the raster layer are requested with
``r.info``.

Store the following script as text file ``ace_dtm_statistics.sh``:

.. code:: bash

   # grass77 ~/grassdata/nc_spm_08/user1/
   # Import the web resource and set the region to the imported map
   g.region raster=elev+https://storage.googleapis.com/graas-geodata/elev_ned_30m.tif -ap
   # Compute univariate statistics
   r.univar map=elev
   r.info elev
   # Compute the slope of the imported map and mark it for export as geotiff file
   r.slope.aspect elevation=elev slope=slope_elev+GTiff
   r.info slope_elev

Save the script in the text file to ``/tmp/ace_dtm_statistics.sh`` and
run the saved script as

.. code:: bash

   ace --script /tmp/ace_dtm_statistics.sh

The results are provided as REST resources.

To generate the actinia process chain JSON request simply add the
–dry-run flag

.. code:: bash

   ace --dry-run --script /tmp/ace_dtm_statistics.sh

The output should look like this:

.. code:: json

   {
     "version": "1",
     "list": [
       {
         "module": "g.region",
         "id": "g.region_1804289383",
         "flags": "pa",
         "inputs": [
           {
             "import_descr": {
               "source": "https://storage.googleapis.com/graas-geodata/elev_ned_30m.tif",
               "type": "raster"
             },
             "param": "raster", "value": "elev"
           }
         ]
       },
       {
         "module": "r.univar",
         "id": "r.univar_1804289383",
         "inputs": [
           {"param": "map", "value": "elev"},
           {"param": "percentile", "value": "90"},
           {"param": "separator", "value": "pipe"}
         ]
       },
       {
         "module": "r.info",
         "id": "r.info_1804289383",
         "inputs": [{"param": "map", "value": "elev"}]
       },
       {
         "module": "r.slope.aspect",
         "id": "r.slope.aspect_1804289383",
         "inputs": [
           {"param": "elevation", "value": "elev"},
           {"param": "format", "value": "degrees"},
           {"param": "precision", "value": "FCELL"},
           {"param": "zscale", "value": "1.0"},
           {"param": "min_slope", "value": "0.0"}
         ],
         "outputs": [
           {
             "export": {"format": "GTiff", "type": "raster"},
             "param": "slope", "value": "slope_elev"
           }
         ]
       },
       {
         "module": "r.info",
         "id": "r.info_1804289383",
         "inputs": [{"param": "map", "value": "slope_elev"}]
       }
     ]
   }

Example 2: Orthophoto image segmentation with export
--------------------------------------------------------------------------------

Store the following script as text file ``/tmp/ace_segmentation.sh``:

.. code:: bash

   # grass77 ~/grassdata/nc_spm_08/user1/
   # Import the web resource and set the region to the imported map
   # we apply a trick for the import of multi-band GeoTIFFs:
   # install with: g.extension importer
   importer raster=ortho2010+https://apps.mundialis.de/workshops/osgeo_ireland2017/north_carolina/ortho2010_t792_subset_20cm.tif
   # The importer has created three new raster maps, one for each band in the geotiff file
   # stored them in an image group
   r.info map=ortho2010.1
   r.info map=ortho2010.2
   r.info map=ortho2010.3
   # Set the region and resolution
   g.region raster=ortho2010.1 res=1 -p
   # Note: the RGB bands are organized as a group
   i.segment group=ortho2010 threshold=0.25 output=ortho2010_segment_25+GTiff goodness=ortho2010_seg_25_fit+GTiff
   # Finally vectorize segments with r.to.vect and export as a GeoJSON file
   r.to.vect input=ortho2010_segment_25 type=area output=ortho2010_segment_25+GeoJSON

Run the script saved in a text file as

.. code:: bash

   ace --script /tmp/ace_segmentation.sh

The results are provided as REST resources.

Examples for persistent processing
--------------------------------------------------------------------------------
GRASS GIS commands can be executed in a user specific persistent
database. The user must create a mapset in an existing location. This
mapsets can be accessed via ``ace``. All processing results of commands
run in this mapset, will be stored persistently. Be aware that the
processing will be performed in an ephemeral database that will be moved
to the persistent storage using the correct name after processing.

To create a new mapset in the **nc_spm_08** location with the name
**test_mapset** the following command must be executed

.. code:: bash

   ace --location nc_spm_08 --create-mapset test_mapset

Run the commands from the statistic script in the new persistent mapset

.. code:: bash

   ace --location nc_spm_08 --persistent test_mapset --script /path/to/ace_dtm_statistics.sh

Show all raster maps that have been created with the script in
test_mapset

.. code:: bash

   ace --location nc_spm_08 --persistent test_mapset g.list type=raster mapset=test_mapset

Show information about raster map elev and slope_elev

.. code:: bash

   ace --location nc_spm_08 --persistent test_mapset r.info elev@test_mapset
   ace --location nc_spm_08 --persistent test_mapset r.info slope_elev@test_mapset

Delete the test_mapset

.. code:: bash

   ace --location nc_spm_08 --delete-mapset test_mapset

If the active GRASS GIS session has identical location/mapset settings,
then an alias can be used to avoid the persistent option in each single
command call:

.. code:: bash

   alias acp="ace --persistent `g.mapset -p`"

We assume that in the active GRASS GIS session the current location is
**nc_spm_08** and the current mapset is **test_mapset**. Then the
commands from above can be executed in the following way:

.. code:: bash

   ace --create-mapset test_mapset
   acp --script /path/to/ace_dtm_statistics.sh
   acp g.list type=raster mapset=test_mapset
   acp r.info elev@test_mapset
   acp r.info slope_elev@test_mapset

Things to try
================================================================================

Create new locations
--------------------------------------------------------------------------------

.. code:: bash

   # create new location
   ace --create-location latlon 4326
   # create new mapset within location
   ace --location latlon --create-mapset user1

Instal GRASS GIS addons (extensions)
--------------------------------------------------------------------------------
.. code:: bash

   # list existing addons, see also
   # https://grass.osgeo.org/grass7/manuals/addons/
   ace --location latlon g.extension -l

   # install machine learning addon r.learn.ml
   ace --location latlon g.extension r.learn.ml



Further reading
================================================================================
* Visit the actinia website at `https://actinia.mundialis.de <https://actinia.mundialis.de>`_
* Neteler, M., Gebbert, S., Tawalika, C., Bettge, A., Benelcadi, H., Löw, F., Adams, T, Paulsen, H. (2019). Actinia: cloud based geoprocessing. In Proc. of the 2019 conference on Big Data from Space (BiDS'2019) (pp. 41–44). EUR 29660 EN, Publications Office of the European Union 5, Luxembourg: P. Soille, S. Loekken, and S. Albani (Eds.). (`DOI <https://doi.org/10.5281/zenodo.2631917>`__)
