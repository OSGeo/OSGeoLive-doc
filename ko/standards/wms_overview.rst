.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    ../../images/project_logos/<filename>
  A symbolic link to the images directory is created during the build process.

.. image:: ../../images/project_logos/logo-OGC-left.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. image:: ../../images/project_logos/logo-OGC-right.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. Writing Tip: Name of application

Web Map Service (WMS)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

The (OGC®) Web Map Service Interface Standard (WMS) provides a simple HTTP interface for requesting geo-registered map images from one or more distributed geospatial databases. The response to the request is one or more map images (returned as JPEG, PNG, etc) that can be displayed a browser and desktop applications. (http://www.opengeospatial.org/standards/wms) 

.. image:: ../../images/standards/wms.jpg
  :scale: 55%
  :alt: WMS in Context

The WMS standard defines three operations: 

* GetCapabilities (required): Obtain service-level metadata, which is a machine-readable (and human-readable) description of the WMS's information content and acceptable request parameters. 

* GetMap (required): Obtain a map image whose geospatial and dimensional parameters are well defined. 

* GetFeatureInfo (optional): Ask for information about particular features shown on a map. 

This standard is now implemented in hundreds of products, many of which are registered at (http://www.opengeospatial.org/resource/products/compliant).

An excellent example of a portal that uses WMS is NC OneMap (http://www.nconemap.com/): “NC OneMap relies on Web Map Services (WMS) to bring data together from multiple hosts. NC OneMap partners establish a WMS from their servers. This OGC standard allows data to be created and stored in numerous proprietary software configurations (ESRI, MapInfo, Intergraph, etc), but is viewable by all.” 

See Also
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

An OGC WMS Cookbook and other materials for developers can be found at http://www.opengeospatial.org/resource/cookbooks. 

Other OGC portrayal service standards: 
 

* :doc:`wfs_overview`
* :doc:`wcs_overview`
* Web Map Tile Service
* :doc:`gml_overview`
* :doc:`kml_overview`
* :doc:`sld_overview`
* Symbology Encoding
* :doc:`fe_overview`

