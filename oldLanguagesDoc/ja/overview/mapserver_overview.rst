:Author: Alan Boudreault, Steve Lime
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-mapserver-new.png
  :alt: project logo
  :align: right
  :target: http://mapserver.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


MapServer
================================================================================

ウェブサービス
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
MapServerはC言語で記述された`オープンソース<http://www.opensource.org>`_ のジオグラフィックデータレンダリングエンジンです。GISデータのブラウズはもちろん、MapServerはユーザにコンテンツを直接伝えるためのグラフィックイメージ地図を作ることが出来ます。
例として、ミネソタ DNR `Recreation Compass <http://www.dnr.state.mn.us/maps/compass.html>`_ は10,000を超えるウェブページ、レポートおよび地図を１つのアプリケーションを通じて提供しています。同様のアプリケーションは空間情報を提供するサイトのマップエンジンとしても利用されています。

MapServerはNASA、Minnesota Department of Natural Resources (MNDNR)の協力のもとでミネソタ大学(UMN) ForNetプロジェクトにより当初開発されました。後にUMNと土地管理業者コンソーシアムで作られた、NASAのスポンサーによるTerraSIPプロジェクトが管理することになりました。

現在、MapServerは`OSGeo <http://www.osgeo.org>`_の１プロジェクトとして管理されています。今後増え続ける世界中からの開発者(現在約20人)によって維持管理されています。基金強化およびメインテナンスなどの様々な機関によってサポートされています。開発者とコントリビュータによって構成されるMapServer Project Steering CommitteeとしてOSGeoのなかで運営されています。


主要機能
--------------------------------------------------------------------------------

.. image:: /images/projects/mapserver/mapserver.png
  :scale: 50 %
  :alt: screenshot
  :align: right

* 高度な地図出力

  * 縮尺に依存したフィーチャ描画および機能実行
  * 重複を回避するフィーチャのラベル付け
  * TrueTypeフォント
  * マップ要素の自動化(スケールバー, マップ参照, 凡例)
  * 論理またはクラスに基づいた正規表現を利用する主題マッピング
  * Plugable renderer support with drivers for AGG, Cairo and others
  * Special provisioning for tiled output generation
  * Mask Layers
  * Precise Symbol Placement
  * Complex Multi Label/Symbol Symbology
  * Vector Fields
  * Label Leader Offsetting
  * SVG Symbology
  * Multiple Font Support
  * Dynamic Heatmaps
  * UTF Grid Support
  * Layer Compositing

* Sophisticated spatial query support

  * Identify features by attributes, point, bounding box or geometry across one or more layers
  * Support for raster queries
  * Fully customizable, template driven output
  * OGR-based query output generation 

* 一般的なスクリプトおよび開発環境のサポート

  * CGI/FastCGI
  * PHP, Python, Perl, Ruby, Java および .NET

* OSに依存しない環境をサポート

  * Linux, Windows, Mac OS X, Solarisなど

* 多くのラスタおよびベクターデータフォーマットのサポート

  * ESRI shapeファイル, PostGIS and Oracle Spatial
  * Many other formats via GDAL and OGR

* マップ投影のサポート

  * Proj.4ライブラリ使用による何千もの投影物のオンザフライマップ投影

標準仕様の実装
--------------------------------------------------------------------------------

* Open Geospatial Consortium  (OGC)の標準仕様のサポート

  * :doc:`../standards/wms_overview` (クライアント/サーバ), :doc:`../standards/wfs_overview` (トランザクションなし, クライアント/サーバ), WMC, :doc:`../standards/wcs_overview`, :doc:`../standards/fe_overview`, :doc:`../standards/sld_overview`, :doc:`../standards/gml_overview`, SOS, OM

* INSPIRE View Service compliant

デモ
--------------------------------------------------------------------------------

* `Itasca <http://localhost/mapserver_demos/itasca/>`_

ドキュメント
--------------------------------------------------------------------------------

* `MapServer 7.0 ドキュメント <../../mapserver/doc/index.html>`_


詳細
--------------------------------------------------------------------------------

**ウェブサイト:** http://www.mapserver.org/

**ライセンス:** `MIT-style license <http://mapserver.org/copyright.html#license>`_

**ソフトウェアバージョン:** |version-mapserver|

**対応プラットフォーム:** Windows, Linux, Mac

**API インターフェース:** C, PHP, Python, Perl, Ruby, Java および .NET

**サポート:** http://mapserver.org/community/

クイックスタート
--------------------------------------------------------------------------------
    
* :doc:`クイックスタート文書 <../quickstart/mapserver_quickstart>`
