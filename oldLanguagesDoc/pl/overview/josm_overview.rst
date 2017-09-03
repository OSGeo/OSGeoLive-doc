:Author: OSGeo-Live
:Author: Javier Sanchez, GeoNaTec
:Translator: Milena Nowotarska, OSGeo
:Reviewer:
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-josm.png
  :alt: project logo
  :align: right
  :target: http://josm.openstreetmap.de

JOSM
================================================================================

Desktopowy edytor danych OpenStreetMap
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

JOSM jest napisanym w Javie, bogatym w narzędaia, skalowalym, desktopowym (offline) edytorem
danych OpenStreetMap (OSM).

It supports loading stand-alone GPX tracks and GPX track data as well as editing 
existing nodes (points), ways (lines), metadata tags (name/value information) and 
relations (ordered sequence of points and lines) from the OSM database.
GPX tracks, are usually downloaded in advance from a GPS receiver or from other sources.

A number of specialised plugins have been written for JSOM, which are available for download and install.

.. image:: /images/projects/josm/josm_inteface.png
  :scale: 55 %
  :alt: JOSM Editor.
  :align: right

Główne funkcje
--------------------------------------------------------------------------------

* Normalne narzędzia interfejsu desktop GIS:

  * Personalizacja paska narzędzi, kontrolki widoku (zoom, cały widok. etc.), 
    zarządzanie stylami, ikonami i warstwami.

* Pobieranie i ładowanie wektorowych danych OSM.

* Otwieranie własnych danych:

  * pliki NMEA-0183: .nmea, .nme, .nma, .log, .txt
  * pliki OSM: .osm, .xlm, .osmbz2, .osmbz
  * pliki wymiany OSM: .osc, .osc.bz2, .osc.bz, .osc.gz
  * images (.jpg)

* Zobrazowania:
  
  * Wizualizacja map podkładowych z OSM, Bingsat, Lansat, MapBox satellite, 
    MapQuest Open Aerial lub jakichkolwiek innych źródeł WMS.

* Narzędzia edycji:

  * Nodes: merge, join, unglue, distribute, align in circle, align in line, join node to way, and more.
  * Ways: split, combine, reverse, simplify, unglue ways, and more.
  * Obszary: łączenie nakładających się obszarów, tworzenie multi-poligonów, i inne.

* Audio mapping: survey recording management.

* Photo mapping: survey pictures management.
 
* Wtyczki: Lista specjalistycznych wtyczek dostępnych do pobrania.


Zaimplementowane standardy
--------------------------------------------------------------------------------

* JOSM views WMS layers, but uses the `OSM API <http://wiki.openstreetmap.org/wiki/API_v0.6>`_ to communicate with OSM database.


Szczegóły
--------------------------------------------------------------------------------

**Strona internetowa:** http://http://josm.openstreetmap.de/

**Licencja:** Powszechna Licencja Publiczna GNU (GPL) wersja 2. Uwaga: Wtyczki JOSM mogą mieć inne licencje.

**Wersja programu:** r11427

**Systemy operacyjne:** Windows, Linux, Mac

**Interfejsy API:** Java

**Wsparcie:** http://www.osgeo.org/search_profile


.. Wprowadzenie
.. --------------------------------------------------------------------------------
.. 
.. * :doc:`Przejdź do wprowadzenia <../quickstart/josm_quickstart>`


