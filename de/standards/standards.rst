.. GeoSpatial Standards documentation master file, created by
   sphinx-quickstart on Mon Jul 19 08:52:52 2010.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Standards des Open GeoSpatial Consortiums
=========================================

Einführung
------------
Das Open Geospatial Consortium (OGC) wurde 1994 gegründet um räumliche Informationen zu einem integralen Teil der globalen Informationsinfrastruktur zu machen. OGC Mitglieder – Technologieanbieter und -anwender - erarbeiten gemeinsam offene Standards für Schnittstellen und daran angegliederte Encoding Standards sowie Best Practices. Diese Standards ermöglichen es Entwicklern, Informationssysteme aufzubauen, die leicht räumliche Informationen und Anweisungen mit anderen Anwendungen austauschen können. Die Anforderungen reichen von komplexen zeitlichen Steuerungen und der Kontrolle von erdbeobachtenden Satelliten bis zur Anzeige von einfachen Kartenbildern im Web sowie der Kodierung von Standorten in ein paar Bytes zum Geo-Tagging und Nachrichtenvermittlung. Ein Blick auf die OGC Arbeitsgruppen zeigt (http://www.opengeospatial.org/projects/groups/wg) die große Bandbreite der aktuellen Aktivitäten im OGC.

OGC Grundlage und OGC Referenzmodell
----------------------------------------

Die Grundlage der OGC Standards besteht aus OGC Standards (http://www.opengeospatial.org/standards) für Schnittstellen, Kodierungen, Profile, Anwendungsschemata und Best Practice Dokumenten. 
Das OGC Referenzmodell (ORM) (http://www.opengeospatial.org/standards/orm) beschreibt diese Standards und die Beziehungen der Standards zueinander und zu den ISO Standards. Das ORM bietet einen Überblick über die OGC Standards und dient als hilfreiche Quelle, wenn es darum geht Architekturen für spezifische Anwendungen aufzubauen.
 
Bei der Entwicklung von Web Service Anwendungen unter Einsatz von OGC Standards (und beim Kennenlernen der Beziehungen der OGC Standards untereinander) hilft es, sich die drei Schlüsselfunktionen für Anwendungen in einer Web Service Umgebung zu vergegenwärtigen. Diese sind das Veröffentlichen, Auffinden und Einbinden von Daten.

* Veröffentlichen: Datenanbieter veröffentlichen ihre Daten
* Auffinden: Endanwender und deren Anwendungen können benötigte Datenquellen zur Laufzeit auffinden
* Einbinden: Endanwender und deren Anwendungen können auf Daten zur Laufzeit zugreifen und diese anwenden

Die meisten in den letzten Jahren entwickelten OGC Standards sind Standards aus dem Web Service Bereich. Diese Standards werden kollektiv als OGC Web Services (OWS) angesprochen. Die folgende Graphik stellt ein generelles Architekturschema für OGC Web Services dar. Dieses Schema zeigt die generischen Klassen der Dienste, die in diversen Geoprozessierungen und räumlichen Aktivitäten zum Einsatz kommen.


.. figure:: ../../images/standards/publish_find_bind.jpg
  :scale: 25%
  :alt: Web Services Framework für OGC Geoprocessing Standards

Die Abkürzungen in der Graphik werden weiter unten erklärt. Einige sind “OGC standards” und andere sind öffentlich zugängliche “Discussion Papers” (Diskussionen), “Requests” (Anfragen) und “Recommendation Papers” (Empfehlungen). (Beachten Sie, dass einige Standards noch in Bearbeitung sind und noch nicht öffentlicht, aber für OGC Mitglieder zugänglich sind.) 

* :doc:`wms_overview`
* :doc:`wfs_overview`
* :doc:`wcs_overview`
* :doc:`wps_overview`
* :doc:`csw_overview`
* :doc:`sos_overview`
* Sensor Model Language (SensorML)
* Sensor Planning Service (SPS)
* Web Terrain Service (WTS)
* Grid Coverage Service
* Coordinate Transformation Service
* Web Coverage Processing Service (WCPS)
* Web Map Tile Service (WMTS)
* :doc:`gml_overview`
* :doc:`kml_overview`
* :doc:`sensorml_overview`
* :doc:`sld_overview`
* :doc:`fe_overview`
* Simple Features (SF)
* Sensor Web Enablement (SWE)
* XML for Image and Map Annotation (XIMA)
* CityGML
* GeosciML
* GML in JPEG 2000
* Observations and Measurements (O&M)
* Symbology Encoding
* Transducer Markup Language (TML)


.. links to standards
  * :doc:`wms_overview` (http://www.opengeospatial.org/standards/wms)
  * :doc:`wfs_overview` (http://www.opengeospatial.org/standards/wfs)
  * :doc:`wcs_overview` (http://www.opengeospatial.org/standards/wcs)
  * :doc:`wps_overview` (http://www.opengeospatial.org/standards/wps)
  * :doc:`csw_overview` (http://www.opengeospatial.org/standards/specifications/catalog)
  * :doc:`sos_overview` (http://www.opengeospatial.org/standards/sos)
  * Sensor Model Language (SensorML) (http://www.opengeospatial.org/standards/sensorml) 
  * Sensor Planning Service (SPS) (http://www.opengeospatial.org/standards/sps)
  * Web Terrain Service (WTS) (http://portal.opengeospatial.org/files/?artifact_id=1072)
  * Grid Coverage Service (http://www.opengeospatial.org/standards/gc)
  * Coordinate Transformation Service (http://www.opengeospatial.org/standards/ct)
  * Web Coverage Processing Service (WCPS) (http://www.opengeospatial.org/standards/wcps)
  * Web Map Tile Service (WMTS) (http://www.opengeospatial.org/standards/wmts)
  * :doc:`gml_overview` (http://www.opengeospatial.org/standards/gml) 
  * :doc:`kml_overview` (http://www.opengeospatial.org/standards/kml)
  * :doc:`sensorml_overview` (http://www.opengeospatial.org/standards/sensorml)
  * Styled Layer Descriptor (SLD) (http://www.opengeospatial.org/standards/sfc) 
  * Filter Encoding (http://www.opengeospatial.org/standards/filter)
  * Simple Features (SF) (http://www.opengeospatial.org/standards/sfa) 
  * Sensor Web Enablement (SWE) (http://www.opengeospatial.org/ogc/markets-technologies/swe)
  * XML for Image and Map Annotation (XIMA) (http://portal.opengeospatial.org/files/?artifact_id=1020) 
  * CityGML (http://www.opengeospatial.org/standards/citygml)
  * GeosciML (http://www.geosciml.org/)
  * GML in JPEG 2000 (http://www.opengeospatial.org/standards/gmljp2)
  * Observations and Measurements (O&M) (http://www.opengeospatial.org/standards/om)
  * Symbology Encoding (http://www.opengeospatial.org/standards/symbol)
  * Transducer Markup Language (TML) (http://www.opengeospatial.org/standards/tml)

Weitere Informationen:
----------------------

* Vollständige Liste der OGC Standards: http://www.opengeospatial.org/standards/
* OGC Tutorials präsentiert durch IGARSS 2010: http://www.ogcnetwork.net/node/1481 
* OGC Netzwerk Schulungen (http://www.ogcnetwork.net/learn).
