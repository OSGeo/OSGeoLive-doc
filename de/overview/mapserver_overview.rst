:Author: Alan Boudreault, Steve Lime
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-mapserver-new.png
  :scale: 65 %
  :alt: project logo
  :align: right
  :target: http://mapserver.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


MapServer
================================================================================

Internet Dienste
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
MapServer ist eine `Open Source <http://www.opensource.org>`_ Software zur Visualisierung von räumlichen Daten, die in der Sprache C geschrieben wurde. Neben der Anzeige von Geodaten können MapServer Anwendungen den Nutzer über die Karte zu thematischen Inhalten weiterleiten. Beispielsweise stellt der Minnesota DNR `Recreation Compass <http://www.dnr.state.mn.us/maps/compass.html>`_ seinen Nutzern mehr als 10000 Webseiten, Berichte und Karten über eine einzige Anwendung zur Verfügung. Die Anwendung dient als Kartenkomponente und verlinkt auf andere Bereiche der Seite. Sie stellt je nach Thema einen räumlichen Kontext her. 

MapServer wurde ursprünglich durch das ForNet Projekt an der Universität von Minnesota (UMN) in Zusammenarbeit mit der NASA und dem Minnesota Department of Natural Resources (MNDNR) entwickelt. Danach wurde MapServer vom NASA-finanzierten TerraSIP-Projekt getragen, in dem die University of Minnesota mit einem Konsortium für Bodenordnung und Landentwicklung zusammenarbeitete.

MapServer ist nun ein Projekt der `OSGeo <http://www.osgeo.org>`_ und wird von einer wachsenden Anzahl an Entwicklern (etwa 20), die weltweit vertreten sind,  betreut. Das Projekt wird von diversen Organisationen unterstützt, die die Unterhaltung und Weiterentwicklung unterstützten. MapServer wird innerhalb der OSGeo durch das MapServer Project Steering Committee administriert, das sich aus Entwicklern und engagierten Mitwirkenden zusammensetzt.


Kernfunktionen
--------------------------------------------------------------------------------

.. image:: ../../images/screenshots/1024x768/mapserver.png
  :scale: 50 %
  :alt: screenshot
  :align: right

* Leistungsstarke kartographische Ausgabe

  * Maßstabsabhängige Anzeige und Anwendungsausführung
  * Objektbeschriftungen mit Vermeidung von Überlappungen
  * TrueType Schriften zur Beschriftung und Symboldarstellung
  * Generierung von Kartenelementen (Maßstabsleiste, Referenzkarte, Legende)
  * Thematische Karten durch die Nutzung von logischen Klassen oder über reguläre Ausdrücke definierte Klassen
  * Erweiterung um weitere Ausgabeformate durch Treiber für AGG, Cairo, GD und OpenGL und andere
  * Spezielle Generierung von Kacheln

* Unterstützung anspruchsvoller räumlicher Abfragen

* Unterstützung verbreiteter Skriptsprachen und Entwicklungsumgebungen

  * Ermittlung von Objekten über Attribute, Punkt, Umgebungsrechteck oder Geometrie über ein oder mehrere Layer hinweg
  * Unterstützung von Abfragen auf Rasterdaten
  * Vollständig anpassbare vorlagenbasierte Ausgabe
  * OGR-basierte Ausgabe von Abfrageergebnissen

  * CGI/FastCGI
  * PHP, Python, Perl, Ruby, Java, und .NET

* Betriebssystemübergreifende Unterstützung

  * Linux, Windows, Mac OS X, Solaris und mehr

* zahlreiche Raster- und Vektordatenformate

  * ESRI Shapes, PostGIS, ESRI ArcSDE, Oracle Spatial
  * Viele andere Formate über GDAL und OGR


* Karten Umprojektion

  * On-the-fly Umprojektion für tausende Projektionen durch die Verwendung der Proj.4 Bibliothek

Implementierte Standards
--------------------------------------------------------------------------------

* Unterstützung zahlreicher Open Geospatial Consortium (OGC) Standards

  * WMS (Client/Server), nicht-transaktionaler WFS (Client/Server), WMC, WCS, Filter Encoding, SLD, GML, SOS, OM

Demo
--------------------------------------------------------------------------------

* `Itasca <http://localhost/mapserver_demos/itasca/>`_

Dokumentation
--------------------------------------------------------------------------------

* `MapServer Dokumentation <../../mapserver/doc/index.html>`_
* `MapServer Dokumentation in deutscher Sprache <http://mapserver.org/de/>`_

Details
--------------------------------------------------------------------------------

**Webseite:** http://www.mapserver.org/

**Lizenz:** `MIT-style license <http://mapserver.org/copyright.html#license>`_

**Software Version:**  6.0.3

**Unterstützte Plattformen:** Windows, Linux, Mac

**API Schnittstellen:** C, PHP, Python, Perl, Ruby, Java, and .NET

**Support:** http://mapserver.org/community/

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/mapserver_quickstart>`
