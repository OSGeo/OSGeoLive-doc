:Author: Alan Boudreault
:Version: osgeo-live4.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _mapguide-overview:

.. image:: ../../images/project_logos/logo-mapserver-new.png
  :scale: 65 %
  :alt: project logo
  :align: right
  :target: http://mapserver.org/

.. image:: ../../images/logos/OSGeo_project.png
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

.. image:: ../../images/screenshots/1024x768/mapserver.png
  :scale: 50 %
  :alt: screenshot
  :align: right

* 高度な地図出力

  * 縮尺に依存したフィーチャ描画および機能実行
  * 重複を回避するフィーチャのラベル付け
  * フルカスタマイズ可能、テンプレート利用の出力

* TrueTypeフォント

  * マップ要素の自動化(スケールバー, マップ参照, 凡例)
  * 論理またはクラスに基づいた正規表現を利用する主題マッピング

* 一般的なスクリプトおよび開発環境のサポート

　* PHP, Python, Perl, Ruby, Java および .NET

* OSに依存しない環境をサポート

　* Linux, Windows, Mac OS X, Solarisなど

* 多くのラスタおよびベクターデータフォーマットのサポート

  * TIFF/GeoTIFF, EPPL7 および GDALを利用したデータ
  * ESRI shapeファイル, PostGIS, ESRI ArcSDE, Oracle Spatial, MySQL および OGR


* マップ投影のサポート

  * Proj.4ライブラリ使用による何千もの投影物のオンザフライマップ投影

標準仕様の実装
--------------------------------------------------------------------------------

* Open Geospatial Consortium  (OGC)の標準仕様のサポート


  * WMS (クライアント/サーバ), トランザクションなしの WFS (クライアント/サーバ), WMC, WCS, フィルタエンコーディング, SLD, GML, SOS, OM

デモ
--------------------------------------------------------------------------------

* `Itasca <http://localhost/mapserver_demos/itasca/>`_

ドキュメント
--------------------------------------------------------------------------------

* `MapServer 5.6.5 ドキュメント <../../mapserver/doc/index.html>`_


詳細
--------------------------------------------------------------------------------

**ウェブサイト:** http://www.mapserver.org/

**ライセンス:** `MIT-style license <http://mapserver.org/copyright.html#license>`_

**ソフトウェアバージョン:** 5.6.5

**対応プラットフォーム:** Windows, Linux, Mac

**API インターフェース:** C, PHP, Python, Perl, Ruby, Java および .NET

**サポート:** http://mapserver.org/community/

