.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _gml-overview:

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

Geography Markup Language (GML)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

GML (http://www.opengeospatial.org/standards/gml) ist eine XML Grammatik, um geographische Objekte zu beschreiben und auszutauschen. GML dient sowohl als Modellierungssprache für Geographische Systeme wie auch als offenes Austauschformat für räumliche Transaktionen über der Internet. Beachtenswert ist hierbei das sehr generische Objektmodell von GML, das nicht nur konventionelle Vektordaten oder einfache Objekte beinhaltet, sondern auch multidimensionale Rasterdaten und einige Elemente von Sensordaten. Die Fähigkeit, alle Arten von räumlichen Informationen zu integrieren, ist der Schlüssel zur Nützlichkeit von GML. 

.. image:: ../../images/standards/gml.jpg
  :scale: 55%
  :alt: GML im Kontext

GML beinhaltet eine Vielfalt von Primitiven, welche genutzt werden, um applikationsspezifische Schemata oder Anwendungssprachen zu erzeugen. Diese Primitive beinhalten:

* Objekt (Feature)
* Geometrie (Geometry)
* Koordinatensystem (Coordinate Reference System)
* Topologie (Topology)
* Zeit (Time)
* dynamisches Objekt (Dynamic feature)
* Rasterdaten (Coverage ist eigentlich weiter gefasst)
* Maßstab
* Richtungen (Directions)
* Beobachtungen (Observations)
* Regeln zur Kartengestaltung (Map presentation styling rules)

Das Verständnis der Begriffe "Objekt" (“Feature”), "Geometrie (“Geometry”), and "Koordinatensystem" (“CRS”) ist entscheidend in der Nutzung und der Entwicklung GML-basierter Encodings.

Die Arbeit des OGC am GML-Standard begann 1998. GML wurde 2001 formal als OGC-Standard anerkannt und wurde 2007 ISO-Standard. Die aktuelle Version des vereinten OGC-ISO-Standards ist GML 3.2.16, die Versionen 3.2.2 und 4.0 sind gerade in der Entwicklung.

Siehe auch
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* CityGML
* GeosciML
* GML in JPEG 2000
* :doc:`wfs_overview`
* :doc:`kml_overview`
* :doc:`sld_overview`
* :doc:`fe_overview`
