.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _kml-overview:

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

KML Encoding Standard (KML)
===========================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Der OGC KML Standard ist eine XML-Sprache, welche ihren Fokus auf der räumlichen Visualisierung inklusive Beschriftungen und Bildern setzt. Räumliche Visualisierung enthält nicht nur die Darstellung von grafischen Daten auf der Erde, sondern auch die Benutzerführung im Sinne von wohin geht es und wohin soll geschaut werden (http://www.opengeospatial.org/standars/KML)

.. image:: ../../images/standards/kml.jpg
  :scale: 25%
  :alt: KML in Context

2006 hat Google KML (vorher Keyhole Markup Language) als Vorschlag beim OGC eingereicht. KML war der erste Fall, in dem ein de-facto Standard in den OGC Standardisierungsprozess eingereicht wurde. Aus diesem Grunde hat das OGC den Standardisierungsprozess modifiziert, so dass auch extern entwickelte und erst dann eingereichte Standards akzeptiert werden können. Es gab vier Ziele für diesen Standardisierungsprozess:

Es soll eine internationale Standardsprache geben, um räumliche Anmerkungen und Visualisierungen über aktuelle oder zukünftigen webbasierte Karten (2d) und digitale Globen (3d) darzustellen.
KML mit anderen internationalen bewährten Methoden und Standards abzugleichen, um so eine bessere Integration und Interoperabilität verschiedener Implementationen von Digitalen Globen zu ermöglichen.
Dass die OGC und KML Gemeinschaft kollaborativ zusammenarbeitet, um sicherzustellen, dass die Gemeinschaft der KML Implementierer in den Prozess integriert ist und dass die KML Gemeinschaft über Fortschritt und auftauchende Fragen informiert ist.
Der Prozess des OGC sollte genutzt werden, um ein sauberes Lebenszyklusmanagement der KML Kandidatenspezifikation zu ermöglichen, einschließlich Fragestellungen wie Abwärtskompabilität.

KML wurde 2008 als OGC Standard akzeptiert, da die Mitglieder überzeugt waren, dass KML als OGC Standard eine breitere Implementation und bessere Interoperabilität sowie bessere gemeinsame Nutzung von Inhalt und Kontext von digitalen Globen fördert.
 
KML ist eine Ergänzung zu den meisten der existierenden OGC Spezifikationen, einschließlich der Schlüsselstandards wie GML (Geography Markup Language), WFS (Web Feature Service) und WMS (Web Map Service). Aktuell nutzt KML (v2.1) bestimmte Geometrietypen, die von GML (v2.1.2) abgeleitet sind. Diese Typen sind z.B. Punkte, Linien, Umringe und Polygone.

Siehe auch
----------

.. Writing Tip:
  Describe Similar standard

* :doc:`gml_overview`
* :doc:`wfs_overview`
