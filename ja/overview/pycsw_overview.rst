:Author: OSGeo-Live
:Author: Tom Kralidis, Angelos Tzotsos
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Toshikazu Seto
:Version: osgeo-live9.5
:License: Creative Commons

.. image:: ../../images/project_logos/logo-pycsw.png
  :alt: project logo
  :align: right
  :target: http://pycsw.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

pycsw
================================================================================

メタデータカタログ
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pycswは、ウェブへのデータセットの説明（メタデータ）のカタログを公開することを可能にするもので、 標準的なインターフェースやフォーマットをベースに使用でき、カタログ・クライアントによって照会および更新することができるようになっています。メタデータは、作成日時、作成者、タイトル、注目される領域などのようなものでも保存する「データについてのデータ」であり、通常、ISO 19115、ISO 19139やFGDC CSDGMなどの国際標準に従って、XMLファイルとしてエンコードされます。

pycsw は、:doc:`OGC Catalogue Services for the Web (CSW) 標準<../standards/csw_overview>` の `Python`_ による実装です。Tプロジェクトは `OGC Compliant`_ と `OGC Reference Implementation`_ に認定されています。CSW規格は、空間データ、Webサービスや関連するリソースについてのメタデータの発見、ブラウズ、クエリーのための共通のインターフェースを定義します。

pycswは、MITライセンス化でリリースされているオープンソースであり、主要な全てのプラットフォーム (Windows, Linux, Mac OSX) で動作します。

.. image:: ../../images/screenshots/1024x768/pycsw_overview.jpg
  :scale: 50 %
  :alt: project logo
  :align: right

主な機能
--------------------------------------------------------------------------------

* 認定されたOGCに準拠し、OGCのCSW2.0.2のためのOGCのリファレンス実装
* WMS, WFS, WCS, WPS, WAF, CSW, SOSのためのハーべスティング支援
* INSPIRE ディスカバリー・サービス 3.0 実装
* ISO メタデータ・アプリケーション・プロファイル 1.0.0 実装
* FGDC CSDGM Application Profile for CSW 2.0 実装
* URL（SRU）検索プロトコルを介して検索/探索を実装
* OpenSearch 実装
* ISO, Dublin Core, DIF, FGDC and Atom メタデータモデルをサポート
* CGI or WSGI デプロイ
* シンプルな構成
* トランザクション機能 (CSW-T)
* 柔軟なリポジトリ設定
* GeoNode 接続
* オープンデータ・カタログ 接続
* 政府のカタログ配布の検索
* リアルタイムでのXMLスキーマ検証
* 拡張可能なプロファイル・プラグインのアーキテクチャ
* 非常に軽量であること (Python + CGI)


準拠している標準規格
--------------------------------------------------------------------------------

OGC標準:

* CSW 	2.0.2
* Filter 	1.1.0
* OWS Common 	1.0.0
* GML 	3.1.1
* OGC SFSQL 	1.2.1

メタデータ標準:

* Dublin Core 	1.1
* SOAP 	1.2
* ISO 19115 	2003
* ISO 19139 	2007
* ISO 19119 	2005
* NASA DIF 	9.7
* FGDC CSDGM 	1998
* SRU 	1.1
* A9 OpenSearch 	1.1

詳細
--------------------------------------------------------------------------------

**Webサイト:** http://pycsw.org

**ライセンス:** `MIT`_

**ソフトウェアバージョン:** |version-pycsw|

**対応プラットフォーム:** Windows, Linux, Mac

**API インターフェース:** Python

**コミュニティサポート:** http://pycsw.org/docs/support.html

.. _`Python`: http://www.python.org/
.. _`MIT`: http://pycsw.org/docs/license.html#license
.. _`OGC Compliant`: http://www.opengeospatial.org/resource/products/details/?pid=1104
.. _`OGC Reference Implementation`: http://demo.pycsw.org/

クイックスタート
--------------------------------------------------------------------------------

* :doc:`クイックスタート文書 <../quickstart/pycsw_quickstart>`

