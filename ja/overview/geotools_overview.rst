:Author: Jody Garnett
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GeoTools.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://geotools.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GeoTools
================================================================================

GeoTools は Open Geospatial Consortium (OGC)の標準に準拠した空間データの操作やデータ構造の利用するための標準に準拠したオープンソース(LGPL) のJavaライブラリです.

.. image:: ../../images/screenshots/800x600/geotools-overview.png
  :scale: 60 %
  :alt: GeoTools は追加フォーマットをプラグインでサポートできるモジュール構造ライブラリです
  :align: right

GeoTools はいくつものプロジェクトで利用されています,そこにはウェッブサービスやコマンドラインツール,デスクトップアプリケーションが含まれています. OSGeo-Live アプリケーションでGeotoolsを利用しているのは次のものです: 
:doc:`52nSOS_overview`, :doc:`52nWPS_overview`, :doc:`atlasstyler_overview`, :doc:`geomajas_overview`, :doc:`geopublisher_overview`, :doc:`geoserver_overview`, and :doc:`udig_overview`.

主な特徴
--------------------------------------------------------------------------------

* キー空間コンセプトへのインターフェースとデータ構造の定義
  
  * 統合されたジオメトリのサポートは `JTS Topology Suite (JTS) <http://tsusiatsoftware.net/jts/main.html>`_ によって行われています
  * 属性と空間条件によるフィルタリングは OGC Filter Encoding specificationを利用しています
  
* クリーンデータアクセス API 使うと地物のアクセスやスレッド中でのロックをサポートするトランザクションを利用できます
  
  * 多くの形式のファイルや空間データベースのGISデータにアクセスできます
  * 空間参照システムと座標変換をサポートしています
  * 豊富な種類の地図投影法で作業を行えます
  * 空間条件や非空間属性値を使ってデータのフィルタや解析ができます

* ステートレス低メモリのレンダラは特にサーバ環境で便利です.
  
  * 複合スタイリングを利用して地図の構成と表示ができます

* GMLコンテントを利用するためのパワフルな*スキーマを利用した* 構文解析技術が使えます
  
  * 構文解析 / エンコーディング技術はGML, Filter, KML, SLD, と SEなどの多くのOGC標準を利用するために利用されています.
  
* GeoTools プラグイン: オープンプラグインシステムを利用すると追加の形式を利用することができます
  
  * ImageIO-EXT プラグインプロジェクトはGeoTools でGDALの機能を使って追加ラスタ形式を読めるようにしています
 
* GeoTools エクステンション

  * コアライブラリの空間機能を使ってビルドに追加機能を提供します.
  
  .. image:: ../../images/screenshots/800x600/geotools-extension.png
     :alt: GeoTools ライブラリを使ってエクステンションをビルドします

  * エクステンションとしてグラフ,ネットワーキングサポート(最短経路検索のため), 検証, ウェッブマップサーバクライアント, xml構文解析とエンコーディング,色の調整機能等を提供できます.

* GeoTools でサポートしていないもの
  
  * GeoToolsでは新しい才能を育成するしたり実験をするための場所としてコミュニティが運営されています.
  
  * いくつかのハイライトを列挙するとswingのサポート (geotools チュートリアルで使われています), swt, ローカルとウェッブプロセスサポート, シンボロジの追加, データ形式の追加, グリッドの生成といくつかのISOジオメトリの実装があります.

サポートする形式
-----------------  

* ラスタ形式とデータアクセス:
  
  arcsde, arcgrid, geotiff, grassraster, gtopo30, image (JPEG, TIFF, GIF, PNG), imageio-ext-gdal, imagemoasaic, imagepyramid, JP2K, matlab.
  
* データベース "jdbc-ng" サポート:
  
  db2, h2, mysql, oracle, postgis, spatialite, sqlserver.

* ベクタ形式とデータアクセス:
  
  app-schema, arcsde, csv, dxf, edigeo, excel, geojson, org, property, shapefile, wfs.

* XML バインディング:

  Java データ構造とバインディングによって以下の形式が利用できます:
  xsd-core (xml シンプルタイプ), fes, filter, gml2, gml3, kml, ows, sld, wcs, wfs, wms, wps, vpf.
  
  追加のジオメトリ, Filter と Style parser/encoders はDOMとSAXアプリケーションとして作成できます.
  
利用できる標準
--------------------------------------------------------------------------------

多くのOpen Geospatial Consortium (OGC) 標準をサポートしています:

* OGC Style Layer Descriptor / Symbology Encoding データ構造とレンダリングエンジン
* OGC General Feature Model ,Simple Feature supportを含む
* OGC Grid Coverage ラスタの情報を表現
* OGC Filter と Common Constraint Language (CQL)
* Web Feature Service (WFS), Web Map Service (WMS) のクライアントと Web Process Service (WPS)の試験的なサポート
* ISO 19107 ジオメトリ

Details
--------------------------------------------------------------------------------
 
**Website:** http://geotools.org/

**Licence:** LGPL

**Software Version:** 8.0

**Supported Platforms:** Cross Platform Java

**API Interfaces:** Java

**Support:** `Communication and Support <http://docs.geotools.org/latest/userguide/welcome/support.html>`_

Quickstart
--------------------------------------------------------------------------------

* `Quickstart documentation <http://docs.geotools.org/latest/userguide/tutorial/quickstart/index.html>`_
