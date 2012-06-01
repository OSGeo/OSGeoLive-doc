:Author: OSGeo-Live
:Author: Frank Warmerdam
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GEOS.png
  :scale: 100
  :alt: project logo
  :align: right
  :target: http://geos.osgeo.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GEOS
================================================================================

地理空間情報ライブラリ
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GEOS （Geometry Engine - オープンソース） は `JTS Topology Suite (JTS) <http://tsusiatsoftware.net/jts/main.html>`_ を C++ に移植したものです。OpenGIS の基本的なフィーチャーを SQL で記述するための関数、地理空間情報演算、 JTS 仕様の拡張トポロジ関数を備えています。

GEOS は最も広く使われている地理空間情報の C++ ライブラリであり、 :doc:`PostGIS <postgis_overview>`, :doc:`QGIS <qgis_overview>`, :doc:`GDAL/OGR <gdal_overview>` and :doc:`MapServer <mapserver_overview>`, `FME <http://www.safe.com/fme/fme-technology/>`_ など、様々なオープンソースプロジェクトで使用されています。

準拠している標準規格
--------------------------------------------------------------------------------

* OpenGIS 基本フィーチャーの SQL 記述関数、事理空間情報演算

主な機能
--------------------------------------------------------------------------------
    
* ジオメトリ: Point, LineString, Polygon, MultiPoint, MultiLineString, MultiPolygon, GeometryCollection
* 述語: Intersects, Touches, Disjoint, Crosses, Within, Contains, Overlaps, Equals, Covers
* 演算: Union, Distance, Intersection, Symmetric Difference, Convex Hull, Envelope, Buffer, Simplify, Polygon Assembly, Valid, Area, Length, 
* Prepared geometries (pre-spatially indexed)
* STR 位置情報インデックス
* OGC Well Known Text (WKT) 、 Well Known Binary (WKB) のエンコードとデコード
* C および C++ の API （C API はより長時間での安定動作）
* リエントラントな API の使用によりスレッドセーフ

詳細
--------------------------------------------------------------------------------

**ウェブサイト:**  http://geos.osgeo.org/

**ライセンス:** LGPL

**バージョン:** 3.3.2

**動作プラットフォーム:** Windows, Linux, Mac

**API :** C, C++

**サポート:** http://lists.osgeo.org/mailman/listinfo/geos-devel, http://www.osgeo.org/search_profile
