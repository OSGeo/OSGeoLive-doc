:Author: OSGeoLive
:Author: Paul van Genuchten
:Author: Tom Kralidis
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeolive14.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Thanks: the geopython team

@LOGO_pygeoapi@
@OSGEO_KIND_pygeoapi@
@VMDK_pygeoapi@



********************************************************************************
@NAME_pygeoapi@ Quickstart
********************************************************************************

pygeoapi is a tool to quickly and easily publish OGC Open API services on the web. It is built on the powerful open-source libraries from the (geo)python community.

In this quickstart we’ll guide you in setting up the software and use it for some specific cases. Along the road we’ll engage with some related software, because pygeoapi is a product which is typically combined with other components to fulfill a business case.
 
Prior knowledge
------------------------------------------------------

pygeoapi is a Python web application for the spatial domain, so you need to be aware of the concepts of web applications and geospatial aspects such as grid and vector formats, OGC standards and projection systems. Python knowledge is recommended, although you can do without by running the application from osgeo live.

.. contents:: Contents
   :local:
  
Configure and start the service
================================================================================

#. From the Start menu, select |osgeolive-appmenupath-pygeoapi|. The application will open a web page at http://localhost:5000 

#. navigate to the installation folder and locate a file example-config.yml. This file contains the configuration of the service. Update some parameters in the file, such as Title and Author.

#. Restart the service, for example by closing the terminal and starting the service again

   .. image:: /images/projects/pygeoapi/home.png
    :scale: 70 %

Configure new service
================================================================================

You'll now deploy a vector dataset in pygeoapi and expose its features as OGC API - Features. OGC API - Features is a standard of OGC to expose vector features as a webservice. OGC API - Features is the OpenAPI alternative to WFS.

pygeoapi supports a wide range of backends to use as vector source, e.g. geopackage, PostGIS, Elasticsearch, WFS, etc. Via the GDAL OGR provider an almost unlimited set of other vector sources can be added.
 
Interesting datasets to expose as OAPI-Features consist of real world data having multiple attributes and links to other resources. 
An example is https://ckan.dataplatform.nl/dataset/beperkingen-schiedam, a dataset listing all public limited areas in the city of Schiedam in the Netherlands. 
This dataset happens to be available as a GeoJSON. We can configure it in pygeoapi using the GeoJSON provider.
 
#.  Download the GeoJSON file and place it in the tests/data folder.

#.  Update example-config.yml to add ``schiedam-limited-areas`` as a new collection to pygeoapi (insert snippet below between the other collections. Mind the nesting, nesting is important in YAML syntax).

#.  Restart pygeoapi

.. code-block:: yaml

   schiedam-limited-areas:
      type: collection
      title: Schiedam limited areas
      description: Limited areas in the city of Schiedam
      keywords:
         - industry
      links:
         - type: text/html
           rel: canonical
           title: information
           href: https://ckan.dataplatform.nl/dataset/beperkingen-schiedam
           hreflang: nl-NL
      extents:
         spatial:
            bbox: [4.4,51.9,4.5,52]
      providers:
         - type: feature
           name: GeoJSON
           data: tests/data/beperkingensdam.json
           id_field: ID

Verify the collection is available via your browser at http://localhost:5000/collections/schiedam-limited-areas

Using a web browser to query the API
=========================================================

Now that we have the service available we can query it using various client tooling.
Each of the features of the collection is available in common formats, such as HTML, GeoJSON and GML. To start we can use a web browser to browse through the service. From http://localhost:5000/collections/schiedam-limited-areas, drill down to individual features. The service will automatically detect (accept header) that you are using a web browser and will return the HTML representation of features. Notice in the top right corner explicit links to override the accept header and request specific representations of the feature (?f=geojson).
 
To create the layout of these HTML pages, pygeoapi uses a templating technique called Jinja2. 
 
Each Open API has an interactive documentation page at  http://localhost:5000/openapi. In this interactive webpage you can read about the various methods in the service, but also directly interact with them via web forms.

   .. image:: /images/projects/pygeoapi/openapidoc.png
    :scale: 70 %

OGC API’s have been developed with the `spatial data on the web best practices <https://w3c.github.io/sdw/bp/#bp-summary>`_ in mind. An important aspect of these best practices is search engine optimization. Pygeoapi adds some crawl optimizations on top of the requirements of the Open API standards; Collection metadata can be crawled by search engines in a structured way, with the goal to make the collections discoverable in tools like Google Dataset Search. To evaluate the structured data capabilities you can use the Structured Data Testing tools of Yandex or Google. Copy the html source of the schiedam-limited-areas collection page (or the url of a collection page of an online pygeoapi instance) into a structured data testing tool and evaluate what structured data the tool is able to extract from it. The search engine will use that information in its datasets index.
 
Using OAPI-Features in Desktop GIS
=========================================================

In this quickstart we use QGIS to query the service, but similar workflow is possible in other GIS tooling, e.g. ArcGIS, FME, OpenLayers.
 
Starting from QGIS 3.14 you can add an OAPI-Features layer as vector layer. From the ``add layer`` menu select ``Add WFS / OAPI-Features layer``.

   .. image:: /images/projects/pygeoapi/qgis-wfs.png
    :scale: 70 %

On the window that opens create a new connection, enter the url to the service http://localhost:5000.
 
   .. image:: /images/projects/pygeoapi/qgis-layers.png
    :scale: 70 %

Click Ok, and then ``connect`` to load the available collections in the service.

Select the ``schiedam-limited-areas`` collection and click ‘Add’ to add the layer in the QGIS map.




