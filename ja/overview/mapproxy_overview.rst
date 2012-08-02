:Author: Oliver Tonnhofer
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-mapproxy.png
  :alt: project logo
  :align: right
  :target: http://mapproxy.org/

MapProxy
================================================================================

Proxy WMS & タイル サービス
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/screenshots/800x600/mapproxy.png
  :alt: MapProxy diagram
  :align: right

MapProxy は、複数のソースからなる地図を予めレンダリングし、ローカルなキャッシュに格納することによってマッピングアプリケーションを高速化します。レイヤの透化、測地系の変更、複数のレイヤ統合、電子透かしの追加など、多くのことを可能にします。

MapProxy は柔軟で、単純なものから複雑なユースケースまでスケールします：OpenLayers の Web クライアントに対する単一のタイルキャッシュ、分散型 WMS サービスの結合、一元化、数十倍高速化するための中心的なSDIノードなど。

MapProxy は、何千ものユーザーに地図を配信するために、ドイツのブロードバンドアトラスに使われています。ドイツ連邦地図製作測地局は、オンザフライで全16州の WMS サービスを統合するために MapProxy を使用しています。

主な機能
--------------------------------------------------------------------------------

.. image:: ../../images/screenshots/800x600/mapproxy_demo.png
  :width: 796
  :height: 809
  :scale: 70 %
  :alt: MapProxy demo
  :align: right

入力ソース:
  * WMS 1.0.0–1.3.0 (MapServer, GeoServerなど)
  * TMS, WMTS (TileCache, GeoWebcacheなど)
  * Mapserver and Mapnik (WMS無しで直接的に)
  * あらゆる TileCache, Google Maps または Bing ソース互換

サービス:
  * WMS (1.0.0-1.3.0)
  * TMS
  * WMTS
  * KML SuperOverlays

タイルキャッシュ:
  * 同一画像を一度のみ格納 (例えば、海のタイル画像)
  * MBTile ファイルまたは CouchDB といったファイルシステムへのタイルの格納
  * タイルに透かしを追加

ソースのオプション:
  * ジオメトリへの(例えばシェープファイルからの)ソースの制限
  * 不透明なレイヤに透明度を追加
  * 複数のソースをマージ
  * 他のSRSへの最投影

WMS機能:
  * 異なるソースからのレイヤー・ツリーの構築
  * （あらゆるデスクトップ GIS のための）自由なズームや、あらゆる座標系のサポートを伴う、キャッシュから ``GetMap`` への応答を生成
  * 既存の WMS を10〜100倍高速化
  * ``GetLegendGraphic`` リクエストへの応答
  * 任意の XSL 変換を伴う ``GetFeatureInfo`` リクエストへの転送
  * オンザフライによる再投影
  * WMS バージョンや画像フォーマットの変換

セキュリティ:
  * 柔軟で強力な認証 API
  * サービスおよびレイヤを超えたきめ細やかな管理
  * ポリゴン領域へのアクセス制限
  * 既存のユーザーのデータベースや認証との統合

他の機能:
  * 単純ながら強力な設定フォーマット (YAML/JSON)
  * OpenLayers をベースとしたデモ・クライアント
  * 1つの MapProxy インスタンスで複数の WMS サービスを実行
  * 画像に特定のラインを付加すること
  * DEM のような非画像ラスターデータをサポート
  * さらに多くの機能

実装している標準規格
--------------------------------------------------------------------------------

MapProxyは、以下のオープンな仕様を実装しています:

* OGC WMS 1.0.0, 1.1.0, 1.1.1, 1.3.0
* OGC WMTS 1.0.0 (KVP および RESTful)
* OSGeo TMS 1.0.0
* OGC KML 2.2 SuperOverlays


詳細
--------------------------------------------------------------------------------

**ウェブサイト:** http://mapproxy.org/

**ライセンス:** `Apache Software License 2.0 <http://www.apache.org/licenses/LICENSE-2.0.html>`_

**バージョン:** 1.4.0

**動作環境:** Linux, Mac, Windows

**サポート:** http://mapproxy.org/support.html

**文書:** <../../mapproxy/index.html>`_


クイックスタート
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/mapproxy_quickstart>`
