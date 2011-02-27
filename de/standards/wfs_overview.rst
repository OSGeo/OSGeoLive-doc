.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _wfs-overview:

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

Web Feature Service (WFS)
=========================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Der OGC® Web Feature Service Interface Standard (WFS) definiert Schnittstellen und Operationen für die Abfrage und das Editieren von räumlichen Vektordaten wie z.B. Straßen oder Gewässerumringe.  (http://www.opengeospatial.org/standards/wfs)

.. image:: ../../images/standards/wfs.jpg
  :scale: 25%
  :alt: WFS in Context

Der WFS Standard definiert Operationen, die es Klientanwendungen ermöglichen: 

* zu ermitteln, welche Themen verfügbar sind (GetCapabilities)
* die verfügbaren Feldwerte der verfügbaren Themen zu beschreiben (DescribeFeatureType)
* über einen übergebenen Filter eine Auswahl von Objekten zu erhalten (GetFeature)
* das Hinzufügen, Bearbeiten und Löschen von Objekten (Transaction, nur für WFS-T)

Alle WFS unterstützen die Ein- und Ausgabe von Daten über die Geography Markup Language (GML). Manche WFS unterstützen darüber hinaus auch andere Formate wie z.B. GeoRSS oder shapefiles.

Benutzer interagieren mit WFS normalerweise über browser- oder desktopbasierte Anwendungen, welche es erlauben, Vektorlayer von externen Anbietern über das Internet anzusprechen. Ein hervorragendes Beispiel der Nutzung von WFS für den offenen und interoperablen Zugriff auf eine große Menge von räumlichen Informationen über ein Portal sind die USGS Framework Web Feature Services, die zur Unterstützung der Enwicklung der National Spatial Data Infrastructure (NSDI) (http://frameworkwfs.usgs.goc/) bereitgestellt werden. Ausgewählte US Framework Kartenlayer sind als WFS Layer und zusätzlich durch eine browserbasierte Schnittstelle der USGS verfügbar.

Siehe auch
----------

.. Writing Tip:
  Describe Similar standard

* :doc:`wms_overview`
* :doc:`wcs_overview`
* Grid Coverage Service
* :doc:`sos_overview`
* :doc:`gml_overview`
* :doc:`kml_overview`
* :doc:`sld_overview`
* Symbology Encoding
* :doc:`fe_overview`
