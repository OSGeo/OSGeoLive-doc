:Author: Gérald Fenoy
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live7.9
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-Zoo.png
  :alt: project logo
  :align: right
  :target: http://zoo-project.org/

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100
  :alt: OSGeo Incubation Project
  :align: right
  :target: http://www.osgeo.org

ZOO-Project
================================================================================

WPS サーバ
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

ZOO-Project は、Webサービス開発と処理チェーン化のための開発者フレンドリーなウェブ処理サービス（WPS）フレームワークを提供します。
WPS は、空間アルゴリズムを実行する機能への Web アクセスを提供します。
ZOO-Projectは、多くのプログラミング言語をサポートし、:doc:`GEOS <geos_overview>` と :doc:`OGR <gdal_overview>` ライブラリを使用した２つの単純なspatialtoolsサービスプロバイダ（C共有ライブラリとPythonモジュール）デモアプリケーションが付属しています。

ZOO は３つのパーツから構成されます:

.. image:: ../../images/screenshots/1024x768/zoo-project-demo-2.png
  :scale: 40 %
  :alt: screenshot
  :align: right

*ZOO Kernel* : 異なるプログラミング言語でコード化されたチェーンWebサービス
の管理を可能にする強力なサーバサイドのCカーネル。

*ZOO Services* : オープンソースライブラリに基づいたWebサービスの構築過程例

*ZOO API* : プロセス開発とチェーン化をより簡単にする、ZOO サービスの呼び出し
とチェーンを可能にするサーバサイドのJavaScript API。

ZOOはZOOのコアシステムを構成している「WPSサービスカーネル」（別名ZOOカーネル）に基づいています 。
ZOOカーネルは動的ライブラリをロードすることができ、 オンデマンドWebサービスとして、それらを処理します。 
ZOOカーネルはC言語で書かれていますが、多数のライブラリに接続するために、いくつかの一般的なプログラミング言語をサポートし、上記のすべてのWebサービスのエンド開発者の仕事を簡素化します。

ZOOサービスは、メタデータファイル（.zcfg）と対応する実装のためのコードで構成されるリンクです。メタデータファイルは、すべての WPS 実行リクエストを使用して呼び出すことができる利用可能な機能、ならびに所望の入力/出力について記述します。サービスは、アルゴリズムと機能が含まれていて、現在は、C / C + +、Fortranの、JavaやPythonやPHPとJavaScriptで実装することができます。

代表的な機能
--------------------------------------------------------------------------------

* マルチ開発言語 WPS サーバ
* 容易なプロシージャ開発とウェブサービス作成
* ZOO API による WPSチェーン

準拠している標準規格
--------------------------------------------------------------------------------

* OGC WPS 1.0.0

デモ
--------------------------------------------------------------------------------

* `GEOSとOGRライブラリベースの単純なCサービスプロバイダデモ <http://localhost/zoo-demo/spatialtools.html>`_
* `GEOSとOGRライブラリベースの単純なPythonサービスプロバイダデモ <http://localhost/zoo-demo/spatialtools-py.html>`_
* `リクエストから ZOO Kernel に処理を行う単純な html フォーム <http://localhost/zoo-demo/spatialtools.html>`_


詳細
--------------------------------------------------------------------------------

**ウェブサイト:** http://zoo-project.org

**ライセンス:** MIT x/11

**ソフトウェア Version:** 1.3.0

**対応プラットフォーム:** Windows, Linux, Mac

**対応開発言語:** C, Python, Java, PHP, Fortran, Javascript

**サポート:** http://zoo-project.org/trac


クイックスタート
--------------------------------------------------------------------------------

* :doc:`クイックスタート文書 <../quickstart/zoo-project_quickstart>`


