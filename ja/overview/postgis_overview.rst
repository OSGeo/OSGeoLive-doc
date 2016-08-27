.. Writing Tip:
  Writing tips describe what content should be in the following section.
  The postgis_overview.rst document is used as a reference example
  for other overviews.
  All other overviews should remove the writing tips in order to make the
  overview documents easier to translate.

.. Writing Tip:
  Metadata about this document

:Author: OSGeo-Live
:Author: Barry Rowlingson
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live10.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)


.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. Writing Tip:
  Project logos are stored here:
    https://github.com/OSGeo/OSGeoLive-doc/tree/master/images/project_logos
  and accessed here:
    ../../images/project_logos/<filename>

.. image:: ../../images/project_logos/logo-PostGIS.png
  :alt: project logo
  :align: right
  :target: http://postgis.net/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

PostGIS
================================================================================

.. Writing Tip:
  Application Category Description:

空間データベース
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Writing Tip:
  Address user questions of "What does the application do?",
  "When would I use it?", "Why would I use it over other applications?",
  "How mature is the application and how widely deployed is it?".
  Don't mention licence or open source in this section.
  Target audience is a GIS practitioner or student who is new to Open Source.
  * First sentence should explain the application.
  * Usually the application domain will not be familiar to readers. So the
    next line or two should explain the domain. Eg: For GeoKettle, the next
    line or two should explain what GoeSpatial Business Intelligence is.
  * Remaining paragraph or 2 in this overview section should provide a
    wider description and advantages from a user perspective.

PostGIS は、人気のある PostgreSQL オブジェクト-リレーショナルデータベースで空間データを利用できるようにします。これは Oracle データベースで Oracle Spatial を使うのと同じように地理情報システム (GIS) や Web マッピングアプリケーションのバックエンドデータベースシステムとして利用できます。

PostGIS は安定して、高速で、標準に準拠した多くの機能を持ち、オープンソースの空間データベースの中では、現在、最も幅広く利用されています。PostGIS は世界中の様々な組織で利用されています。その中には危機対策政府機関やテラバイト級データを持ち毎日数百万回のリクエストを処理している機関もあります。

pgAdmin、phpPgAdmin、その他のプログラムを利用してデータベース管理を行えます。
様々なコマンドラインツール(shp2pgsql、pgsql2shp、ogr2ogr、dxf2postgis)や、デスクトップ、Web GIS クライアントから
データのインポート、エクスポートを行えます。これらのクライアントは PostGIS 空間データテーブルの地図表示や操作を可能とします。

.. Writing Tip:
  Provide a image of the application which will typically be a screen shot
  or a collage of screen shots.
  Store image in image/<application>_<name>.png . Eg: udig_main_page.png
  Screenshots should be captured from a 1024x768 display.
  Don't include the desktop background as this changes with each release
  and will become dated.

.. image:: ../../images/screenshots/800x600/pgadmin.png
  :scale: 70 %
  :alt: pgAdmin database manager
  :align: right

主な機能
--------------------------------------------------------------------------------

* 何百もの空間関数群
  
  * バッファ、ユニオン、オーバーレイ、ディスタンス　等

* ACID トランザクションの完全性
* R-Tree 空間インデックス
* マルチユーザのサポート
* 行レベルのロッキング
* レプリケーション
* パーティショニング
* ロールベースセキュリティ
* テーブルスペース、スキーマ

準拠している標準
--------------------------------------------------------------------------------

.. Writing Tip: List OGC or related standards supported.

* OGC 標準への準拠(SFSQL)

詳細
--------------------------------------------------------------------------------

**ウェブサイト:** http://postgis.net

**ライセンス:** GNU General Public License (GPL) version 2

**ソフトウェアバージョン:** |version-postgis|

**対応プラットフォーム:** Windows、Linux、Mac

**API インターフェース:** SQL

.. Writing Tip:
  Link to webpage which lists the primary support details for the application,
  preferably this would list both community and commercial contacts.

**サポート:** http://www.osgeo.org/search_profile


クイックスタート
--------------------------------------------------------------------------------
    
* :doc:`クイックスタート文書 <../quickstart/postgis_quickstart>`
