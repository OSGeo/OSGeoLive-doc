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

Web Coverage Service (WCS)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

The OGC® Web Coverage Service Interface Standard (WCS) defines a standard interface and operations that enable interoperable access to geospatial "coverages". The term "grid coverages" typically refers to content such as satellite images, digital aerial photos, digital elevation data, and other phenomena represented by values at each measurement point. (http://www.opengeospatial.org/standards/wcs)

.. image:: ../../images/standards/wcs.jpg
  :scale: 55%
  :alt: WCS in Context

The OGC Web Coverage Service (WCS) Interface Standard is a data service. The WCS standard defines a data access service that enables coverages, such as digital elevation models, to be queried using an HTTP based interface. The response to a WCS request includes coverage metadata and an output coverage whose pixels are encoded in a specified binary image format, such as GeoTIFF or NetCDF. 

As with other OGC standards, there are numerous excellent examples of deployed WCS implementations. One example is NDBC High Frequency (HF) Radar Web Coverage Service (WCS) developed and deployed by the US National Ocean and Atmospheric Administration (NOAA) (http://hfradar.ndbc.noaa.gov/). HF Radar is used to remotely measure ocean surface currents. Another is the National Aeronautical and Space Administration (NASA) WCS for accessing Atmospheric Infrared Sounder (AIRS) Data (http://idn.ceos.org/KeywordSearch/Metadata.do?Portal=webservices&KeywordPath=[Project%3A+Short_Name%3D%27EOS%27]&EntryId=NASA_GES_DISC_AIRS_Atmosphere_Data_Web_Coverage_Service&MetadataView=Full&MetadataType=1&lbnode=mdlb1). This is one of the Goddard Earth Systems Data and Information Service Center's OGC WCS instances that provides Level 3 Gridded atmospheric data products derived from AIRS data as generated on board NASA's Aqua spacecraft.

See Also
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`wms_overview`
* :doc:`wfs_overview`
* Grid Coverage Service
* :doc:`sos_overview`
* :doc:`fe_overview`
