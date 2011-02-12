:Author: Johannes Wilden
:Version: osgeo-live4.0
:License: Creative Commons

.. _deegree-overview:

.. image:: ../../images/project_logos/logo-deegree.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://deegree.org

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


deegree
=======

ウェッブサービス
~~~~~~~~~~~~

deegreeはフリーで、安定して、多機能でかつ簡単に利用できます。deegreeは、フリー・オープンソースソフトウェアの中で、Open Geospatial Consortium (OGC)標準を準拠の最も包括的な組み合わせであり、Web Feature ServiceのトランザクションからWeb Terrain Serviceを利用した三次元データの表示まで対応しており、そのほかにも利用できます！

deegreeはウェブおよびデスクトップの地理情報システム（GIS）と空間情報基盤（SDI）のソリューションです。包括的で、一方で多機能なJava APIと、加えて簡単または複雑な空間スキームのための多機能なオブジェクト関係マッピングで構成されています。deegreeは同様に、ウェッブマッピング、フィーチャー、カタログ、さらにはセンサーや処理のための、標準に準拠したウェッブサービスの組み合わせを提供します。

deegreeは貴方のSDIの価値を高め、貴方自身のデータを実行、利用させ、要求を十分に満たします。

.. image:: ../../images/screenshots/1024x768/deegree_mainpage.gif
  :scale: 50%
  :alt: project logo
  :align: right

機能の例
---------------------

* Web Map Service

  * レイヤコンテンツに関する高いフレキシブル性
  * スタイル定義(SLD 1.0)の準拠と利用
  * 点シンボルとしてのグラフ（円、棒、線）を利用した主題図作成機能
  * データソース：すべての一般的なOGCウェッブサービス（WMS、WFS、WCS）、PostgreSQL/PostGIS、Oracle Spatial、WMSレイヤコンテンツを作成するために利用できる任意のSQL宣言。
  * 大規模であっても、非常に安定
  * HTTP GET, HTTP POSTおよび地物情報リクエストのサポート
  * OGC準拠の証明

* Web Feature Service

  * 単純および複雑なフィーチャーのサポート
  * 3000以上の座標参照系の動的な座標変換
  * 柔軟な出力フォーマットのサポート
  * INSPIRE指示書サポートの容易な向上

* Web Coverage Service

  * HTTP GETおよびHTTP POSTのサポート
  * データソース: 画像(tif, png, jpeg, gif, bmp); GeoTIFF; ECWファイル; Oracle GeoRaster
  * 大規模カバレッジへの高速アクセス

* Catalogue Service-Web

  * datasources: PostgreSQLデータベース; Oracleデータベース
  * サポートするリクエスト: GetCapabilities; DescribeRecord; GetRecordById; GetRecords; Transaction - Insert, Update, Delete; Harvesting

* Web Map Print Service

  * 異なるプリントフォーマットのサポート (HTML, PDF, PNG)
  * 長時間のジョブの実行
  * 大判プロットを可能にする非同期リクエストのサポート
  * リクエストはデータベース内に格納され、WMPSが管理者によって停止されたりマシンが動作不良を起こした場合であっても、利用可能である。

* Web Perspective View Service

   * データソース: remote/local-WMS, remote/local-WFS, local-WCS, Postgres/PostGIS, Oracle Spatial
   * ベクタまたらラスタデータによる環境モデル
   * リクエスト: Get3DFeatureInfo, GetView


標準への準拠
---------------------

* OGC Web Map Service (WMS) 1.1.0*, 1.1.1, 1.3.0*
* OGC Web Feature Service (WFS) 1.0.0, 1.1.0 (2.0 in progress)
* OGC Web Coverage Service (WCS) 1.0.0* (1.1.0 in progress)
* OGC Catalogue Service-Web (CSW) 2.0.0, 2.0.1, 2.0.2; including OGC ISOAP 1.0 and INSPIRE profile
* OGC Web Perspective View Service (WPVS) Draft 6
* OGC Web Coordinate Transformation Service (WCTS) 0.4.0
* OGC Web Processing Service (WPS) 0.4.0, 1.0.0
* OGC Sensor Observation Service (SOS) 1.0.0

詳細
-------

**ウェッブサイト:** http://deegree.org

**ライセンス:** LGPL

**ソフトウェアバージョン:** 2.3

**対応プラットフォーム:** Windows, Linux

**APIインターフェイス:** Java

**サポート:** http://wiki.deegree.org/deegreeWiki/GettingSupport


クイックスタート
----------

* `クイックスタート文章 <../quickstart/deegree_quickstart.html>`_


