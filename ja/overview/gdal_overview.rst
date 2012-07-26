:Author: OSGeo-Live
:Version: osgeo-live4.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _gdal-overview-ja:

.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://gdal.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GDAL/OGR
================================================================================

地理空間情報データ変換ツール
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Geospatial Data Abstraction Library (GDAL/OGR) は、多数のラスタ、ベクタ地理空間情報フォーマット
変換用のコマンドラインユーティリティーです。

このユーティリティーはクロスプラットフォームのC++ライブラリに基づいて作成しており、
数多くのプログラミング言語からアクセスできます。
サポートしている全てのフォーマットについて、単独データでのライブラリ呼び出しに対応しています。

GDAL/OGRは地理空間情報データを扱うライブラリでは最も幅広く利用されています。
Mapserver、GRASS、QGIS、OpenEVなど多数のアプリケーションで
データアクセスエンジンとして使用されています。また、
OSSIM、Cadcorp SIS、FME、Google Earth、VTP、Thuban、ILWIS、MapGuide、ArcGIS
などのパッケージソフトウェアでも使用されています。

.. image:: ../../images/screenshots/1024x768/gdal_ogr_proj_overview.png
  :scale: 60 %
  :alt: GDAL supports many geodata formats GDALは数多くのフォーマットをサポートしています
  :align: right

主な機能
--------------------------------------------------------------------------------

* データ変換、画像変形、切り出し、その他一般的な操作を行うコマンドラインユーティリティー。
* ラスタデータの高度な操作。タイリング、サムネイル作成
* 4GBを超えるサイズのファイルをサポート
* Python, Java, C#, Ruby, VB6, Perl からのアクセス
* PROJ 4及び Open Geospatial Consortium (OGC) WKT 座標系記述に基づいた座標系エンジン

サポートする主なフォーマット
--------------------------------------------------------------------------------

GDALは50を超えるラスタ形式と、OGRを利用して20を超えるベクタ形式をサポートしています。

サポートするフォーマットの例:

* **ラスタ:**  GeoTIFF, Erdas Imagine, SDTS, ESRI Grids, ECW, MrSID, JPEG2000, DTED, など
* **ベクタ:** MapInfo (tab 及び mid/mif), ESRI Shapefile, ESRI Coverages, ESRI Personal Geodatabase, DGN, GML, PostGIS, Oracle Spatial, など

準拠している標準規格
--------------------------------------------------------------------------------

OGRベクタデータモデルはOGCの単純地物モデルに基づいています。

詳細
--------------------------------------------------------------------------------

**ウェブサイト:**  http://www.gdal.org

**ライセンス:** `X/MIT style Open Source license <http://trac.osgeo.org/gdal/wiki/FAQGeneral#WhatlicensedoesGDALOGRuse>`_

**バージョン:** 1.7.0 (1.9.1)

**動作プラットフォーム:** Windows, Linux, Mac

**API:** C, C++, Python, Java, C#, Ruby, VB6, Perl

**サポート:** http://lists.osgeo.org/mailman/listinfo/gdal-dev, http://www.osgeo.org/search_profile

クイックスタート
--------------------------------------------------------------------------------
    
* `クイックスタート <../quickstart/gdal_quickstart.html>`_
