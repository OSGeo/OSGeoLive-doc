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

#. From the Start menu, select :menuselection:`Structure --> osgeolive --> appmenupath --> pygeoapi`. The application will open a web page at http://localhost:5000

#. navigate to the user folder ``/usr/local/share/pygeoapi`` and locate a file ``pygeoapi-config.yml``. This file contains the configuration of the service.

#. Open the file ``sudo nano pygeoapi-config.yml``.

#. Update some parameters in the file, such as Title and Author. And Save the file.

#. Restart the service, for example by closing the terminal and starting the service again

   .. image:: /images/projects/pygeoapi/pygeoapi_screenshot.png
    :scale: 70 %

Configure new service
================================================================================

You'll now deploy a vector dataset in pygeoapi and expose its features as OGC API - Features. OGC API - Features is a standard of OGC to expose vector features as a webservice. OGC API - Features is the OpenAPI alternative to WFS.

pygeoapi supports a wide range of backends to use as vector source, e.g. geopackage, PostGIS, Elasticsearch, WFS, etc. Via the GDAL OGR provider an almost unlimited set of other vector sources can be added.

Interesting datasets to expose as OAPI-Features consist of real world data having multiple attributes and links to other resources.
OSGeo Live contains a number of datasets we can use. An example is ``/var/www/html/openlayers/examples/data/geojson/countries.geojson``.
You can configure it in pygeoapi using the GeoJSON provider.

#.  Download the GeoJSON file and place it in the tests/data folder.

#.  Update pygeoapi-config.yml to add ``countries`` as a new collection to pygeoapi (insert snippet below between the other collections. Mind the nesting, nesting is important in YAML syntax).

#.  Restart pygeoapi

.. code-block:: yaml

   countries:
      type: collection
      title: Countries
      description: Countries of the world
      keywords:
         - industry
      links:
         - type: text/html
           rel: canonical
           title: information
           href: https://openlayers.org
           hreflang: en-US
      extents:
         spatial:
            bbox: [-180,-90,180,90]
      providers:
         - type: feature
           name: GeoJSON
           data: /var/www/html/openlayers/examples/data/geojson/countries.geojson
           id_field: name

Verify the collection is available via your browser at http://localhost:5000/collections/countries

Using a web browser to query the API
=========================================================

Now that we have the service available we can query it using various client tooling.
Each of the features of the collection is available in common formats, such as HTML, GeoJSON and GML. To start we can use a web browser to browse through the service. From http://localhost:5000/collections/countries, drill down to individual features. The service will automatically detect (accept header) that you are using a web browser and will return the HTML representation of features. Notice in the top right corner explicit links to override the accept header and request specific representations of the feature (?f=geojson).

Each Open API has an interactive documentation page at  http://localhost:5000/openapi. In this interactive webpage you can read about the various methods in the service, but also directly interact with them via web forms.

   .. image:: /images/projects/pygeoapi/openapidoc.png
    :scale: 70 %

OGC API’s have been developed with the `spatial data on the web best practices <https://w3c.github.io/sdw/bp/#bp-summary>`_ in mind. An important aspect of these best practices is search engine optimization. Pygeoapi adds some crawl optimizations on top of the requirements of the Open API standards; Collection metadata can be crawled by search engines in a structured way, with the goal to make the collections discoverable in tools like Google Dataset Search. To evaluate the structured data capabilities you can use the Structured Data Testing tools of Yandex or Google. Copy the html source of the countries collection page (or the url of a collection page of an online pygeoapi instance) into a structured data testing tool and evaluate what structured data the tool is able to extract from it. The search engine will use that information in its datasets index.

Using OAPI-Features in Desktop GIS
=========================================================

In this quickstart we use QGIS to query the service, but similar workflow is possible in other GIS tooling, e.g. ArcGIS, FME, OpenLayers.

Starting from QGIS 3.14 you can add an OAPI-Features layer as vector layer. From the ``add layer`` menu select ``Add WFS / OAPI-Features layer``.

   .. image:: /images/projects/pygeoapi/qgis-wfs.png
    :scale: 70 %

On the window that opens create a new connection, enter the url to the service http://localhost:5000.

Click Ok, and then ``connect`` to load the available collections in the service.

   .. image:: /images/projects/pygeoapi/qgis-layers.png
    :scale: 70 %

Select the ``countries`` collection and click ‘Add’ to add the layer in the QGIS map.
