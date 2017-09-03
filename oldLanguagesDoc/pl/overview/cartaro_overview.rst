:Author: Friedjoff Trautwein, http://www.geops.de
:Author: Patric Hafner, http://www.geops.de
:Translator: Milena Nowotarska, OSGeo
:Reviewer:
:Version: osgeo-live7.9
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-cartaro.png
  :alt: project logo
  :align: right
  :target: http://cartaro.org

Cartaro
================================================================================

Geoprzestrzenny CMS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Cartaro dostarcza geoprzestrzennej funkcjonalności i usług sieciowych poprzez
System Zarządzania Treścią (CMS) Drupal. Za pomocą kilku kliknięć w Cartaro,
jesteś w stanie stworzyć i uruchomić usługi sieciowe w standardach OGC oraz
stworzyć mapy na stronach internetowych. Cartaro jest zbudowane na komponentach
Open Source: bazie danych :doc:`PostGIS <../overview/postgis_overview>`, usługach 
GeoWebCache :doc:`GeoServer <../overview/geoserver_overview>`, mapach w przeglądarce
internetowej :doc:`OpenLayers <../overview/openlayers_overview>`, wszystko 
zarządzane za pomocą potężnego systemu zarządzania treścią `Drupal <http://drupal.org>`_ CMS.

Cartaro jest zaprojektowane dla stron CMS, które muszą obsługiwać dane przestrzenne,
i dla organizacji chcących lekkiej infrastruktury Danych Przestrzennych (SDI) 
przy minimalnych nakładach na konfigurację i programowanie.

.. image:: /images/screenshots/cartaro/cartaro_frontpage.png
  :scale: 50%
  :alt: Cartaro Frontpage
  :align: right

Główne funkcje
--------------------------------------------------------------------------------

Most SDI functionality comes right out of the box through the close integration 
of Drupal with PostGIS and GeoServer. The main features of Cartaro are:

* Spatial data storage with true geometry data types
* Creation of data types from within the Drupal GUI
* Integrated online editing of geospatial data
* Data publishing with integrated maps
* Configuration of map layouts and behaviors
* Symbol styling
* Data publishing through OGC standards-compliant web services (OWS) like WMS and WFS
* High performance map output through GeoWebCache
* Transparent privilege handling and security for all spatial data
* Content publication workflow and revision moderation
* Basic metadata collection through access to GeoServer-GUI
* Full extensibility through thousands of Drupal modules or individual programming

Zaimplementowane standardy
--------------------------------------------------------------------------------

  * :doc:`../standards/wms_overview`
  * :doc:`../standards/wfs_overview`
  * :doc:`../standards/wcs_overview`
  * :doc:`../standards/fe_overview`
  * :doc:`../standards/sld_overview` 
  * :doc:`../standards/gml_overview`

Szczegóły
--------------------------------------------------------------------------------

**Strona internetowa:** http://cartaro.org/

**Licencja:** GNU General Public License (GPL) wersja 2

**Wersja programu:** 1.2

**Systemy operacyjne:** Windows, Linux, Mac

**Interfejsy API:** JavaScript, PHP

**Wsparcie:** http://www.geops.de

Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Przejdź do wprowadzenia  <../quickstart/cartaro_quickstart>`
