:Author: Pirmin Kalberer
:Translator: Milena Nowotarska, OSGeo
:Reviewer: Milena Nowotarska, OSGeo
:Version: osgeo-live4.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _osgearth-overview:

.. image:: ../../images/project_logos/logo-osgearth.gif
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://osgearth.org/


osgEarth
================================================================================

Narzędzia do modelowania terenuTerrain rendering toolkit
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

osgEarth jest zestawem skalowalnych narzędzi do renderowania terenu w oparciu o 
OpenSceneGraph_ (OSG). Posiada otwarte źródła, jest wysoko wydajny i obsługuje 
grafikę 3D. Stwórz prosty plik XML, umieść go nad swoim zobrazowaniem, rzeźbą terenu,
 danymi wektorowymi i wczytaj do swojej ulubionej aplikacji OSG.
osgEarth obsługuje wszystkie rodzaje danych, a także zawiera wiele przykładów służących 
pomocą, aby szybko i sprawnie zacząć pracę. 

.. _OpenSceneGraph: http://www.openscenegraph.org/

.. image:: ../../images/screenshots/1024x768/osgearth.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

Główne funkcje
--------------------------------------------------------------------------------

osgEarth makes is easy to deploy scalable terrain models: 

* Create terrain models - either offline, or dynamically at run-time 
* Load whole-earth terrains without writing any code 
* Layer imagery to produce high-resolution insets 
* Combine multiple imagery, elevation, and vector data sources on the fly 
* Set up map tile caches to maximize performance 
* Adjust layer opacity for multi-texturing effects 

But osgEarth does more than just render terrain: 

* Drape vector (GIS) data on the terrain 
* Reproject data among different coordinate reference systems 
* Place external models on the terrain with lat/long coordinates 
* Do fast intersection testing 
* Incorporate new data into existing VPB databases (without rebuilding them) 
* Access terrain tiles directly for non-visual processes 

Things you can see:

* GeoTIFF imagery and Digital Elevation Model (DEM) files (plus lots of other formats) 
* Vector data like ESRI shapefiles 
* OGC-compliant web mapping data (like WMS_) 
* GIS layers published with MapServer_ or `ESRI ArcGIS Server`_
* Online maps like OpenStreetMap_, `ArcGIS Online`_, or `NASA OnEarth`_

.. _WMS: http://www.opengeospatial.org
.. _MapServer: http://mapserver.org
.. _`ESRI ArcGIS Server`: http://www.esri.com/software/arcgis/arcgisserver/
.. _OpenStreetMap: http://openstreetmap.org
.. _`ArcGIS Online`: http://resources.esri.com/arcgisonlineservices/
.. _`NASA OnEarth`: http://onearth.jpl.nasa.gov


Szczegóły
--------------------------------------------------------------------------------

**Strona internetowa:** http://osgearth.org/

**Licencja:** GNU Mniejsza Powszechna Licencja Publiczna (LGPL) 

**Wersja programu:** 2.0

**Systemy operacyjne:** Linux, Mac, Windows

**Interfejsy API:** C++

**Wsparcie komercyjne:** http://osgearth.org/#ProfessionalServices


Wprowadzenie
--------------------------------------------------------------------------------

* :doc:`Przejdź do wprowadzenia <../quickstart/osgearth_quickstart>`


