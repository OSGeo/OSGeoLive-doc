:Author: Jody Garnett
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live 6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/jts_project.png
  :alt: project logo
  :align: right

JTS トポロジスイート (JTS)
================================================================================

JTS はジオメトリ処理のための空間述語・関数のオープンソースライブラリです。
JTS は2次元デカルト平面上の線形ジオメトリ処理のための、完全で、矛盾がなく、ロバスト(堅牢)な
基本的アルゴリズムを提供します。

JTS は "JTS Test Builder" という、ユーザがテスト実行とインタラクティブな
デスクトップインタフェースを通じた、ジオメトリの実験が可能なツールを含んでいます。
JTS の安定性は広範なテストスイートを通じて保証されています。

JTS は Java ベースのオープンソース地理空間アプリケーションで最も多く使用されており、
また、JTS の C++ 移植の :doc:`geos_overview` は C ベースのアプリケーションで最も多く
使用されています。他の移植は、C# と JavaScript で利用可能です。

.. image:: /images/projects/jts/jts-overview.jpg
  :scale: 90 %
  :alt: JTS Topology Suite - Test Builder application
  :align: right

主な機能
--------------------------------------------------------------------------------

* ジオメトリモデル (ポイント、ライン、エリア)
* ジオメトリ演算 (例: 交差(intersect)、統合(union)、含む(within)等)
* 精度のハンドリング
* ジオメトリ生成
* 距離計測機能 (例: デカルト2D距離, ハウスドルフ距離)
* 空間アルゴリズム (例: バッファ作成、ラインオフセット、ライン簡略化)
* ジオメトリ算術機能 (例: 角度、距離等)
* 空間構造 (例: 4分木とR木、ドロネー三角形分割)
* 入力/出力 (例: WKT、GML)
* 高精度計算

サポートするフォーマット
--------------------------------------------------------------------------------

* Well-Known テキスト (WKT) と Well-Known バイナリ (WKB)
* GML 2
* Java Swing/AWT 書き込み

準拠している標準規格
--------------------------------------------------------------------------------

* OGC Simple Features for SQL (SFSQL)

詳細
--------------------------------------------------------------------------------

**ウェブサイト:** https://sourceforge.net/projects/jts-topo-suite/

**ライセンス:** LGPL

**対応プラットフォーム:** Windows、Linux、Mac

**API インタフェース:** Java

**サポート:** https://sourceforge.net/projects/jts-topo-suite/
