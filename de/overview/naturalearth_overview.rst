:Author: OSGeo-Live
:Author: Frank Gasdorf
:Version: osgeo-live5.0draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _naturalearth-overview:

.. image:: ../../images/project_logos/logo-naturalearth.png
  :scale: 100 %
  :alt: Projektlogo
  :align: right
  :target: http://www.naturalearthdata.com/


Natural Earth
================================================================================

Kartendaten
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Natural Earth stellt Kartographen gebrauchsfertige Lösungen zum Erstellen von Karten kleiner bis mittlerer Maßstäbe (1:110-, 1:50- und 1:10-Millionen) zur Verfügung. Es sind sowohl politische (administrative) und physische (natürliche) Merkmale, als auch Vektordaten, die perfekt zu den Rasterdaten in Deckung gebracht sind, enthalten.

Natural Earth löst das weitverbreitete Problem von Kartographen: Das Finden von Vektordaten zum Erstellen von Karten kleinerer Maßstäbe, mit entsprechender Qualität für Publikationen und dem gewünschten Detaillierungsgrad.

.. image:: ../../images/screenshots/1024x768/naturalearth.png
  :scale: 55 %
  :alt: natural earth screenshot
  :align: right

Kernfunktionen
--------------------------------------------------------------------------------

* Vektordaten mit Namen und weiteren Attributen für jedes Objekt
* Große Polygone, z.B. bei den Bathymetrie-Daten, wurden in mehrere Objekte aufgeteilt, um die Daten effizient handhaben zu können. 
* Vektordaten enden perfekt beim +/- 180 Längengrad, um keine Schwierigkeiten für Projektionen hervorzurufen. Linien haben entsprechend viele Stützpunkte, um bei konischen Projektionen ruhig verlaufend dargestellt werden zu können. Die maximale Anzahl der Punkte ist jedoch so gewählt, dass ein Computer diese verarbeiten kann, ohne an seine Grenzen zu stoßen.
* Rasterdaten enthalten graustufen-geschummerte Reliefe und über kreuz verschnittene hypsometrische Schattierungen, abgeleitet aus den letzten NASA SRTM Plus Höhendaten und angepasst auf die Natural Earth Vektordaten.
* Optimiert für webbasierte Kartenanwendungen, wie z.B. Google oder Yahoo, und mit enthaltenen Maßstabsinformationen, um kenntlich zu machen, bei welchen Maßstäben bzw. Zoomlevel Objekte dargestellt werden sollen.

Datensätze
--------------------------------------------------------------------------------

Thema Kulturelle Vektordaten:
  enthält Länder, umstrittene Gebiete, Staaten und Provinzen (übergeordnete administrative Bereiche) sowie besiedelte Orte (Städte und Gemeinden). Straßen, Schienen, kommunale Gebiete, Parks und geschützte Bereiche, pazifische Staatengruppierungen sowie Wassergrenzen, die das Angebot an kulturellen Daten vervollständigen.

Thema Physische Vektordaten:
  enthält Küstenlinien, Landflächen, kleinere Inseln, Riffe, physische Landschaften und Punkte, Flüsse und Seen, Gletscher, Antarktische Eisschelfe, bathymetrische und geografische Linien sowie Gradnetze.

Thema Rasterdaten:
  enthält graustufen-geschummerte Reliefe und über kreuz verschnittene hypsometrische Schattierungen, aus Satellitendaten abgeleitete Landnutzungsdaten, idealisierte Umweltdaten, Ozeane, Entwässerungsanlagen und Seen

Details
--------------------------------------------------------------------------------

**Webseite:** http://naturalearthdata.com

**Lizenz:** lizenzfrei, die Daten sind für jedermann zugänglich

**Version der Daten:** 1.3.1

**Datenformat:** SHP and TIF+TFW

**Koordinatensytemen:** WGS84.

**Support:** http://naturalearthdata.com/forums/

