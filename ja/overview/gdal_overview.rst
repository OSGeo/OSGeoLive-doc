:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GDAL.png
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

地理空間データ変換ツール
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Geospatial Data Abstraction Library (GDAL/OGR) は、多数のラスタ、ベクタ地理空間情報フォーマット
変換用のコマンドラインユーティリティです。

このユーティリティはクロスプラットフォームの C++ ライブラリに基づいて作成しており、
数多くのプログラミング言語からアクセスできます。ライブラリとして、
サポートしている全てのフォーマットについて、アプリケーション呼び出しのための単一抽象データモデルを提供しています。

GDAL/OGR は地理空間データを扱うライブラリでは最も幅広く利用されています。
Mapserver、GRASS、QGIS、OpenEV など多数のアプリケーションで
主要なデータアクセスエンジンとして使用されています。また、
OSSIM、Cadcorp SIS、FME、Google Earth、VTP、Thuban、ILWIS、MapGuide、ArcGIS
などのパッケージソフトウェアでも使用されています。

.. image:: ../../images/screenshots/1024x768/gdal_ogr_proj_overview.png
  :scale: 60 %
  :alt: GDALは数多くのフォーマットをサポートしています
  :align: right

主な機能
--------------------------------------------------------------------------------

* データ変換、画像変形、切り出し、その他一般的な操作を行うコマンドラインユーティリティ。
* ラスタデータの高度な操作。タイリング、サムネイル作成
* 4GBを超えるサイズのファイルをサポート
* Python、Java、C#、Ruby、VB6、Perl からのライブラリアクセス
* PROJ.4 及び OGC Well-Known テキスト座標系記述に基づいた座標系エンジン

サポートする主なフォーマット
--------------------------------------------------------------------------------

GDAL は50を超えるラスタフォーマットを、また、OGR は20を超えるベクタフォーマットをサポートしています。

これらは以下を含みます:

* **ラスタ:**  GeoTIFF、Erdas Imagine、SDTS、ESRI Grids、ECW、MrSID、JPEG2000、DTED、など
* **ベクタ:** MapInfo (tab 及び mid/mif)、ESRI Shapefile、ESRI Coverages、ESRI Personal Geodatabase、DGN、GML、PostGIS、Oracle Spatial、など

準拠している標準規格
--------------------------------------------------------------------------------

OGR ベクタデータモデルは OGC Simple Features 仕様に準拠しています。

詳細
--------------------------------------------------------------------------------

**ウェブサイト:**  http://www.gdal.org

**ライセンス:** `X/MIT style Open Source license <http://trac.osgeo.org/gdal/wiki/FAQGeneral#WhatlicensedoesGDALOGRuse>`_

**バージョン:** |version-gdal|

**動作プラットフォーム:** Windows、Linux、Mac

**API インタフェース:** C、C++、Python、Java、C#、Ruby、VB6、Perl

**サポート:** http://lists.osgeo.org/mailman/listinfo/gdal-dev, http://www.osgeo.org/search_profile

クイックスタート
--------------------------------------------------------------------------------
    
* :doc:`クイックスタート文書 <../quickstart/gdal_quickstart>`
