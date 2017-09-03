:Author: Paul Meems, TopX Geo-ICT The Netherlands (RST conversion)
:Reviewer: Cameron Shorter, Jirotech
:Product: MapWindow GIS Lite
:Version: osgeo-live9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-MapWindow.png
  :alt: MapWindow GIS
  :align: right
  :width: 220
  :height: 38
  :target: http://www.mapwindow.org
 
MapWindow GIS Lite
================================================================================

デスクトップ GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

MapWindow GIS は、 Windows ベースの、視覚化、管理、編集、データ分析、そして印刷可能な地図を構成するための
オープンソース GIS クライアントです。
GEOS や GDAL/OGR (v2) を統合することで強力な分析機能を備えています。
MapWindow は、 MS-Excel や MS-Access のような MS-Office ベースの製品に組み込むことが容易で、
同様に、C++, C#, VB.NET や Delphi で書かれたプログラムに組み込むことも容易です。
なぜなら、 MapWindow は MapWinGIS と呼ばれる ActiveX コントロールをベースとしているからとなります。
MapWindow Open Source GIS Lite は、 MapWinGIS v4.9.5 をベースとしています。
 
OSGeo-Live にインストールされている MapWindow Lite バージョンは、すべての MapWindows デスクトップ版の機能を含んでいません。
(例えば、ツールボックス、プラグイン、フル機能のシェープファイルエディタや PostGIS のサポート等)。

.. note:: MapWindow は、実行に際し Microsoft Windows のインストールを必要とします。
インストールファイルは、 `OSGeo-Live <http://live.osgeo.org>`_ のフルバージョンのISOに含まれているほか、
https://mapwindow4.codeplex.com/releases/view/542097 からもダウンロード可能でしょう。
   
.. image:: /images/projects/mapwindow/mapwindow_screenshot.png
  :alt: Mapwindow Open Source GIS Lite
  :scale: 50 %
  :align: right

主な機能
--------------------------------------------------------------------------------

* 使いやすいグラフィカル・ユーザー・インターフェース:

    * 地物の識別/選択機能
    * 属性の編集/閲覧/検索
    * オンザフライ変換
    * レイアウトの印刷
    * 地物のラベリング
    * ベクターやラスターシンボルの変更
    * 更に多くの機能

* 多数のベクターやラスター形式を容易に閲覧:

    * 多数のベクター形式: ESRI シェープファイル, MapInfo, SDTS や GML
    * デジタル標高モデル、空中写真、ランドサット画像のようなラスター形式
    * OpenStreetMap, MapQuest Aerial, Bing Maps のようなタイルサービス
 
* ActiveX コントロール:

    | C++ で書かれた ActiveX コントロールを使用します。このコントロールは、
    | C#, C++, VB.NET や Delphi といった言語で書かれたカスタム・アプリケーションで使用できます。
    | また、MS-Access や MS-Excel のような MS-Office 製品で使用できます。

実装している標準規格
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* OGC 標準: 
    * TMS
    * Web Map Tile Service (WMTS)
    * GML    

詳細
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**ウェブサイト:** http://www.mapwindow.org

**コードリポジトリ:** https://mapwingis.codeplex.com

**ライセンス:** MPLv1.1

**ソフトウェアバージョン:** MapWindowLite 4.9.5

**対応プラットフォーム:** Windows (XP or higher)

**API インタフェース:** .NET (C#, VB.NET), C++, Delphi, VBA (MS-Access, MS-Excel)  

**コミュニティサポート:** http://www.mapwindow.org/documentation/mapwingis4.9/getting_started.html

**商用サポート:** http://www.mapwindow.nl, http://www.mapwindow.org/documentation/mapwindow5/support.html


クイックスタート
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* :doc:`クイックスタート文書 <../quickstart/mapwindow_quickstart>`
