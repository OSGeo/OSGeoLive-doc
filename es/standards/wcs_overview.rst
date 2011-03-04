.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadatos de este documento

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _wcs-overview:

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
==========================

.. Writing Tip:
  1 parrafo o 2 definen lo que es el estandar.

El estandar OGC® Web Coverage Service (WCS) define un estandar de interface y operaciones que permiten el acceso interoperable a "coberturas" geoespaciales. El término "grid de coberturas" (en inglés * "grid coverages"*) se refiere típicamente a contenidos del tipo imágenes de satélite, fotos aéreas digitales, datos digitales de elevación, y cualquier otro fenómeno que se pueda representar en puntos de medida. (http://www.opengeospatial.org/standards/wcs)

.. image:: ../../images/standards/wcs.jpg
  :scale: 55%
  :alt: WCS in Context

El estandar de interface OGC Web Coverage Service (WCS) es un servicio de datos. El estandar WCS define un servicio de acceso a datos que proporciona coberturas, como por ejemplo modelos de elevación del terreno, que se pueden consultar a través del protocolo HTTP. La respuesta a una petición WCS incluye metadatos de la cobertura y la cobertura en sí, cuyos pixeles se codifican en un formato binario específico, como por ejemplo GeoTIFF o NetCDF. 

Al igual que ocurre con otros estándares OGC, existen numerosos y excelentes ejemplos de implementaciones WCS desplegadas. Un ejemplo es el Servicio de Cobertura (WCS) de Radar de alta frecuencia (en inglés *'HF'*) NDBC, desarrollado y desplegado por la *US National Ocean and Atmospheric Administration (NOAA)* (http://hfradar.ndbc.noaa.gov/). El radar de alta frecuencia (HF) se utiliza para la medición remota de las corrientes de la superficie de los océanos. Otro ejemplo es el servicio WCS de la NASA  (National Aeronautical and Space Administration) para el acceso de datos atmosféricos infrarojos (en inglés *Atmospheric Infrared Sounder (AIRS) Data*). (http://idn.ceos.org/KeywordSearch/Metadata.do?Portal=webservices&KeywordPath=[Project%3A+Short_Name%3D%27EOS%27]&EntryId=NASA_GES_DISC_AIRS_Atmosphere_Data_Web_Coverage_Service&MetadataView=Full&MetadataType=1&lbnode=mdlb1). Este es uno de los sistemas de datos de la tierra *Goddard* que constituye una instancia OGC WCS del Centro de Servicio de Información (*Information Service Center*) que proporciona productos de datos atmosféricos de nivel 3 derivados de datos AIRS data como se genera a bordo de la nave espacial *'Aqua'* de la NASA.

Ver también
--------

.. Writing Tip:
  Describe estandar similar

* :doc:`wms_overview`
* :doc:`wfs_overview`
* Grid Coverage Service
* :doc:`sos_overview`
* :doc:`fe_overview`
