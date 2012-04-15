.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _fe-overview-de:

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

Filter Encoding (FE)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Der OGC® Filter Encoding Standard (FE) definiert ein XML Encoding zur Definition von Filtern für räumlich Abfragen, um räumliche Objekte aufgrund angegebener Attribute auszuwählen.
(http://www.opengeospatial.org/standards/filter)

.. image:: ../../images/standards/fe.jpg
  :scale: 55%
  :alt: FE in Context

Eine Teilmenge von räumlichen Objekten kann gewählt werden, um sie in einer bestimmten Farbe anzuzeigen oder in ein benutzerdefiniertes Format umzuwandeln. Das neutrale XML Filter Encoding erlaubt das einfache Analysieren und Validieren durch einen Server, der den OGC WFS Standard implementiert, bevor der Filterausdruck in die Zielsprache des abzufragenden Datenbestands übersetzt wird.
Dieser Standard wird von einer Reihe von OGC Web Services genutzt, einschließlich Web Feature Service, Catalogue Service und Styled Layer Descriptor.

Filterbedingungen können für räumliche, zeitliche und skalare Eigenschaften angegeben werden. Ein Beispiel für einen räumlichen Filter ist: "Finde alle Grundstücke in Niedersachsen, die Monika Mustermann gehören." Ein zeitlicher Filter ist: "Finde alle Gebäude in Berlin, die vor 1900 gebaut wurden". Ein Beispiel für einen skalaren Filter ist: "Finde alle Temperatursensoren in Paris, die eine Temperatur zwischen 20 Grad und 24 Grad Celsius anzeigen."

Siehe auch
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`sld_overview`
* :doc:`csw_overview`
* :doc:`wfs_overview`
* :doc:`wms_overview`

