:Author: Daniel Kastl, Hal Seki, Ko Nagase
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live7.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-pgRouting.png
  :alt: pgRouting ロゴ
  :align: right
  :target: http://www.pgrouting.org/

pgRouting
================================================================================

GIS ツール
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pgRouting は地理空間における経路探索や他のネットワーク解析機能を提供するために :doc:`PostGIS <postgis_overview>`/`PostgreSQL <http://postgresql.org>`_ 地理空間データベースを拡張します。

データベース上で経路探索を行う方法の利点には、以下のようなものがあります。

* データや属性を、多くのクライアント、例えば  :doc:`Quantum GIS <qgis_overview>` や :doc:`uDig <udig_overview>` から、JDBC や ODBC、もしくは 直接 Pl/pgSQL を発行することで、変更することが可能です。クライアントは PC やモバイル端末でもかまいません。
* データの変更は、経路探索エンジン経由ですぐに反映させることが可能です。事前の計算処理は必要ありません。
* "コスト" パラメータは SQL 経由で動的に計算可能で、複数の列やテーブルからの値を使用することも可能です。

pgRouting は GPLv2 ライセンスで提供され、個人、企業及び団体からなる、成長中のコミュニティによってサポートされています。

.. image:: ../../images/screenshots/800x600/pgrouting.png
  :scale: 70 %
  :alt: pgRouting query in pgAdminIII
  :align: right

主な機能
--------------------------------------------------------------------------------

pgRouting は以下の機能を提供します。

* 全点対間最短経路探索 - ジョンソンのアルゴリズム
* 全点対間最短経路探索 - ワーシャル-フロイド法
* A* アルゴリズムによる最短経路探索
* 双方向ダイクストラ法による最短経路探索
* 双方向 A* アルゴリズムによる最短経路探索
* ダイクストラ法による最短経路探索
* 到達圏探索
* K-最短経路探索 - 複数の代替経路探索
* K-ダイクストラ法 - 1対多の最短経路探索
* 巡回セールスマン問題
* 交差点での進入制限付き最短経路探索 (TRSP)

あなたのアプリケーションでの pgRouting の利用について、もっと知りたい場合は、 `documentation <http://docs.pgrouting.org>`_ を参照してください。


.. Implemented Standards
   ---------------------

.. * OGC standards compliant

詳細
--------------------------------------------------------------------------------

**ウェブサイト:** http://www.pgrouting.org

**ライセンス:** GNU General Public License (GPL) version 2

**ソフトウェアバージョン:** |version-pgrouting|

**対応プラットフォーム:** Linux, Windows, Mac

**API インターフェース:** SQL

**商用サポート:** http://www.pgrouting.org/support.html

クイックスタート
--------------------------------------------------------------------------------

* :doc:`クイックスタート文書 <../quickstart/pgrouting_quickstart>`
