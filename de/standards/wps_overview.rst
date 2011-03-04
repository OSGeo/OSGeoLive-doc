.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _wps-overview:

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

Web Processing Service (WPS)
============================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Der WPS Standard definiert Regeln für standardisierte Ein- und Ausgabe (Anfrage und Antwort) für räumliche Prozessierungsdienste, wie z.B. Polygonverschneidung und die dazugehörigen Eingaben und Ausgaben.

.. image:: ../../images/standards/wps.jpg
  :scale: 55%
  :alt: WPS in Context

Der OGC® Web Processing Service (WPS) Standard beschreibt, wie räumliche Verarbeitungsprozesse über eine Webschnittstelle angesprochen werden können. Prozesse umfassen jegliche Algorithmen, Berechnungen oder Modelle, welche auf räumlich referenzierten Vektor- oder Rasterdaten arbeiten. Ein WPS kann einfache Berechnungen wie die Subtraktion einer räumlich referenzierten Zahl von einer anderen anbieten (wie z.B. die Ermittlung der Differenz der Grippeerkrankungen zwischen zwei Jahren) oder etwas so kompliziertes, wie ein globales Model der Klimaveränderung. (http://opengeospatial.org/standards/wps)

Ein WPS ist nützlich zur:

* Reduzierung der Komplexität bei der Datenverarbeitung durch Bereitstellung von plug&play-Algorithmen.
* Verkettung von Prozessierungen.
* einmaligen Bereitstellung von Prozessierungen, die dann überall genutzt werden können.
* Vereinfachte Wartung. Prozesse u. Modelle werden an einem zentralen Platz von denjenigen gewartet, welche diese erzeugt haben.
* Nutzung der Rechenleistung von zentralen Hochleistungsrechnern.
* einfachen und interoperablen Umsetzung hochkomplexer Prozesse, wie Klimamodelle.

Siehe auch
--------

.. Writing Tip:
  Describe Similar standard


Weitere OGC Servicestandards

* Web Coverage Processing Service
* Sensor Planning Service
* :doc:`wcs_overview`
* :doc:`wms_overview`
* :doc:`wfs_overview`
* Grid Coverage Service
* :doc:`sos_overview`
