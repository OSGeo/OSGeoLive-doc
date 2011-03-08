:Author: Daniel Kastl
:Version: osgeo-live4.0
:License: Creative Commons

.. _pgrouting-overview:

.. image:: ../../images/project_logos/logo-pgRouting.png
  :scale: 100 %
  :alt: pgRouting logo
  :align: right
  :target: http://www.pgrouting.org/

pgRouting
=========

GIS ツール
~~~~~~~~~

pgRouting は `PostGIS <postgis_overview.html>`_/`PostgreSQL <http://www.postgresql.org>`_地理空間データベースに経路探索機能を提供するための拡張ライブラリです。

データベース上でルート検索を行う方法の利点には、以下のようなものがあります。

* 多くのクライアントアプリケーション、例えば `Quantum GIS <qgis_overview.html>`_ や `uDig <udig_overview.html>`_ のようなプログラムからJDBCやODBC経由、もしくは直接PL/pgSQLを発行することでデータ及び属性を更新することができます。クライアントは、PCやモバイルデバイスでもかまいません。
* データへの変更は、ルート探索エンジン経由で、すぐに反映させることができます。ルート探索の為の事前の計算処理は必要ありません。
* "cost" パラメータは動的にSQLで計算され、その値は複数のテーブルのフィートから計算することも可能です。

.. image:: ../../images/screenshots/800x600/pgrouting.png
  :scale: 60 %
  :alt: pgRouting query in pgAdminIII
  :align: right

主な機能
-------------

pgRouting は以下のファンクションを提供します。

* Shortest Path Dikstra: ヒューリスティック手法を使わない、最短経路アルゴリズム
* Shortest Path A-Star: ヒューリスティック手法を利用した、大規模データセットの為の最短経路探索
* Shortest Path Shooting-Star: ヒューリスティック手法を利用した、一方通行を考慮した最短経路探索
* Traveling Salesperson Problem (TSP) :巡回セールスマン問題
* Driving Distance calculation (Isolines): 到達圏検索

.. 準拠している標準
   ---------------------

.. * OGC standards 準拠

詳細
-------

**Website:** http://www.pgrouting.org

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** 1.05

**Supported Platforms:** Linux, Windows, Mac

**API Interfaces:** SQL

**Commercial Support:** http://www.pgrouting.org

Quickstart
----------

* `Quickstart documentation <../quickstart/pgrouting_quickstart.html>`_


