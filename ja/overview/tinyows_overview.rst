:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-TinyOWS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://mapserver.org/trunk/tinyows/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

TinyOWS
================================================================================

Web フィーチャーサービス
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

TinyOWS は高性能で軽量なトランザクショナルな WFS (WFS-T、Web Feature Service) です。CGI や FastCGI をインターフェースに用い、データベースに :doc:`PostGIS <postgis_overview>` を使用して容易な開発が可能です。

.. image:: ../../images/screenshots/800x600/tinyows_digitizing.jpg
  :scale: 55 %
  :alt: digitizing
  :align: right

TinyOWS は通常 :doc:`QGIS <qgis_overview>` や :doc:`OpenLayers <openlayers_overview>` をクライアントとして WFS-T を提供するために :doc:`MapServer <mapserver_overview>` と共に使用します。このソフトウェアは軍事的リスク回避を含む世界中の組織で利用されています。
TinyOWS は WFS 1.0 と 1.1 に厳密に準拠して実装しており、すべての OGC CITE ユニットテストに合格しています。

主な機能
--------------------------------------------------------------------------------

* トランザクショナルな Web Feature Service (WFS-T)
* CGI と FastCGI 用のインターフェース
* PostGIS データの利用
* GML 2.1.2, 3.1.1 もしくは GeoJson 1.0 での出力
* MapServer の設定ファイルを用いて、一つの設定を複数のアプリケーションで使用可能

実装している標準規格
--------------------------------------------------------------------------------
* WFS 1.0 と WFS 1.1: 基本的な機能と、トランザクショナルプロファイル
* FE 1.0.0 と FE 1.1.0
* GML 2.1.2 と 3.1.1 Simple Profile (SF-0)

詳細
--------------------------------------------------------------------------------

**ウェブサイト:** http://mapserver.org/trunk/tinyows/

**ライセンス:** MIT

**バージョン:** 1.0.0

**動作プラットフォーム:** Linux, Unix, Mac, Windows

**API:** CGI/FastCGI

**サポート:** http://lists.osgeo.org/mailman/listinfo/mapserver-users


クイックスタート
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/tinyows_quickstart>`

