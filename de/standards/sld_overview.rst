.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _sld-overview:

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

Style Layer Descriptor (SLD)
============================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Der OGC® Styled Layer Descriptor (SLD) Standard bietet Konstruktionen zur Symbolisierung und Einfärbung von geographischen Objekten und Rasterdaten. Er wird vor allem genutzt, um Stile auf Web Map Services anzuwenden oder um GML von Web Feature Services zu stylen. (http://www.opengeospatial.org/standards/sld) 

.. image:: ../../images/standards/wms.jpg
  :scale: 25%
  :alt: WMS in Context

Feinkörnige Kontrolle über die grafische Ausgestaltung von Daten ist eine fundamentale Bedingung für viele Kartenanwendungen. Die Fähigkeit regelbasierte Stile zu definieren benötigt eine Sprache, die sowohl Client als auch Server verstehen.

Der aktuelle OGC Web Map Service (WMS) Standard ermöglicht es Informationsanbietern, Stiloptionen über eine vordefinierte Kollektion von visuellen Darstellungen für einzelne Datensammlungen anzubieten. Allerdings kann die WMS Implementation aktuell den Nutzern lediglich die Namen der einzelnen Stile präsentieren, sie kann aber nicht mitteilen, wie die Darstellung auf der Karte aussehen wird. Und noch wichtiger, die Nutzer haben keine Möglichkeit, ihre eigenen Stile zu definieren.

Die Fähigkeit für menschliche oder maschinelle Clienten, diese Regeln zu definieren, benötigt eine Stilsprache, die sowohl Client als auch Server verstehen. Der OGC Symbolody Encoding (SE) Standard (http://www.opengeospatial.org/standards/symbol) spezifiziert das Format für eine Kartendarstellungssprache. Das SLD Profil von WMs ermöglicht die Anwendung von SE auf WMS-Layer über eine Erweiterung von WMS Operationen. Zusätzlich definiert SLD standardisierten Zugriff auf Legendensymbole, die auf einem entfernten Server gespeichert sein können, um in mehreren Anwendungen genutzt zu werden. 

Zusätzlich zur Darstellung der Ausgabe von WMS Implementationen kann SE auch zur Darstellung der Ausgabe von WFS und WCS Implementation genutzt werden.

Siehe auch
--------

.. Writing Tip:
  Describe Similar standard

* :doc:`fe_overview`
* :doc:`kml_overview`
* Symbology Encoding
* :doc:`gml_overview`
* :doc:`wms_overview`
* :doc:`wfs_overview`

