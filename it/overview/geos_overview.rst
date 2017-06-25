:Author: OSGeo-Live
:Author: Frank Warmerdam
:Reviewer: Cameron Shorter, Jirotech
:Translator: Luca Delucchi
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-GEOS.png
  :alt: project logo
  :align: right
  :target: http://geos.osgeo.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GEOS
================================================================================

Libreria spaziale
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GEOS (Geometry Engine - Open Source) è un port C++ di `JTS Topology Suite (JTS) <https://sourceforge.net/projects/jts-topo-suite/>`_.
Include OpenGIS Simple Features per funzioni con predicato spaziale SQL e operatori
spaziali, cosi come le funzioni specifiche della topologia avanzata JTS.

GEOS è la libreria geometrica geospaziale C++ più usata, essendo utilizzata da progetti
open source come :doc:`PostGIS <postgis_overview>`, :doc:`QGIS <qgis_overview>`,
:doc:`GDAL/OGR <gdal_overview>` and :doc:`MapServer <mapserver_overview>`, e propdotti
proprietari tipo `FME <http://www.safe.com/fme/fme-technology/>`_.

Standard implementati
--------------------------------------------------------------------------------

* `OpenGIS Simple Features <http://www.opengeospatial.org/standards/sfs>`_ per funzioni con predicato spaziale SQL e operatori spaziali

Caratteristiche principali
--------------------------------------------------------------------------------

* Geometrie: Punto, Linea, Poligono, MultiPunto, MultiLinea, MultiPoligono, GeometryCollection
* Predicati: Interseziona, Tocca, Scompone, Incrocia, Within, Contiene, Sovrappone, Uguale, Copre
* Operazioni: Unione, Distaza, Intersezione, Differenza simmetrica, Poligono convesso, Envelope, Buffer, Semplificazione, Unione Poligoni, Validità, Area, Lunghezza,
* Geometrie Preparate (indicizzate pre-spazialmente)
* Indice spaziale STR
* Codificatori e decodificatori per OGC Well Known Text (WKT) e Well Known Binary (WKB).
* API C e C++ (C API gives long term ABI stability)
* Thread safe (using the reentrant API)

Dettagli
--------------------------------------------------------------------------------

**Sito Web:**  http://geos.osgeo.org/

**Licenza:** LGPL

**Versione Software:** 3.4.2

**Piattaforme Supportate:** Windows, Linux, Mac

**Interfacce API:** C, C++

**Supporto:** http://lists.osgeo.org/mailman/listinfo/geos-devel, http://www.osgeo.org/search_profile
