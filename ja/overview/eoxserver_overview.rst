:Author: OSGeo-Live
:Author: Stephan Meissl, Stephan Krause
:Reviewer: 
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-eoxserver-2.png
  :scale: 65 %
  :alt: project logo
  :align: right
  :target: http://eoxserver.org/

EOxServer
================================================================================

ウェブサービス
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

EOxServer は地球観測 (Earth Observation, EO) データのためのサーバソフトウェアです。
詳しくいうと、EO データとメタデータを公開するための Python アプリケーションとフレームワークです。
EOxServer はオープンな規格を使用してオンラインの膨大な地球観測データアーカイブからデータを取得し、オンラインで公開を行う環境を
ユーザが容易に効率的に開発できるフレームワークを、オープンソースソフトウェアで提供することを目的としています。

* オープンソース: MITスタイルライセンス
* ソフトウェアフレームワーク: 全体的にオープンソースを採用（Python, MapServer, 
  Django/GeoDjango, GDAL, SpatiaLite, PostGIS, PROJ.4)
* 容易なオンライン公開: 管理用 GUI とコマンドラインでのデータ登録
* 巨大な地球観測データアーカイブ: 既存のラスタデータアーカイブを追加可能
* オープン規格: 自由に利用できる、という意味でのオープンであり、OGC (Open 
  Geospatial Consortium) 標準の WMS, WCS, EO-WMS, EO-WCS に対応
* ユーザーによる効率的な開発: ビューとダウンロードの設定作成

.. image:: ../../images/screenshots/1024x768/eoxserver_screenshot.jpg
  :scale: 50 %
  :alt: EOxServer embedded client screen shot
  :align: right


主な機能
--------------------------------------------------------------------------------

利用できる機能には以下のようなものがあります:

* GML APのサポート - RectifiedGridCoverages のための充填
* WCS 2.0 規格のサポート（GetCapabilities, DescribeCoverage, GetCoverage への対応,
  KVP-, および XML/POST プロトコルバインディング）
* 今後実装予定の機能拡張: GeoTIFF のエンコーディングに対応、EPSG 対応、
  スケール変更と編集、non-referenced access。今後実装予定、は WCS 盧最新の仕様を反映した物です。
  WCS の標準化グループの議論と、既存の1.1、1.0版を参照しています。
* gmlcov:RectifiedGridCoverage で生成した2次元 EO 充填のサポート
* gmlcov:ReferenceableGridCoverage で生成した2次元 EO 充填のサポート
* in a time シリーズなどのデータセットによる充填のサポート
* データセットシリーズと EO 充填の DescribeEOCoverageSet 操作サポート
* contributingFootprint の概念を含んだ調整 EO 充填の合成サポート
* EO メタデータのサポート（DescribeEOCoverageSet 操作からの復帰や評価）
* プロトコルバインディング:

 * KVP
 * XML/POST （XML/SOAP のサポートのため SOAP2POST プロキシを使用）

* 充填フォーマットサポート:

 * GeoTIFF
 * GDAL でサポートしているフォーマット （各フォーマットについて確認が必要）

* EO 充填の EO-WMS サポート

実装している標準規格
--------------------------------------------------------------------------------

* 多数の OGC 標準に対応

  * WCS, EO-WCS
  * WMS, EO-WMS
  * GML, GMLCOV, EO-O&M

デモ
--------------------------------------------------------------------------------

* `Local <http://localhost/eoxserver/>`_
* `Online <https://eoxserver.org/demo_stable/>`_

ドキュメント
--------------------------------------------------------------------------------

* `EOxServer 0.2.1 Documentation <../../eoxserver-docs/EOxServer_documentation.pdf>`_

詳細
--------------------------------------------------------------------------------

**ウェブサイト:** http://eoxserver.org/

**ライセンス:** `MIT-style license <http://eoxserver.org/doc/copyright.html#license>`_

**バージョン:** 0.2.1

**動作プラットフォーム:** Linux, Windows, Mac

**API :** Python

**サポート:** http://eoxserver.org/doc/en/users/basics.html#where-can-i-get-support

クイックスタート
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/eoxserver_quickstart>`
