:Author: OSGeo-Live
:Version: osgeo-live4.0
:License: Creative Commons

.. _gvsig-overview:

.. image:: ../../images/project_logos/logo-gvSIG.png
  :scale: 75 %
  :alt: project logo
  :align: right
  :target: http://www.gvsig.org/

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html


gvSIG Desktop
==============

Desktop GIS
~~~~~~~~~~~

gvSIG_ jest desktopową aplikacją Systemu Informacji Geograficznej (GIS) zaprojektowaną
do pozyskiwania, przechowywania i analiz każdego rodzaju
informacji geograficznej, w celu rozwiązywania kompleksowych problemów zarządzania i 
planowania przestrzeni. gvSIG jest znany ze swojego przyjaznego dla użytkownika interfejsu i możliwości
dostępu do wszystkich popularnych formatów danych rastrowych i wektorowych. Zawiera 
szeroki wachlarz narzędzi do pracy z informacjami geograficznymi (odpytywania,
tworzenia warstw, geoprocessingu, analiz sieciowych, etc.), które zmieniają gvSIG w idealne
narzędzie dla użytkowników zajmujcych się przestrzenią geograficzną.

gvSIG jest znany z:

* możliwości integrowania w tym samym widoku zarówno lokalnych jak i zdalnych danych z pomocą standardów OGC.
* bycia łatwo rozszerzalnym, co pozwala na nieprzerwane doskonalenie
aplikacji, jak i dopasowywanie jej do potrzeb różnych użytkowników.
* bycia dostępnym w ponad 20 językach (hiszpańskim, angielskim, niemieckim, francuskim, 
  włoskim,...) .
* bycia dostępnym dla platform Windws, Linux, i Mac OS X:

.. image:: ../../images/screenshots/1024x768/gvsig_desktop.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Główne funkcje
-------------

* Dostarcza popularnych narzędzi GIS, służących do wczytywania danych, nawigacji po mapie, odpytywania informacji takich jak informacje alfanumeryczne, pomiaru odległości, kartografii tematycznej, edycji legendy z użyciem typowych rodzajów legendy, etykietowania, wybierania obiektów za pomocą różnych sposobów selekcji, tabel danych z ich statystykami, segregowania według kolejności, relacji między tabelami, łączenia tabel, zarządzania treścią mapy, geoprocesingu, CAD, przetwarzania rastrów itp.

* Interopercyjność: może pracować na większości znanych formatów danych:

  * rastrowych: ecw,  ENVI hdr, ERDAS img, (Geo)TIFF, GRASS, ...
  * wektorowych & CAD: shapefile, GML, KML, DGN, DXF, DWG
  * bazodanowych: PostGIS, MySQL, Oracle, ArcSDE
  * zdalnych: ECWP, ArcIMS, standardy OGC

* Klient usług do lokalizowania zasobów danych w 
  SDI (usługi katalogowe i gazetery)
  
  * Katalogi: Z3950, SRW, CSW (ISO/19115 and ebRIM)
  * Gazetery: ADL, WFS, WFS-G
  
* Ponad 290 algorytmów przestrzennych poprzez integrację SEXTANTE_ i systemu GRASS 
  
* Zintegrowane zaawansowane narzędzia CAD:

  * dane wektorowe: modyfikacja, tworzenie i usuwanie obiektów
  * typowy dla programów CAD wiersz poleceń
  * narzędzia typu pomoc, grid, command stack, compleksowe wybieranie obiektów
  * narzędzia do wprowadzania obiektów typu punktowego, poligonowego, liniowego, eliptycznego, etc...
  * narzędzia do modyfikacji ich kąta obrotu i symetrii,...
  
* Zintegrowane zaawansowane narzędzia rastrowe:

  * georeferencja i zmiana odwzorowania
  * eksport, wycinanie
  * przeszukiewanie tabel, histogram
  * filtry, wektoryzacja
  * zarządzanie nakładkami i obszarami zainteresowania

* Obsługa skryptowania
* Potężny silnik transformacji między układami współrzędnych PROJ4


Zaimplementowane standardy
---------------------

Zaawansowane wsparcie klienta wielu standardów Open Geospatial Consortium (OGC)

* Wczytywanie warstw WMS, WFS i WCS
* Eksport/import legend SLD
* Eksport/import Web Map Context (WMC)
* Przeszukiewnie katalogów CSW (ISO/19115 i ebRIM)
* Przeszukiewnie gazeterów przy pomocy WFS-G 

Szczegóły
-------

**Strona internetowa:** http://www.gvsig.org/

**Licencja:** Powszechna Licencja Publiczna GNU (GPL) wersja 2

**Wersja programu:** 1.10

**Systemy operacyjne:** Windows, Linux, Mac

**Wsparcie:** http://www.gvsig.org/web/organization/services


.. _gvSIG: http://www.gvsig.org
.. _SEXTANTE: http://forge.osor.eu/projects/sextante/

Szybkie wprowadzenie
----------

* `Przejdź do wprowadzenia <../quickstart/gvsig_quickstart.html>`_
