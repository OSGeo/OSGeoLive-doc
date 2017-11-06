:Author: Ian Turton
:Author: Frank Gasdorf
:Translator: Milena Nowotarska, OSGeo
:Reviewer: Milena Nowotarska, OSGeo
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-GeoServer.png
  :alt: project logo
  :align: right
  :target: http://geoserver.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/

GeoServer
================================================================================

Usługi sieciowe
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GeoServer jest serwerem webowym, który pozwala na udostępniania map
i danych z różnych formatów dla standardowych klientów tkaich jak
przeglądarki internetowe i programy desktop GIS. To oznacza, 
że możesz przechowywać swoje dane przestrzenne w prawie każdym formacie
jakim chcesz, a twoi użytkownicy nie muszą wiedzieć nic na temat danych GIS.
Na najprostrzym poziomie, wszystko, czego potrzebują to przeglądarka internetowa, 
która pokaże im mapy w taki sposób, w jaki chcesz. 

GeoServer jest referencyjną implementacją `Open Geospatial 
Consortium <http://www.opengeospatial.org>`_ (OGC), 
standardów
:doc:`../standards/wfs_overview` i 
:doc:`../standards/wcs_overview`, 
oraz wysokiej wydajności i zgodnym ze standardami
:doc:`../standards/wms_overview`. 
GeoServer forms a core component of the Geospatial Web. 

.. image:: /images/projects/geoserver/geoserver.png
  :scale: 60 %
  :alt: Screen Shot of GeoServer
  :align: right

Główne funkcje
--------------------------------------------------------------------------------

**Udostępnianie danych przechowywanych za pomocą różnych narzędzi:**
    * Wektor
        - Shapefile, zewnętrzny WFS
        - PostGIS, ArcSDE, DB2, Oracle Spatial, MySql, SQL Server
    * Raster
        - GeoTiff, JPG i PNG (z plikiem world), piramidy obrazów, formaty GDAL, 
          Image Mosaic, Oracle GeoRaster

**Dane są udostępniane jako bezpiecznie i szybkieobrazy przy pomocy
protokołów WMS i WMTS:**

    Ponieważ dane są udostępniane jako obrazy, twoje dane są całkowicie
    bezpieczne i chronione. Jedynym sposobem na ich kradzież jest ich wektoryzacja.
    Sposób wyświetlania każdej warstwy mapy może być zarządzany poprzez
    standard SLD, który pozwala na stylizację i etykietowanie obiektów
    Poprzez łączenie tych zasad z filtrami OGC, istnieje możliwość zastosowania 
    stylizacji zależnej od skali, która pozwala na uzyskanie większej ilości szczegółów
    mapy przy zbliżeniu. Zarządzanie rozmieszczeniem etykiet, grupowaniem i
    ich wanością jest również zaimplementowane.

**Pełne dane wektorowe moga być przesłane do klienta za pomocą protokołu WFS:**
    Klient WFS może pobrać dane wektorowe i używać ich do tworzenia map, analiz
    przestrzennych i innych operacji. Autoryzowany użytkownik ma możliwość
    modyfikacji danych i przesłania ich z powerotem na serwer protokołem
    WFS-T w celu aktualizacji zgromadzonych danych.
    Dane mogą być transmitowane przy pomocy GML (spakowane) oraz za pomocą
    innych standardowych formatów danych jak shapefile i json.

**Wartođci danzch rastrowzch mog bz pryesane do klienta pryz pomocz protokou WCS:**
    Klient GIS może zażądać aktualnych danych rastrowych do wykonania analiz przestrzennych.
    Pozwala to użytkownikowi na tworzenie aplikacji, które mogą modelować proces opisany przez twoje dane.

**Reprojekcja w locie:**
    GeoServer obsługuje większość odwzorowań bazy EPSG i jest w stanie przeliczać 
    pomiędzy nimi na żądanie, aby ułatwić pracę klientom z ograniczonym dostępnem do reprojekcji. 

**Cache kafli WMSg:**
    `GeoWebCache <http://geowebcache.org/>`_ jest usługą tworzenia kafli map dla WMS, która 
    zwiększa prędkość aplikacji mapowych. Działa jako serwer proxy pomiędzyklientem map a serwerem map,
    keszująć kafle w trakcie ich żądania, eliminując powielone żądania i oszczędzając czas przetważania
    żądania. GeoWebCache został zintegrowany z GeoServerem.

Zaimplementowane standardy
--------------------------------------------------------------------------------

* Wsparcie wielu standardów Open Geospatial Consortium (OGC):

  * :doc:`../standards/wms_overview`
  * Web Map Tile Service (WMTS)
  * :doc:`../standards/wfs_overview`, WFS-T (transakcyjny)
  * :doc:`../standards/wcs_overview`
  * :doc:`../standards/wps_overview`
  * :doc:`../standards/fe_overview`
  * :doc:`../standards/sld_overview` 
  * :doc:`../standards/gml_overview`

Szczegóły
--------------------------------------------------------------------------------

**Strona internetowa:** http://geoserver.org/

**Licencja:** Powszechna Licencja Publiczna GNU (GPL) wersja 2

**Wersja programu:** |version-geoserver|

**Systemy operacyjne:** All Java 1.5 platforms: - Windows, Linux, Mac

**Interfejsy API:** WMS, WFS, WCS, REST

**Wsparcie:** http://geoserver.org/support/

Szybkie wprowadzenie
--------------------------------------------------------------------------------

* :doc:`Przejdź do wprowadzenia <../quickstart/geoserver_quickstart>`
