:Author: OSGeo-Live
:Author: Stephan Meissl, Stephan Krause
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live7.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-eoxserver.png
  :alt: project logo
  :align: right
  :target: https://eoxserver.readthedocs.org/

EOxServer
================================================================================

ウェブサービス
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

EOxServer is a server for presenting big Earth Observation (EO) data
archives and metadata via Open Standards.

Earth Observation data currently supported includes 2D raster data generally
acquired using sensors on satellites or aircrafts and including information
about the time of acquisition and the footprint on planet Earth. It is
typically used to monitor Earth's natural and built environment.

EOxServer builds upon an Open Source stack of software which includes
Python, :doc:`MapServer <mapserver_overview>`, Django/GeoDjango, :doc:`GDAL
<gdal_overview>`, PROJ.4, and a :doc:`SpatiaLite <spatialite_overview>` or
:doc:`PostGIS <postgis_overview>` database.

..
  EOxServer は地球観測 (Earth Observation, EO) データのためのサーバソフトウェアです。
  詳しくいうと、EO データとメタデータを公開するための Python アプリケーションとフレームワークです。
  EOxServer はオープンな規格を使用してオンラインの膨大な地球観測データアーカイブからデータを取得し、オンラインで公開を行う環境を
  ユーザが容易に効率的に開発できるフレームワークを、オープンソースソフトウェアで提供することを目的としています。

  * オープンソース: MITスタイルライセンス
  * ソフトウェアフレームワーク: 全体的にオープンソースを採用（Python, :doc:`MapServer <mapserver_overview>`, 
    Django/GeoDjango, :doc:`GDAL <gdal_overview>`, :doc:`SpatiaLite <spatialite_overview>`, 
    :doc:`PostGIS <postgis_overview>`, PROJ.4)
  * 容易なオンライン公開: 管理用 GUI とコマンドラインでのデータ登録
  * 巨大な地球観測データアーカイブ: 既存のラスタデータアーカイブを追加可能
  * オープン規格: 自由に利用できる、という意味でのオープンであり、OGC (Open 
    Geospatial Consortium) 標準の WMS, WCS, EO-WMS, EO-WCS に対応
  * ユーザーによる効率的な開発: ビューとダウンロードの設定作成

.. image:: ../../images/screenshots/1024x768/eoxserver_screenshot.png
  :scale: 50 %
  :alt: EOxServer embedded client
  :align: right

主な機能
--------------------------------------------------------------------------------

* View, filter, subset, and download EO data
* Register EO data archives
* Web based and command line administration interface
* Publish data via :doc:`Open Geospatial Consortium (OGC) standards
  <../standards/standards>`:

  * :doc:`Web Coverage Service (WCS) <../standards/wcs_overview>` 1.0, 1.1 and
    2.0 & proposed EO-WCS
  * :doc:`Web Map Service (WMS) <../standards/wms_overview>` & EO-WMS
  * Proposed extensions to WCS including: GeoTIFF encoding, predefined
    projections (CRSs), scaling, and interpolation.
  * Protocols supported are: KVP and XML/POST (used together with SOAP2POST
    Proxy to provide also XML/SOAP)

* Publish using the following formats and groupings:

  * 2-D EO Coverages derived from gmlcov:RectifiedGridCoverage
  * 2-D EO Coverages derived from gmlcov:ReferenceableGridCoverage
  * Dataset Series as a collection of EO Coverages e.g. in a time series
  * Stitched Mosaics of Rectified EO Coverages including contributingFootprint

..
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

* カバレッジフォーマットサポート:

 * GeoTIFF
 * GDAL でサポートしているフォーマット


実装している標準規格
--------------------------------------------------------------------------------

  * WCS, EO-WCS
  * WMS, EO-WMS
  * WPS
  * GML, GMLCOV, EO-O&M
  * OpenSearch

詳細
--------------------------------------------------------------------------------

**ウェブサイト:** https://eoxserver.readthedocs.org/

**ライセンス:** `MIT-style license <https://eoxserver.readthedocs.org/en/latest/copyright.html#license>`_

**バージョン:** |version-eoxserver|

**動作プラットフォーム:** Linux, Windows, Mac

**API インターフェース:** Python

**サポート:** https://eoxserver.readthedocs.org/en/latest/users/basics.html#where-can-i-get-support

クイックスタート
--------------------------------------------------------------------------------

* :doc:`クイックスタート文書 <../quickstart/eoxserver_quickstart>`
