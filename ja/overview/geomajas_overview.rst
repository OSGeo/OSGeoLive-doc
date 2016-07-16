:Author: Pieter De Graef
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live8.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-geomajas.png
  :width: 100px
  :height: 100px
  :alt: project logo
  :align: right
  :target: http://www.geomajas.org

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

Geomajas
================================================================================

ブラウザ GIS クライアント
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Geomajas は拡張性のあるWeb地図製作用フレームワークです。サーバサイドのパワフルなアルゴリズムをブラウザにも持ち込むことができます。


Geomajas は、地理情報（ :doc:`GeoTools <geotools_overview>` や Hibernate ）データの **サーバサイドの統合** を提供することを目的としています。複数ユーザーによるデータの操作、管理をブラウザだけで実現します。Geomajas はいくつかの強力なブロックで構成しており、最も高度な GIS アプリケーションを作成することができます。

Geomajas の独特で強力なサーバサイドに注目すると、処理、スタイル編集、フィルアリング、キャッシュなど、あらゆる時点で地理情報をセキュアなコンテキストで扱っています。これにより Geomajas は非常にスケーラブルで軽快な動作を維持しており、 **本当に軽いクライアント** を実現します。

.. image:: ../../images/screenshots/1024x768/geomajas_1024x768_screen1.png
  :scale: 50%
  :alt: Geomajas Showcase
  :align: right

主な機能
--------------------------------------------------------------------------------

* Programmable using pure Java through GWT
* Supports many layer types (incl. WMS, WFS, WMTS, TMS, OSM, Google Maps, Shape, PostGIS, Oracle, JDBC, …)
* Handy collection of built-in widgets (incl. Editing and redlining, Print, Geocoding, Layer tree, ...)
* Build your own use cases and create new widgets 
* Easy skinnable through custom CSS
* No need for browser plug-ins
* Runs on a wide range of internet devices using HTML5 
* Not a GWT enthusiast? Access core features through the Javascript API

..
  * クライアントとサーバでのアーキテクチャの統合
  * ジオメトリと属性の編集
  * ユーザ定義属性の定義
  * 拡張クエリのサポート (CQL)
  * 独創的なセキュリティ
  * マルチフロントエンド技術
  * プラグインを用ずにクロスブラウザのサポート

Enterprise Server features
--------------------------------------------------------------------------------

* Advanced security on different levels (layer, feature, attribute, functionality, …)
* Seamless integration with your own Domain Model – persistence via Hibernate, web services, Java RMI, ...
* Enterprise integration with other business applications such as JBPM, Activiti, JasperReports, CMS, Alfresco through industry standards (SOAP, REST, ESB, JNDI, …)
* Easy extensible through the Spring framework

詳細
--------------------------------------------------------------------------------

**ウェブサイト:** http://www.geomajas.org/

**ライセンス:** AGPL

**ソフトウェアバージョン:** |version-geomajas|

**対応プラットフォーム:** Windows, Linux, Mac

**API インターフェース:** Java and Javascript

**サポート:** http://www.osgeo.org/node/725?SET=1&MUL_TECH[]=00089


クイックスタート
--------------------------------------------------------------------------------

* :doc:`クイックスタート文書 <../quickstart/geomajas_quickstart>`

