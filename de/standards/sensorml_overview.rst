.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _sensorml-overview:

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

Sensor Model Language (SensorML)
================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Der OGC Sensor Model Language (SensorML) Standard beschreibt ein Informationsmodel und XML-Encoding, welche das Auffinden und Nutzbarmachen von Web-verfügbaren Sensoren wie auch die Erforschung von Sensorbeobachtungen. Innerhalb dieses Kontext erlaubt es SensorML dem Entwickler Modelle und XML-Schemata zu definieren, die jeglichen Prozeß inklusive der Messungen eines Sensorsystems zu beschreiben und zu verarbeiten. (http://www.opengeospatial.org/standards/sensorml)

.. image:: ../../images/standards/sensorml.jpg
  :scale: 25%
  :alt: sensorML in Context

SensorML ermöglicht:

* Die Beschreibung von Sensoren und Sensorsystemen zur Inventarisierung.
* Sensor- und Prozessinformation zur Auffindung von Ressourcen und Beobachtungen durch diese Systeme.
* Die Verarbeitung und Analyse der Sensorbeobachtungen
* Die Lokalisierung von beobachteten Werten (gemessene Daten)
* Performancecharakteristiken liefern wie z.B. Genauigkeit, Grenzwerte usw.
* Die explizite Beschreibung des Prozesses, wie die Beobachtungen gemacht wurden (z.B. ihr Verlauf)
* Die Bereitstellung von ausführbaren Prozessketten um neue Datenprodukte nach Bedarf zu erhalten (z.B. ableitbare Beobachtungen)
* Fundamentale Eigenschaften und Annahmen über die betroffenen Sensorsysteme abzulegen

Einzelne SensorML Schemata beschreiben einen spezifischen Sensor oder eine Sammlung von Sensoren und können in einer Registratur gespeichert werden.

Es gibt viele Beispiele von SensorML Implementationen wie z.B. das NASA MSFC SMART program (http://smartdev.itsc.uah.edu/casestudy/documents/paper_nstc_2007_A1P1.pdf). In diesem Projekt entickelte das Team einen se Sensor Web-tauglichen Arbeitsablauf, um intelligent Temperatur und Feuchtigkeitsdaten von dem Atmospheric Infrared Sounder (AIRS) Satelliten in eine regionale Konfiguration das Wettermodells des Südostens der USA einzubringen.

Siehe auch
--------

.. Writing Tip:
  Describe Similar standard

* :doc:`sos_overview`
* Sensor Planning Service
* Observations and Measurements
* Transducer Markup Language
