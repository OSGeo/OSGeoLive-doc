:Author: Pirmin Kalberer
:Version: osgeo-live4.0
:License: Creative Commons

.. _spatialite-overview:

.. image:: ../../images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right
  :target: http://www.gaia-gis.it/spatialite/


SpatiaLite
==========

地理空間情報データベース
~~~~~~~~~~~~~~~~

SpatiaLite は地理空間情報を扱う関数を追加した SQLite データベースエンジンです。

SQLite は動作が軽く、シンプルで堅牢、簡単に使える人気のある DBMS です。
それぞれのデータベースは一つのファイルに格納されます。
コピー、圧縮、LANやWeb経由でのやりとりも簡単にできます。

データベースのファイルはプラットフォームに依存しないフォーマットを採用しており、
Windows、Linux、MacOSなどいずれの環境でも使用できるフォーマットとなっています。

.. _SQLite: http://www.sqlite.org/

.. image:: ../../images/screenshots/1024x768/spatialite.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

主な機能
-------------

SQLite で OGC の仕様に準拠した地理空間情報を扱えるようにしたものが SpatiaLite の拡張です。


* WKT 及び WKB フォーマットをサポート
* AsText(), GeomFromText(), Area(), PointN() などの地理空間 SQL 関数を実装
* GEOS を使用して全ての OpenGis 関数をサポートしています。これは Overlaps(), Touches(), Union(), Buffer() などの複雑な地理空間解析関数を司っています。
* OpenGis の仕様に沿った完全な空間メタデータをサポート
* シェープファイルのインポート、エクスポートをサポート
* PROJ4 と EPSG 測地系データベースを利用した測地系変換をサポート
* GNU libiconv によるロケール、文字コードのサポート
* SQLite の RTree 拡張を利用した地理空間インデックスの完全な実装
* VirtualShape拡張を利用すると、シェープファイルをVIRTUAL TABLE としてSQLite から使用できます
* importやデータ変換なしにシェープファイルに直接SQLクエリを発行できるようになります
* VirtualText拡張をり追うすると、SQLiteからcsvやタブ区切りテキストをVIRTUAL TABLE としてSQLite から使用できます
* importやデータ変換なしに CSVやタブ区切りテキストに対して、直接SQLクエリを発行できるようになります
* これらの機能をすべてユーザーフレンドリに扱えるよGUIツールをサポート


詳細
-------

**ウェブサイト:** http://www.gaia-gis.it/spatialite/

**ライセンス:** MPL v1.1 and GPL v3

**バージョン:** 2.3.1 / 2.4 beta

**サポートするプラットフォーム:** Linux, Mac, Windows

**API:** C++


クイックスタート
----------

* `Quickstart documentation <../quickstart/spatialite_quickstart.html>`_


