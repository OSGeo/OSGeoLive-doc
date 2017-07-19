:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-spatialite.png
  :alt: project logo
  :align: right
  :target: http://www.gaia-gis.it/gaia-sins/


SpatiaLite
================================================================================

地理空間情報データベース
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SpatiaLite は地理空間情報を扱う関数を追加した SQLite データベースエンジンです。

SQLite は動作が軽く、シンプルで堅牢、簡単に使える人気のあるデータベース管理システム(DBMS)です。それぞれのデータベースは一つのファイルに格納されます。コピー、圧縮や、Windows、Linux、MacOS 等のOS間の移行も簡単にできます。

.. _SQLite: http://www.sqlite.org/

.. image:: /images/screenshots/1024x768/spatialite.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

主な機能
--------------------------------------------------------------------------------

SQLite で OGC の仕様に準拠した空間データを扱えるようにしたものが SpatiaLite の拡張です。

ハイライト:

* ユーザフレンドリーな GUI
* 標準の WKT 及び WKB フォーマット
* SQL 空間関数 - AsText()、GeomFromText()、Area()、PointN() など
* GEOS 経由で提供される OpenGis 空間解析関数 - Overlaps()、Touches()、Union()、Buffer() など
* OpenGis の仕様に沿った完全な空間メタデータ
* 多くのジオメトリ記法 - EWKT、GML、KML、GeoJSON
* シェープファイルのインポート、エクスポート
* PROJ.4 と EPSG 測地系パラメータデータセットを利用した測地系変換
* GNU libiconv によるロケール、文字コード
* SQLite の RTree 拡張を利用した地理空間インデックス
* シェープファイルに VIRTUAL TABLE としてアクセスすると、インポートや変換なしにシェープファイルに SQL クエリを発行可能
* 外部の CSV/タブ区切りテキストや xls スプレッドシートに VIRTUAL TABLE としてアクセス
* XML ドキュメントやストアド BLOB 圧縮バイナリオブジェクトへの、"well formed" 構文、及び XSF スキーマ妥当性検証チェック付きアクセス。特別に ISOメタデータ、SLD/SE スタイル、SVG グラフィックスをサポート。XML ドキュメントは標準の XPath 構文でクエリ可能。
* 外部 WFS サーバへのクエリ。
* 外部の DXF ファイル(全バージョン)のパースと、検出したレイヤとジオメトリの格納。
* DXF ファイルの生成とエクスポート

詳細
--------------------------------------------------------------------------------

**ウェブサイト:** http://www.gaia-gis.it/gaia-sins/

**ライセンス:** MPL v1.1 and GPL v3

**ソフトウェアバージョン:** |version-spatialite|

**対応プラットフォーム:** Linux、Mac、Windows

**API インタフェース:** C++


クイックスタート
--------------------------------------------------------------------------------

* :doc:`クイックスタート文書 <../quickstart/spatialite_quickstart>`

