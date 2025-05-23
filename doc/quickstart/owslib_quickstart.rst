:Author: OSGeoLive
:Author: Seth Girvin
:Version: osgeolive17.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_owslib@
@OSGEO_KIND_owslib@
@VMDK_owslib@



********************************************************************************
@NAME_owslib@ Quickstart
********************************************************************************

OWSLib is a Python package for client programming with Open Geospatial Consortium (OGC) web service
interface standards, and their related content models.

Included with OSGeoLive, OWSLib offers ready-to-use access to OGC services exposed by
other bundled geospatial applications.

.. contents:: Contents
   :local:

Download a WMS Image from MapServer
--------------------------------------------------------------------------------

An example of connecting to the MapServer demo on OSGeoLive and downloading a WMS image.

.. code-block:: bash

    $ python3
    >>> from owslib.wms import WebMapService
    >>> url = "http://localhost/cgi-bin/mapserv?map=/usr/local/www/docs_maps/mapserver_demos/itasca/itasca.map"
    >>> wms = WebMapService(url, version='1.3.0')
    >>> wms.identification.title
    print(wms.identification.title)
    >>> list(wms.contents)
    ['ITASCA', 'drgs',...
    >>> wms['mcd90py2'].title
    'Minor Civil Divisions'
    >>> wms['mcd90py2'].boundingBox
    (393234.0, 5207990.0, 495770.0, 5305370.0, 'EPSG:26915')
    >>> wms['mcd90py2'].crsOptions
    ['EPSG:26915', 'EPSG:3857']
    >>> img = wms.getmap(layers=['ITASCA'], srs='EPSG:26915', bbox=(393234.0, 5207990.0, 495770.0, 5305370.0), 
                 size=(800, 800), format='image/png', transparent=True)
    >>> out = open('itasca.png', 'wb')
    >>> out.write(img.read())
    >>> out.close()

.. image:: /images/projects/owslib/itasca.png
  :scale: 70 %
  :alt: Output image from MapServer WMS

Inspect pyWPS Processes
--------------------------------------------------------------------------------

An example of connecting to the PyWPS demo server on OSGeoLive and inspecting the available processes.

.. code-block:: bash

    $ python3
    >>> from owslib.wps import WebProcessingService
    >>> wps = WebProcessingService('http://localhost/pywps/wps.py?')
    >>> print(wps.identification)
    Service: WPS, title=PyWPS Processing Service
    >>> for process in wps.processes: print(f"Identifier: {process.identifier}: Title: {process.title}")
    Identifier: say_hello: Title: Process Say Hello
    >>> inputs = [("name", "OWSLib")]
    >>> execution = wps.execute(say_hello_process.identifier, inputs)
    >>> output_data = execution.processOutputs[0].data
    >>> print(f"Output data: {output_data}")
    Output data: ['Hello OWSLib']

Using CSW with pycsw
--------------------------------------------------------------------------------

An example of connecting to the Catalogue Service for the Web (CSW) demo server provided by pycsw on OSGeoLive.

.. code-block:: bash

    $ python3
    >>> from owslib.csw import CatalogueServiceWeb
    >>> csw = CatalogueServiceWeb('http://localhost/pycsw/')
    >>> print(f"Title {csw.identification.title} Type: {csw.identification.type}")
    Title: pycsw Geospatial Catalogue Type: CSW
    >>> [op.name for op in csw.operations]
    ['GetCapabilities', 'DescribeRecord', 'GetDomain', 'GetRecords', 'GetRecordById', 'GetRepositoryItem']
    >>> from owslib.fes import PropertyIsEqualTo, PropertyIsLike, BBox
    >>> query = PropertyIsEqualTo('csw:AnyText', 'Lorem ipsum')
    >>> csw.getrecords2(constraints=[query], maxrecords=20)
    >>> csw.results
    {'matches': 2, 'returned': 2, 'nextrecord': 0}
    >>> for rec in csw.records: print(csw.records[rec].abstract)
    Quisque lacus diam, placerat mollis, pharetra in, commodo sed, augue. Duis iaculis arcu vel arcu.
    None

Connect to the pygeoapi OGC Features API
--------------------------------------------------------------------------------

An example of connecting to the pygeoapi demo server on OSGeoLive and retrieving a feature collection, using
the OGC Features API.

To run the example below on OSGeoLive, first ensure the pygeoapi demo server is
running. From the desktop, choose :menuselection:`Geospatial --> Web Services --> Start pygeoapi`.
Then, in a terminal, run the following commands:

.. code-block:: bash

    $ python3
    >>> from owslib.ogcapi.features import Features
    >>> service = Features("http://localhost:5000/")
    >>> feature_collections = service.feature_collections()
    >>> print(feature_collections)
    ['lakes']
    >>> lake = service.collection_items('lakes', name='Lake Victoria')
    >>> import json
    >>> print(json.dumps(lake, indent=4))
    {
    "type": "FeatureCollection",
    "features": [
        {
            "type": "Feature",
            "properties": {
                "id": 6,
                "scalerank": 0,
                "name": "Lake Victoria",

What next?
--------------------------------------------------------------------------------

OSGeoLive includes a set of Jupyter notebooks, including examples of OWSLib usage, and providing more
details on the examples above. From the desktop, choose :menuselection:`Geospatial --> Spatial Tools --> Jupyter Notebook`.

The `Doing Geospatial in Python`_ workshop also includes several notebooks demonstrating OWSLib usage.

For more information on OWSLib, please consult the `documentation`_ on the OWSLib website.

.. _`documentation`: https://owslib.readthedocs.io
.. _`Doing Geospatial in Python` : https://geopython.github.io/geopython-workshop/
