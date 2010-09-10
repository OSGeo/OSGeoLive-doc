.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: Ian Turton
:Version: osgeo-live4.0
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _geoserver-overview:

.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    images/project_logos/<filename>

.. image:: images/project_logos/logo-GeoServer.png
  :scale: 100%
  :alt: project logo
  :align: right
  :target: http://geoserver.org/display/GEOS/Welcome

.. Writing Tip: 
  Include an OSGeo logo if the project is an OSGeo project, or is in
  incubation:
  .. image:: images/logos/OSGeo_incubation.png
  .. image:: images/logos/OSGeo_project.png

.. image:: images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html


.. Writing Tip: Name of application

GeoServer
=========

.. Writing Tip:
  Application Category Description:
  * Spatial Database
  * Web Service
  * Metadata Web Service
  * Desktop GIS
  * Browser GIS client
  * Business Intelligence
  * GIS Tools
  * ...

Webサービス
~~~~~~~~~~~



GeoServerは多彩な形式の地図とデータをWEBブラウザやデスクトップGISプログラム等の標準的なクライアントに配信するWEBサーバーです．あなたはほとんど全ての`形式
<http://docs.geoserver.org/stable/en/user/data/index.html>`_を選択して空間データを保存できますが，あなたのシステムのユーザはGISデータの内容について知る必要はありません．地図をみるために必要なものは単純に言うとwebブラウザだけです。 

GeoServerは`Open Geospatial Consortium <http://www.opengeospatial.org>`_ (OGC)の以下のサービスのレファランス実装です. `Web Feature Service <http://www.opengeospatial.org/standards/wfs>`_ (WFS) ,`Web Coverage Service <http://www.opengeospatial.org/standards/wcs>`_ (WCS)等の標準群, さらに同様に高性能が保証された `Web MapService <http://www.opengeospatial.org/standards/wms>`_ (WMS).
GeoServerは空間情報webの中心部分を形成します. 


.. image:: images/screenshots/800x600/geoserver.gif
  :scale: 60 %
  :alt: GeoServerのスクリーンショット
  :align: right

主な機能
-------------

**様々な種類のデータストアデータを配信する:**
    * ベクター
        - Shapefiles, 外部WFS
        - PostGIS, ArcSDE, DB2, Oracle Spatial, MySql, SQL Server
    * ラスター
        - GeoTiff, JPG and PNG (ワールドファイル付き), image pyramid, GDAL formats, Image Mosaic, Oracle GeoRaster

**データはWMSプロトコルを利用して安全かつ迅速に配信されます:**
    データはイメージとして完全な安全とセキュリティで配信されます．あなたのデータを盗聴することはできないので、データを盗もうとする人にはデータ再入力をする以外に方法は無いでしょう.
    それぞれの地図のレイヤ表現はSLDを利用して設定できます。SLDは地物の色やラベル表示を設定できます. このルールと縮尺依存のOGCフィルターを合わせるとユーザーのズームに合わせてさらに細かい描画設定を行うことができます. ラベルの描画時衝突の管理、グループ化、優先順位つけも実装されています.

**WFSプロトコルを利用するとフルベクタデータをクライアントに送信できます:**
     WFSクライアントはベクタデータをダウンロードして地図表示や空間解析等の用途に使えます.さらにWFS-Tプロトコルを利用すると認証されたユーザがデータを編集して送信することでサーバのデータを更新することができます. 
     shapefileやjsonのような標準データと同じようにデータはGML（圧縮された）として送受信することができます.

**WCSプロトコルを利用するとラスタデータの値をクライアントに送信できます:**
     GISクライアントは空間解析のためにラスタ実データの要求ができます. この機能でユーザーはあなたのデータ作成過程をモデルとしたアプリケーションを作ることができます.

**オンザフライ再投影:**
     GeoServerはEPSGデータベースの主要な投影法をサポートしています.要求に応じてそれらの投影法に再投影することが可能です.クライアントに制限された再投影を許可するためにはサーバーにロードする方法をサポートします. 

**WMSタイリングキャッシュ**
    `GeoWebCache <http://geowebcache.org/>`_ はWMSタイリングクライアントです. これは地図クライアントと地図サーバーの間のプロキシサーバとして動作し要求に応じてタイルをキャッシュします, 余分なリクエストを除去して莫大なプロセスタイムを減少させます. GeoWebCacheはGeoServerに統合されています.


準拠している標準
---------------------


* 多くの Open Geospatial Consortium  (OGC) 標準をサポートしています

  * WMS, transactional WFS, WCS, Filter Encoding, SLD, GML

詳細
-------

**ウェッブサイト:** http://geoserver.org/display/GEOS/Welcome

**ライセンス:** GNU General Public License (GPL) version 2

**ソフトウェアバージョン:** 2.0.2

**サポートされるプラットフォーム:** All Java 1.5 platforms: - Windows, Linux, Mac

**APIインターフェース:** WMS, WFS, WCS, REST



**サポート:** http://geoserver.org/display/GEOS/Commercial+Support

