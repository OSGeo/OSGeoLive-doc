:Author: Dane Springmeyer
:Translator: Milena Nowotarska, OSGeo
:Reviewer: Milena Nowotarska, OSGeo
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _mapnik-overview:

.. image:: ../../images/project_logos/logo-mapnik.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://mapnik.org/


Mapnik
================================================================================

Redakcja kartograficzna
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Mapnik jest zestawem narzędzi służącym do tworzenia ładnych map, z przejrzystymi, 
miękkimi granicami obiektów (za pomocą wysokiej jakości grafiki z anty-aliasingiem), 
inteligentnym rozmieszczeniem etykiet oraz skalowalnymi symbolami SVG. Najbardziej znane 
użycie Mapnika to renderowanie głównych warstw Open Street Map.

Zwykle Mapnik był używany w aplikacjach map internetowych opartych na pythonie, jednakże
ulepszenie skalowalności sprawiło, że Mapnik jest ostatnio używany również do redakcji 
wysokiej rozdzielczości map papierowych.

.. image:: ../../images/screenshots/1024x768/mapnik-screenshot-barcelona.png
  :scale: 40 %
  :alt: screenshot
  :align: right

Będąc w zasadzie zbiorem obiektów geograficznych (mapa, warstwa, źródło danych,
obiekt, geometria), biblioteka nie opiera się na "systemach okienkowych" i 
może być używana w każdym środowisku serwerowym. Zamierzeniem było funkcjonowanie 
w wielowątkowych środowiskach, jak również pierwotnie zakładano głównie, 
acz nie wyłącznie, rozwój w środowisku internetowym.

Wysokopoziomowe skrypty Pythona (boost.python) ułatwiają szybki rozwój aplikacji, 
nacelowany na zope3, django itp.

Mapnik jest wieloplatformowy. Pakiety są dostępne dla większości dystrybucji Linuxa
a dla Mac OS X oraz Windows powszechnie używane są instalatory.


Szczegóły
--------------------------------------------------------------------------------

**Strona internetowa:** http://www.mapnik.org/

**Licencja:** Mniejsza Powszechna Licencja Publiczna GNU (LGPL)

**Wersja programu:** 0.7.1

**Systemy operacyjne:** Windows, Linux, Mac

**Interfejsy API:** C++, Python



Wprowadzenie
--------------------------------------------------------------------------------

* :doc:`Przejdź do wprowadzenia <../quickstart/mapnik_quickstart>`


