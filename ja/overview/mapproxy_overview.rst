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

MapProxyは、複数のソースから予めレンダリングしマップに統合することや、ローカルなキャッシュに格納することによってマッピングアプリケーションを高速化します。レイヤーは透明化でき、測地系を変更でき、複数のマップレイヤーを1つに変換でき、透かしを追加できるなど、多くのことが可能です。

MapProxyは柔軟で、単純なものから複雑なユースケースに至るスケールに及びます：OpenLayersのWebクライアントに対する単一のタイルキャッシュから、分散型のWMSサービスの結合、一元化、数十倍加速化するための中心的なSDIノードに至るまで。

MapProxyは、何千ものユーザーに地図を配信するためのドイツのブロードバンドアトラスに使われ、ドイツ連邦地図製作測地局は、オンザフライで全16州のWMSサービスを統合するためにMapProxyを使用しています。

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
  * あらゆるTileCache, Google Maps または Bing ソース互換

サービス:
  * WMS (1.0.0-1.3.0)
  * TMS
  * WMTS
  * KML SuperOverlays

タイルキャッシュ:
  * 同一画像を一度のみ格納 (例えば、海のタイル画像)
  * MBTile ファイルまたは CouchDBといったファイルシステムへのタイルの格納
  * タイルに透かしを追加

ソースのオプション:
  * ジオメトリへの(例えばシェープファイルからの)ソースの制限
  * 不透明なレイヤに透明度を追加
  * 複数のソースをマージ
  * 他のSRSへの最投影

WMS機能:
  * 異なるソースからレイヤー・ツリーを構築すること
  * （あらゆるデスクトップGISのための）自由なズーミングやあらゆる座標系へのサポートを伴うキャッシュから``GetMap``への応答を生成
  * 既存のWMSを10〜100倍加速する
  * ``GetLegendGraphic`` リクエストへの応答
  * 任意のXSL変換を伴う``GetFeatureInfo`` リクエストへの転送
  * オンザフライによる再投影
  * WMSバージョンや画像フォーマットへの変換

セキュリティ:
  * 柔軟で強力な認証API
  * サービスおよびレイヤを超えたきめ細やかな管理
  * ポリゴン領域へのアクセス制限
  * 既存のユーザーのデータベースや認証方式との統合

他の機能:
  * 単純でありながら強力な設定フォーマット (YAML/JSON)
  * OpenLayersをベースとしたデモ・クライアント
  * 1つのMapProxyインスタンスで複数のWMSサービスを実行
  * 画像に特定のラインを付加すること
  * DEMのような非画像ラスターデータをサポート
  * さらに多くの機能

実装している標準規格
--------------------------------------------------------------------------------

MapProxyは、以下のオープンな仕様を実装します:

* OGC WMS 1.0.0, 1.1.0, 1.1.1, 1.3.0
* OGC WMTS 1.0.0 (KVP and RESTful)
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
