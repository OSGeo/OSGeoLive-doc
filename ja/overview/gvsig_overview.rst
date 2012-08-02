:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-gvSIG.png
  :scale: 75 %
  :alt: project logo
  :align: right
  :target: http://www.gvsig.org/

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html


gvSIG Desktop
================================================================================

デスクトップ GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

gvSIG は、地理情報システム (GIS) のデスクトップ・アプリケーションです。複雑な管理や計画上の問題解決のために参照される、あらゆる地理情報の保存、格納、操作、分析、展開のために設計されたものです。gvSIG は、ユーザーフレンドリーなインターフェースで知られ、全ての共通的なベクターおよびラスターフォーマットにアクセスできます。gvSIG は地理情報を伴う作業（検索、レイアウト生成、ジオプロセシング、ネットワークなど）のための広範なツールが特徴で、土地に関する部門で作業するユーザーにとって理想的なツールです。

gvSIG は次のような点で知られています:

* OGC 規格を通じてローカルおよびリモートデータの両方を同じビューで統合できます。
* オーダーメイドの製品開発を可能にするだけでなく、容易に拡張可能で、継続的なアプリケーションの強化が可能です
* 20ヶ国語を超える言語 (スペイン語、英語、ドイツ語、フランス語、イタリア語など)で利用可能です
* Windws, Linux, そして Mac OS X プラットフォームで利用可能です:

.. image:: ../../images/screenshots/1024x768/gvsig_desktop.png
  :scale: 50 %
  :alt: screenshot
  :align: right

主な機能
--------------------------------------------------------------------------------

* データの読み込み、地図ナビゲーション、文字列による地図情報の検索、距離計測、主題図作成、共通の凡例タイプを用いた凡例編集、ラベリング、多くの選択タイプによるフィーチャ選択、統計を伴うデータテーブル、並べ替え、テーブルのリレーション、テーブル結合、レイアウト管理、ジオプロセシングツール、CAD、ラスタ処理などのような共通の GIS ツールを提供します。

* 相互運用性: 知られているデータフォーマットのほとんどが使用可能:

  * ラスタ: ecw,  ENVI hdr, ERDAS img, (Geo)TIFF, GRASS, ...
  * ベクタおよび CAD: shapefile, GML, KML, DGN, DXF, DWG
  * データベース: PostGIS, MySQL, Oracle, ArcSDE
  * リモート: ECWP, ArcIMS, OGC 標準

* SDI (カタログと地名辞書サービス)内のデータ資源をローカライズするためのディスカバリサービスクライアント
  
  * カタログ: Z3950, SRW, CSW (ISO/19115 and ebRIM)
  * 地名辞書: ADL, WFS, WFS-G
  
* SEXTANTE ライブラリと GRASS の統合による290以上の地理アルゴリズム
  
* 高度なCADツールとの統合:

  * ベクターデータ: エレメントの修正、生成、削除
  * CAD ソフトウェアの典型的な要素であるコマンド・コンソール
  * グリッド、コマンドスタック、複雑なエレメントを選択する助けとなるツール
  * ポイントやポリゴン、ラインや楕円のような要素を挿入するためのツールなど
  * 回転や対称性を修正するためのツールなど
  
* 高度なラスタツールとの統合:

  * ジオレファレンスと再投影
  * エクスポート、クリッピング
  * ルックアップテーブル、ヒストグラム
  * フィルタ、ベクタ化
  * 利害管理の概要と地域

* スクリプトのサポート
* PROJ4 を用いた強力な再投影エンジン


実装している標準規格
--------------------------------------------------------------------------------

多数の Open Geospatial Consortium（OGC）標準の高度なクライアントのサポート

* WMS, WFS そして WCSレイヤの読み込み
* SLD 凡例のエクスポート／インポート
* Web Map Context (WMC)のエクスポート／インポート
* CSW (ISO/19115 and ebRIM)によるカタログ検索
* WFS-G recommendation を用いた地名検索

詳細
--------------------------------------------------------------------------------

**ウェブサイト:** http://www.gvsig.org/

**ライセンス:** GNU General Public License (GPL) version 2

**バージョン:** 1.11

**動作環境:** Windows, Linux, Mac

**サポート:** http://www.gvsig.org/web/organization/services


.. _gvSIG: http://www.gvsig.org

クイックスタート
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/gvsig_quickstart>`
