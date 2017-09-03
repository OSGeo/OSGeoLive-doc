:Author: OSGeo-Live
:Author: Javier Sanchez, GeoNaTec
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live8.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-tilemill.png
  :alt: TileMill
  :align: right
  :target: http://www.tilemill.com

TileMill
================================================================================


Webマップのためのデザイン・スタジオ
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

TileMillは、既存の空間データソースをWebベースで、インタラクティブな地図を美しく作成するためのデザイン・スタジオです。

..コメントを確認
  MBTilesがオープン・スタンダードであれば、おそらくリンクを提供する必要があります。

生成されたWebマップはホバーツールチップ、クリック可能なポップアップアップ、インタラクティブなグラフや画像、SVGマーカー、豊富なテクスチャ、複数のレイヤーを使用することができます。カスタマイズされたマップは、.png、.pdf、.svg、MBTilesのような異なるフォーマットにエクスポートすることができます。 MBTiles仕様はSQLiteデータベースとして、単一のファイルとしてタイルを格納する方法を定義します。

データはベクトルデータ（CSV、シェープファイル、KML、GeoJSON）、ラスター（GeoTiff）だけでなく、OpenStreetMap、Postgres、SQLiteのような大規模なデータソースを供給することができます。

Tilemillは :doc:`Mapnik <mapnik_overview>` （OpenStreeMapによって使用されるような）地図レンダリングライブラリーや、スタイルシート言語としてCartoCSSが利用されています。

TileMillは通常、アイコン、パターンやテクスチャを作成するためのデータを作成する（QuantumGISのような）デスクトップGIS、および（GIMPのような）グラフィックエディタと組み合わせて使用されます。

.. image:: /images/projects/tilemill_interface2.png
  :scale: 50 %
  :alt: TilleMill user interface
  :align: right

主な機能
--------------------------------------------------------------------------------

* 幅広いソースからのデータ読み込み
  
  * ESRI Shapefile
  * KML
  * GeoJSON
  * GeoTiff
  * CSVスプレッドシート
  * OpenStreetMap

* 地理空間データベースへの接続

  * PostgreSQL + PostGIS
  * SQLite

* カスタムレイヤーの管理

* データのスタイリング

  * プリセットまたはカスタムカラーを使用したスタイル化
  * 条件付きスタイル

* ツールチップや凡例の追加

* 公開

  * 画像ファイル：.png, .pdf, .svgとMBTiles
  * ウェブページとして公開
  * Webページやコンテンツ管理システムでの埋め込みマップ（WordPress、Drupal）

* JavaScript API

標準規格
--------------------------------------------------------------------------------

* TileMillは、WMSやWFSなどのOGC標準をサポートしていません。むしろMBTilesとUTFGrid仕様に基づき、GoogleやOSMが使用するz/x/yのタイルスキームの幅広い実践を順守しています。

詳細
--------------------------------------------------------------------------------

**ウェブサイト:** http://tilemill.com

**ライセンス:** BSD

**ソフトウェアバージョン:** 0.10.2

**対応プラットフォーム:** Windows, Linux, Mac

**API インターフェース:** JavaScript

**サポート:** http://www.tilemill.com


クイックスタート
--------------------------------------------------------------------------------
    
* :doc:`クイックスタート文書 <../quickstart/tilemill_quickstart>`
