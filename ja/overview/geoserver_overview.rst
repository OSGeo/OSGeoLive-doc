:Author: Ian Turton
:Author: Frank Gasdorf
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-GeoServer.png
  :alt: project logo
  :align: right
  :target: http://geoserver.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

GeoServer
================================================================================

Webサービス
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GeoServer は、多彩な形式の地図とデータを Web ブラウザやデスクトップ GIS プログラム等の標準的なクライアントに配信する Web サーバです。ユーザーは GIS データについて全く知ることなく、ほとんど全ての `フォーマット <http://docs.geoserver.org/stable/en/user/data/index.html>`_ で空間データを保存することができます。地図をみるには Web ブラウザだけが必要となります。

GeoServer は `Open Geospatial Consortium <http://www.opengeospatial.org>`_ (OGC) の `Web Feature Service <http://www.opengeospatial.org/standards/wfs>`_ (WFS) 、 `Web Coverage Service <http://www.opengeospatial.org/standards/wcs>`_ (WCS)、高性能なWebサーバの `Web MapService <http://www.opengeospatial.org/standards/wms>`_ (WMS) の参考実装です。GeoServer は空間情報 web の中核を担います。


.. image:: /images/screenshots/800x600/geoserver.png
  :scale: 60 %
  :alt: Screen Shot of GeoServer
  :align: right

主な機能
--------------------------------------------------------------------------------

**様々な種類のデータストアデータの配信:**
    * ベクタ
        - シェープファイル、 外部WFS
        - PostGIS、 ArcSDE、 DB2、 Oracle Spatial、 MySql、 SQL Server
    * ラスタ
        - GeoTiff、 JPG and PNG (ワールドファイル付き)、 image pyramid、 GDAL formats、 Image Mosaic、 Oracle GeoRaster

**WMS プロトコルを利用して安全かつ迅速にデータ配信:**
    データは画像の状態で保存し、完全に安全でセキュアに配信します。データを再入力しない限り、あなたのデータを盗み出すことはできないでしょう。
    それぞれの地図のレイヤは SLD を用いて表示を変更できます。SLD 標準により地物の色やラベル表示を設定できます。これに、縮尺によって変化する OGC フィルターにを合わせると、ユーザーが拡大表示すると、より詳細を表示するような実装が可能です。ラベルの描画衝突の管理、グループ化、優先順位も実装されています。

**WFS プロトコルを利用したクライアントへのベクタデータ送信:**
    WFS クライアントは、ベクタデータをダウンロードして地図表示や空間解析等の用途に使用できます。さらにWFS-Tプロトコルを利用して、認証されたユーザがサーバのデータを編集、アップロードすることで更新できます。
    shapefile や json のような標準規格同様に、データは圧縮した GML で送受信を行います。

**WCS プロトコルを利用したクライアントへのラスタデータ送信:**
    GISクライアントはラスタの実データを要求して空間解析に使うことができます。この機能を使うと、あなたのデータで記述したプロセスをベースに、ユーザーが活用することができます。

**オンザフライ投影変換:**
    GeoServer は EPSG データベースの主な投影法をサポートしており、オンデマンドでそれらの投影法への再投影ができます。クライアント側で再投影を制限され手いる場合にはサーバ側でその処理を行うこともできます。

**WMS タイルキャッシュ**
    `GeoWebCache <http://geowebcache.org/>`_ は WMS タイリングクライアントです。これは地図クライアントと地図サーバーの間のプロキシサーバとして動作し要求に応じてタイルをキャッシュします。余分なリクエストをまとめて莫大なCPU時間を減少させます。GeoWebCache は GeoServer に統合されています。

**Web Processing Service (WPS)**
    Geospatial algorithms, including those from :doc:`JTS <jts_overview>`, can be called through GeoServer's :doc:`WPS <../standards/wps_overview>` interface. This includes the chaining of processes, and using rendering transformations to create powerful visualisations through the WMS interface.

準拠している標準規格
--------------------------------------------------------------------------------

* 多くの Open Geospatial Consortium (OGC) 標準をサポートしています:

  * :doc:`../standards/wms_overview`
  * Web Map Tile Service (WMTS)
  * :doc:`../standards/wfs_overview`, WFS-T (transactional)
  * :doc:`../standards/wcs_overview`
  * :doc:`../standards/wps_overview`
  * :doc:`../standards/fe_overview`
  * :doc:`../standards/sld_overview`
  * :doc:`../standards/gml_overview`
  * :doc:`../standards/kml_overview`

詳細
--------------------------------------------------------------------------------

**ウェブサイト:** http://geoserver.org/

**ライセンス:** GNU General Public License (GPL) version 2

**ソフトウェアバージョン:** |version-geoserver|

**対応プラットフォーム:** クロスプラットフォーム Java 6 - Windows、 Linux、 Mac

**API インターフェース:** WMS、 WFS、 WCS、 REST

**サポート:** http://geoserver.org/support/

クイックスタート
--------------------------------------------------------------------------------

* :doc:`クイックスタート文書 <../quickstart/geoserver_quickstart>`
