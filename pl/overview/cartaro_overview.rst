:Author: Friedjoff Trautwein, http://www.geops.de
:Author: Patric Hafner, http://www.geops.de
:Translator: Milena Nowotarska, OSGeo
:Reviewer:
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-cartaro.png
  :scale: 100%
  :alt: project logo
  :align: right
  :target: http://cartaro.org

Cartaro
================================================================================

Geoprzestrzenny CMS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Cartaro dostarcza geoprzestrzennej funkcjonalnoœci i us³ug sieciowych poprzez
System Zarz¹dzania Treœci¹ (CMS) Drupal. Za pomoc¹ kilku klikniêæ w Cartaro,
jesteœ w stanie stworzyæ i uruchomiæ us³ugi sieciowe w standardach OGC oraz
stworzyæ mapy na stronach internetowych. Cartaro jest zbudowane na komponentach
Open Source: bazie danych :doc:`PostGIS <../overview/postgis_overview>`, us³ugach 
GeoWebCache :doc:`GeoServer <../overview/geoserver_overview>` , mapach w przegl¹darce
internetowej :doc:`OpenLayers <../overview/openlayers_overview>`, wszystko 
zarz¹dzane za pomoc¹ potê¿nego systemu zarz¹dzania treœci¹ `Drupal <http://drupal.org>`_ CMS.

Cartaro jest zaprojektowane dla stron CMS, które musz¹ obs³ugiwaæ dane przestrzenne,
i dla organizacji chc¹cych lekkiej infrastruktury Danych Przestrzennych (SDI) 
przy minimalnych nak³adach na konfiguracjê i programowanie.

.. image:: ../../images/screenshots/1024x768/cartaro_frontpage.png
  :scale: 50%
  :alt: Cartaro Frontpage
  :align: right

G³ówne funkcje
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

Szczegó³y
--------------------------------------------------------------------------------

**Strona internetowa:** http://cartaro.org/

**Licencja:** GNU General Public License (GPL) wersja 2

**Wersja programu:** 1.0-beta4

**Systemy operacyjne:** Windows, Linux, Mac

**Interfejsy API:** JavaScript, PHP

**Wsparcie:** http://www.geops.de

Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/cartaro_quickstart>`
