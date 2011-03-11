:Author: Alan Boudreault
:Version: osgeo-live4.0
:License: Creative Commons

.. _mapserver-overview:

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
=========

Usługi sieciowe
~~~~~~~~~~~

MapServer jest `Open Source <http://www.opensource.org>`_ silnikiem renderowania danych geograficznych napisanym w C. Poza przeszukiwaniem danych GIS, MapServer pozwala na tworzenie "geographic image maps", czyli map, które mogą skierować użytkownika do zawartości. Na przykład, Minnesota DNR `Recreation Compass <http://www.dnr.state.mn.us/maps/compass.html>`_ dostarcza użytkownikom ponad 10,000 stron internetowych, raportów i map poprzez jedną aplikację. Ta sama aplikacja służy jako "map engine" dla innych części serwisu, dostarczając informacji przestrzennej, gdzie jest ona potrzebna.

MapServer był pierwotnie rozwijany przez Uniwersytet Minesoty (UMN) jako projekt ForNet we współpracy z NASA i Minnesota Department of Natural Resources (MNDNR). Następnie był on pod opieką projektu TerraSIP, sponsorowanego przez NASA projektu pomiędzy UMN a konsorcium z branży zagospodarowania przestrzennego.

MapServer is now a project of `OSGeo <http://www.osgeo.org>`_, and is maintained by a growing number of developers (nearing 20) from around the world. It is supported by a diverse group of organizations that fund enhancements and maintenance, and administered within OSGeo by the MapServer Project Steering Committee made up of developers and other contributors.

Główne funkcje
-------------

.. image:: ../../images/screenshots/1024x768/mapserver.png
  :scale: 50 %
  :alt: screenshot
  :align: right

* Zaawansowane wyjście kartograficzne 

  * Scale dependent feature drawing and application execution
  * Feature labeling including label collision mediation
  * Fully customizable, template driven output

* Czcionki TrueType

  * Automatyzacja opisów pozaramkowych (paska skali, mapy referencyjnej i legendy)
  * Thematic mapping using logical- or regular expression-based classes

* Support for popular scripting and development environments

  * PHP, Python, Perl, Ruby, Java, i .NET

* Wsparcie wielu systemów operacyjnych

  * Linux, Windows, Mac OS X, Solaris, i inne

* Wiele rastrowych i wektorowych formatów

  * TIFF/GeoTIFF, EPPL7 i wiele innych poprzez GDAL
  * ESRI shapefile, PostGIS, ESRI ArcSDE, Oracle Spatial, MySQL i OGR


* Obsługa układów współrzędnych

  * Reprojekcja w locie ponad tysiąca układów współrzędnychpoprzez bibliotekę Proj.4

Zaimplementowane standardy
---------------------

* Wsparcie wielu standardów Open Geospatial Consortium  (OGC)

  * WMS (klient/serwer), nie-tranzakcyjny WFS (klient/serwer), WMC, WCS, Filter Encoding, SLD, GML, SOS, OM

Demo
----

* `Itasca <http://localhost/mapserver_demos/itasca/>`_

Dokumentacja
-------------

* `MapServer 5.6.6 Documentation <file:///usr/local/share/mapserver/doc/index.html>`_


Szczegóły
-------

**Strona internetowa:** http://www.mapserver.org/

**Licencja:** `Licencja MIT-style <http://mapserver.org/copyright.html#license>`_

**Wersja programu:** 5.6.6

**Systemy operacyjne:** Windows, Linux, Mac

**Interfejsy API:** C, PHP, Python, Perl, Ruby, Java, and .NET

**Wsparcie:** http://mapserver.org/community/

