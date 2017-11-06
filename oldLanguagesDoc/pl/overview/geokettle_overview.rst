:Author: Thierry Badard 
:Translator: Milena Nowotarska, OSGeo
:Reviewer: Milena Nowotarska, OSGeo
:Version: osgeo-live5.5draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _geokettle-overview-pl:

.. image:: /images/project_logos/logo-geokettle.png
  :alt: project logo
  :align: right
  :target: http://www.geokettle.org/

GeoKettle
================================================================================

Integracja danych
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GeoKettle jest przestrzenną wersją `Pentaho Data Integration <http://kettle.pentaho.com>`_ (znaną również jako Kettle). 
It is a powerful, metadata-driven spatial ETL (Ekstrakcja, Transformacja i Ładowanie) tool dedicated to the integration of different data sources for building and updating geospatial databases, data warehouses and web services.

GeoKettle pozwala na ekstrakcję danych ze źródeł danych, transformację danych w celu usunięcia błędów, wyczyszczenia danych, zmiany struktury danych, przystosowania danych do zgodności ze standardami, i załadowania zmodyfikowanych danych do docelowego Systemu Zarządzania Bazą Danych (SZBD), pliku GISe,lub geoprzestrzennej usługi sieciowej. 

GeoKettle jest szczególnie użyteczne, kiedy potrzebne jest zautomatyzowanie kompleksowych i powtarzalnych operacji na danych bez tworzenia kodu, do konwersji między wieloma formatami danych, do migracji danych z jednego SZBD do drugiego, do niektórych zadań zasialnia danymi różnych SZBD, etc.

W grupie narzędzi geoprzestrzennych Geokettle porównywalne jest z  FME, prywatnym narzędziem przestrzennym ETL. GeoKettle jest stabilny, szybki, zgodny ze standardami, z tysiącami funkcji i możliwością czytania/zapisu wielu formatów danych, usług i SZBD. GeoKettle jest używany przez różne organizacje z całego świata, włączając w to agencje rządowe, banki, itp.

.. image:: /images/projects/geokettle/geokettle-overview.png
  :scale: 50 %
  :alt: project logo
  :align: right

Główne funkcje
--------------------------------------------------------------------------------

* Pobieranie danych z: 

  * 35+ rodzajów baz danych:MySQL, PostgreSQL/PostGIS, Oracle, ...
  * Plików XML 
  * Plików XLS 
  * Plików Xbase  (dBase, Foxpro, etc)
  * Informacji o systemach plików
  * Danych generowanych
  * Plików MS Access
  * LDAP
  * SOLAP (Spatial OLAP) system: GeoMondrian

  * Formatów danych przestrzennych: Shapefile, GML 3.1.1, KML 2.2, all OGR supported formats
  * Usług sieciowych OGC: Web Feature Service (WFS), Sensor Observation Service (SOS), Catalogue Web Service (CSW)

* Transformacja danych:

  * Engine based data transfer (no code generator) 
  * Poszukiwanie danych w bazach danychplikach lub pamięci
  * Obliczanie
  * Skryptowanie: Javascript, SQL, RegExp
  * Rozdzielanie
  * Tworzenie map
  * Wybieranie
  * Partitioning
  * Filtrowanie
  * Merdżowanie
  * Łączenie
  * Duplikowanie
  * Klastering (MPP)
  * Pivotting
  * Analizy danych przestrzennych: buforowanie, tworzenie centroidów, obliczanie odległości, przecinanie, łączenie, ...
  * Zaawansowany geoprocesing: wycinanie, delaunay, upraszczanie/wugładzanie geometrii, rozdzielanie obiektów, ...
  * Agregacja przestrzenna
  * Podgląd opracowania kartograficznego

* Wczytywanie danych do formatu docelowego:

  * Wczytywanie z baz danych: MySQL, PostgreSQL/PostGIS, Oracle, ...
  * Zasilanie hurtowni danych
  * Formaty danych przestrzennych: Shapefile, GML 3.1.1, KML 2.2, wszystkie formaty obsłygiwane przez OGR
  * Usługi sieciowe OGC: Catalogue Web Service (CSW), ...
  * Partitioned loading
  * Wczytywanie wsadowe
  * Wczytywanie równoległe
  * Klastering

* Środowisko:
  
  * Pełne GUI o nazwie "Spoon" do edycji wszystkich opcji tra transformacji
  * Narzędzia wiersza poleceń: wykonywanie zadań transformacji
  * Web server: remote execution and clustering perfect in cloud
    computing environment for very large datasets processing
  * API programistyczne dla Javy
  * Ekosystem wtyczek

Zaimplementowane standardy
--------------------------

* Zgodny ze standardami OGC (SFS, CSW, SOS)

Szczegóły
-------------

**Strona internetowa:** http://www.geokettle.org/

**Licencja:** GNU Mniejsza Ogólna Powszechna Licencja (LGPL) wersja 2.1

**Wersja programu:** |version-geokettle|

**Systemy operacyjne:** Windows, Linux, Mac, Solaris

**Interfejsy API:** Java, Javascript

**Wsparcie:** http://www.spatialytics.org & http://www.spatialytics.com


Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Przejdź do wprowadzenia <../quickstart/geokettle_quickstart>`

