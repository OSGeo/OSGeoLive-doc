.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

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
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Der OGC® Web Coverage Service Interface Standard (WCS) definiert eine standardisierte Schnittstelle und Operationen, die interoperablen Zugriff auf räumliche "coverages" ermöglichen. Der Begriff "grid coverage" bezeichnet hierbei typischerweise Daten wie Satellitenbilder, Luftbilder, digitale Höhendaten und andere Phänomene, die durch Werte je Messpunkt repräsentiert werden. (http://www.opengeospatial.org/standards/wcs)

.. image:: ../../images/standards/wcs.jpg
  :scale: 55%
  :alt: WCS in Context

Der OGC Web Coverage Service (WCS) Interface Standard ist ein Datenservice. Der WCS-Standard definiert einen Datenzugriffsservice, der es ermöglicht, auf Coverages wie z.B. digitale Höhendaten durch HTTP-basierte Schnittstellen zuzugreifen. Die Antwort auf einen WCS Request besteht aus Metadaten und einem Ausgabecoverage, dessen Pixel in einem bestimmten Binärformat kodiert sind, wie z.B. GeoTIFF oder NetCDF.

Wie auch bei anderen OGC Standards existieren eine Reihe hervorragender Beispiele von WCS Implementationen. Ein Beispiel ist der NDBC High Frequency (HF) Radar Web Coverage Service (WCS), entwickelt und betrieben von der US National Ocean and Atmosperic Administration (NOAA) (http://hfradar.ndbc.noaa.gov/). HF Radar wird genutzt, um auf der Entfernung die aktuelle Meeresoberfläche zu messen. Ein anderes Beispiel ist der National Aeronautical and Space Administration (NASA) WCS, um auf Atmospheric Infrared Sounder (AIRS) Data (http://idn.ceos.org/KeywordSearch/Metadata.do?Portal=webservices&KeywordPath=[Project%3A+Short_Name%3D%27EOS%27]&EntryId=NASA_GES_DISC_AIRS_Atmosphere_Data_Web_Coverage_Service&MetadataView=Full&MetadataType=1&lbnode=mdlb1) zuzugreifen. Dies ist eine Goddard Earth Systems Data and Information Service Center OGC WCS Instanz, welche Rasterdaten anbietet, die aus den AIRS Daten abgeleitet werden, welche an Bord des NASA Aqua Satelliten produziert werden.

Siehe auch
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`wms_overview`
* :doc:`wfs_overview`
* Grid Coverage Service
* :doc:`sos_overview`
* :doc:`fe_overview`
