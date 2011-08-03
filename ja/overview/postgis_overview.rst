

:Author: OSGeo-Live
:Version: osgeo-live4.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)



.. _postigs-overview:



.. image:: ../../images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://postgis.refractions.net/



.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html




PostGIS
=======



空間データベース
~~~~~~~~~~~~~~~~


PostGISを使うと人気があるPostgreSQLオブジェクト-リレーショナルデータベースで空間データを利用できるようにします，これはOracleデータベースでOracle Spatialを使うのと同じように地理情報システム（GIS)やwebマッピングアプリケーションのバックエンドデータベースシステムとして利用できます．

PostGISは安定して高速で標準に準拠した多くの機能を持ち現在オープンソースの空間データベースの中では最も幅広く利用されています. PostGISは世界中の様々な組織で利用されています，その中には危機対策政府機関やテラバイト級データを持ち毎日数百万回のリクエストを処理している機関もあります．

pgAdmin，phpPgAdmin，やその他のプログラムを利用してデータベース管理を行えます． 様々な変換ツール (shp2pgsql， pgsql2shp， ogr2ogr， dxf2postgis)を利用してデータのインポート、エクスポートを行えます. さらにPostGISのデータを見ることができるに多くのデスクトップGISとブラウザGISがあります．


.. image:: ../../images/screenshots/800x600/pgadmin.gif
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


準拠している標準
---------------------

* OGC 標準への準拠(SFSQL)

詳細
-------

**ウェッブサイト:** http://postgis.refractions.net/

**ライセンス:** GNU General Public License (GPL) version 2

**ソフトウェアバージョン:** 1.5

**サポートされるプラットフォーム:** Windows, Linux, Mac

**APIインターフェース:** SQL

**サポート:** http://www.osgeo.org/search_profile

