.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _wms-overview:

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

Der (OGC®) Web Map Service Interface Standard (WMS) bietet eine einfache HTTP Schnittstelle, um georeferenzierte Kartenbilder von einer oder mehreren verteilten räumlichen Datenbanken anzufordern. Die Antwort auf die Anfrage sind ein oder mehrere Kartenbilder (als JPEG, PNG, usw.), welche in einem Browser oder einer Desktopanwendung angezeigt werden können.(http://www.opengeospatial.org/standards/wms) 

.. image:: ../../images/standards/wms.jpg
  :scale: 55%
  :alt: WMS in Context

Der WMS-Standard definiert drei Operationen: 

* GetCapabilities (erforderlich): Liefert Metadaten des Dienstes, welche in maschinen- und menschenlesbarer Form die WMS-Inhalte und unterstützten Anfrageparameter beschreibt.

* GetMap (erforderlich): Liefert ein Kartenbild, dessen räumliche Parameter wohldefiniert sind.

* GetFeatureInfo (optional): Fragt Informationen zu einem bestimmtem Objekt ab, welches in der Karte angezeigt wird.

Der Standard wird inzwischen von hunderten Produkten implementiert, von denen viele unter (http://www.opengeospatial.org/resource/products/compliant) verzeichnet sind.

Ein hervorragendes Beispiel eines Portals, das WMS nutzt ist NC OneMap (http://www.nconemap.com/): “NC OneMap basiert auf Web Map Services (WMS), um Daten von vielen verteilten Servern zusammenzubringen. NC OneMap Partner erstellen einen WMS auf ihren Servern. Dieser OGC Standard erlaubt es, Daten in vielen verschiedenen proprietären Softwarekonfigurationen (ESRI, MapInfo, Intergraph, usw.) zu erzeugen und zu speichern. Trotzdem können alle auf die Daten zugreifen.” 

Siehe auch
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

Ein OGC WMS Kochbuch und andere Materialien für Entwickler finden sich unter http://www.opengeospatial.org/resource/cookbooks. 

Weitere OGC Servicestandards: 
 

* :doc:`wfs_overview`
* :doc:`wcs_overview`
* Web Map Tile Service
* :doc:`gml_overview`
* :doc:`kml_overview`
* :doc:`sld_overview`
* Symbology Encoding
* :doc:`fe_overview`

