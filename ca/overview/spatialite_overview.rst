:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right
  :target: http://www.gaia-gis.it/spatialite/


SpatiaLite
================================================================================

Base de dades espacial
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SpatiaLite és una base de dades SQLite amb funcions espacials afegides.

SQLite és un gestor de bases de dades molt popular, simple, robust, fàcil d'utilitzar i realment lleuger. Cada bases de dades SQLite és només un arxiu; el podeu copiar, comprimir, enviar per xarxa o a la web sense cap complicació.

Els arxius també són portables; la mateixa base de dades funcionarà a Windows, Linux, MacOs, etc.

.. _SQLite: http://www.sqlite.org/

.. image:: ../../images/screenshots/1024x768/spatialite.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

Característiques principals
--------------------------------------------------------------------------------

L'extensió SpatiaLite permet a SQLite suportar dades espacials conformes a les especificacions de l'OGC.

* Suporta els formats estàndards WKT i WKB
* Implementa funcions SQL espacials com AsText(), GeomFromText(), Area(), PointN() i similars
* El joc complet de funcions OpenGis és suportat via GEOS, que comprén funcions complexes d'anàlisi espacial com Overlaps(), Touches(), Union(), Buffer() ..
* Suporta metadades espacials completes seguint les especificacions d'OpenGis
* Suport notacions alternatives de geometries com EWKT, GML, KML, and GeoJSON
* Suporta importació i exportació de shapefile
* Suporta la reprojecció de coordenades via PROJ.4 i el conjunt de paràmetres geodèsics EPSG
* Suporta conjunts de caracters locals via GNU libiconv
* Implementa un veritable Index Espacial basat en l'extensió RTree de SQLite
* L'extensió VirtualShape permet a SQLite l'accés a shapefiles com si fossin taules virtuals
* Es poden fer consultes SQL estàndard a arxius shapefile externs sense necessitat d'importar-los ni convertir-los
* L'extensió VirtualText permet a SQLite l'accés a arxius CSV/TxtTab com si fossin taules virtuals
* L'extensió VirtualXL permet a SQLite l'accés a fulls de càlcul xls com si fossin taules virtuals
* Es poden fer consultes SQL estàndard a arxius externs CSV/TxtTab i a arxius Excel sense necesitat d'importar-los ni convertir-los
* L'eina GUI permet tot això d'una manera amigable amb l'usuari

Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://www.gaia-gis.it/gaia-sins/

**Llicència:** MPL v1.1 and GPL v3

**Versió de programari:** spatialite 3.0.0 / librasterlite 1.0 / spatialite-gui 1.3.0 / spatialite-gis 1.0.0

**Sistemes operatius:** Linux, Mac, Windows

**Interfícies API:** C++


Guia ràpida
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/spatialite_quickstart>`

