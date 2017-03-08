:Author: OSGeo-Live
:Author: Frank Warmerdam
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GEOS.png
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

GEOS (Geometry Engine - Open Source) は `JTS Topology Suite (JTS) <https://sourceforge.net/projects/jts-topo-suite/>`_ を C++ に移植したものです。OpenGISの "Simple Features for SQL" の空間述語関数と空間演算、 JTS 仕様の拡張トポロジ関数を備えています。

GEOS は最も広く使われている地理空間の C++ 幾何ライブラリであり、 :doc:`PostGIS <postgis_overview>`, :doc:`QGIS <qgis_overview>`, :doc:`GDAL/OGR <gdal_overview>` 及び :doc:`MapServer <mapserver_overview>` などのオープンソースプロジェクトや、 `FME <http://www.safe.com/fme/fme-technology/>`_ などの商用製品で使用されています。

準拠している標準規格
--------------------------------------------------------------------------------

* `OpenGIS Simple Features for SQL <http://www.opengeospatial.org/standards/sfs>`_ 空間述語関数と空間演算

主な機能
--------------------------------------------------------------------------------
    
* ジオメトリ: ポイント、ラインストリング、ポリゴン、マルチポイント、マルチラインストリング、マルチポリゴン、ジオメトリコレクション
* 述語: 交差(インタセクト)する(Intersects)、接する(Touches)、非接続である(Disjoint)、交差(クロス)する(Crosses)、含まれる(Within)、含む(Contains)、重複する(Overlaps)、等しい(Equals)、覆う(Covers)
* 演算: 統合(Union)、距離(Distance)、交差(Intersection)、対称差分(Symmetric Difference)、凸包(Convex Hull)、境界矩形領域(Envelope)、バッファ(Buffer)、簡略化(Simplify)、ポリゴン構築(Polygon Assembly)、妥当性検証(Valid)、面積(Area)、長さ(Length)
* Prepared ジオメトリ (事前空間インデックス)
* STR 空間インデックス
* OGC の Well-Known テキスト (WKT) と Well-Known バイナリ (WKB) のエンコーダとデコーダ
* C および C++ の API (C API は長期間の ABI 安定性を付与)
* スレッドセーフ (再入可能な API の使用)

詳細
--------------------------------------------------------------------------------

**ウェブサイト:**  http://geos.osgeo.org/

**ライセンス:** LGPL

**ソフトウェアバージョン:** |version-geos|

**対応プラットフォーム:** Windows、Linux、Mac

**API インタフェース:** C、C++

**サポート:** http://lists.osgeo.org/mailman/listinfo/geos-devel, http://www.osgeo.org/search_profile
