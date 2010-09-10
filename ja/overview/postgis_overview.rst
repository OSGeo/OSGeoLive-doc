.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OSGeo Live
:Version: osgeo-live4.0
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _postigs-overview:

.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    images/project_logos/<filename>

.. image:: images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://postgis.refractions.net/

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

PostGIS
=======

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

Spatial Database
~~~~~~~~~~~~~~~~

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

PostGISを使うと人気があるPostgreSQLオブジェクト-リレーショナルデータベースで空間データを利用できるようにします，これはOracleデータベースでOracle Spatialを使うのと同じように地理情報システム（GIS)やwebマッピングアプリケーションのバックエンドデータベースシステムとして利用できます．

PostGISは安定して高速で標準に準拠した多くの機能を持ち現在オープンソースの空間データベースの中では最も幅広く利用されています. PostGISは世界中の様々な組織で利用されています，その中には危機対策政府機関やテラバイト級データを持ち毎日数百万回のリクエストを処理している機関もあります．

pgAdmin，phpPgAdmin，やその他のプログラムを利用してデータベース管理を行えます． 様々な変換ツール (shp2pgsql， pgsql2shp， ogr2ogr， dxf2postgis)を利用してデータのインポート、エクスポートを行えます. さらにPostGISのデータを見ることができるに多くのデスクトップGISとブラウザGISがあります．

.. Writing Tip:
  Provide a image of the application which will typically be a screen shot
  or a collage of screen shots.
  Store image in image/<application>_<name>.gif . Eg: udig_main_page.gif
  Screenshots should be captured from a 1024x768 display.
  Don't include the desktop background as this changes with each release
  and will become dated.

.. image:: images/screenshots/800x600/pgadmin.gif
  :scale: 55 %
  :alt: project logo
  :align: right

主な機能
-------------

* 何百もの空間関数群
  
  * バッファ, ユニオン, オーバーレイ, ディスタンス　等 

* ACID トランザクションの完全性
* R-Tree 空間インデックス
* マルチユーザのサポート
* 行レベルのロッキング
* レプリケーション
* パーティショニング
* ロールベースセキュリティ
* テーブルスペース,スキーマ

.. Writing Tip:
  Optional: A second screenshot can sometimes be added here
  if there is sufficient room.
  .. image:: images/screenshots/800x600/pgadmin.gif
    :scale: 50 %
    :alt: project logo
    :align: right

Implemented Standards
---------------------

.. Writing Tip: List OGC or related standards supported.

* OGC 標準への準拠(SFSQL)

詳細
-------

**ウェッブサイト:** http://postgis.refractions.net/

**ライセンス:** GNU General Public License (GPL) version 2

**ソフトウェアバージョン:** 1.5

**サポートされるプラットフォーム:** Windows, Linux, Mac

**API Interfaces:** SQL

.. Writing Tip:
  Link to webpage which lists the primary support details for the application,
  preferably this would list both community and commercial contacts.

**Support:** http://www.osgeo.org/search_profile

.. Writing Tip:
  Later, we may introduce a Maturity Rating, but currently the format, and
  whether we go ahead with such a rating is still under discussion.
  http://wiki.osgeo.org/wiki/Marketing_Artefacts#Maturity_Rating
