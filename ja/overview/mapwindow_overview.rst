:Author: Paul Meems, TopX Geo-ICT The Netherlands (RST conversion)
:Reviewer: Cameron Shorter, LISAsoft
:Product: MapWindow GIS 4.8.6
:Version: osgeo-live5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-MapWindow.png
  :alt: MapWindow GIS
  :align: right
  :width: 220
  :height: 38
  :target: http://www.mapwindow.org
 
MapWindow GIS
================================================================================

デスクトップ GIS 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

MapWindow GIS は、 Windows をベースとして 視覚化、管理、編集、データ分析、そして印刷可能な地図を構成するためのオープンソース GIS クライアントです。それは、 GEOS や GDAL/OGR を統合することでｍ強力な分析機能を備えています。
MapWindow は、 MS-Excel や MS-Access のような MS-Office をベースとする製品と同様に、 VB6 、 C++ 、 C# 、 VB.NET、 Delphi で書かれたプログラムに組み込むことが容易で、 MapWindow は、 ActiveX コントロールに基づいています。

.. note:: MapWindow は、実行に際し Microsoft Windows のインストールを必要とします。インスールファイルは、 `OSGeo-Live <http://live.osgeo.org>`_ のフルバージョンのISOに含まれているほか、 http://mapwindow4.codeplex.com/releases からもダウンロード可能でしょう。
   
.. image:: ../../images/screenshots/1024x768/mapwindow-screenshot.jpg
  :alt: Mapwindow Screenshot
  :scale: 50 %
  :align: right

主な機能
--------------------------------------------------------------------------------

* 使いやすいなグラフィカル・ユーザー・インターフェース:

    * 地物の識別/選択機能
    * 属性の編集/閲覧/検索
    * オンザフライ変換
    * レイアウトの印刷
    * 地物のラベリング
    * ベクターやラスターシンボルの変更
    * 更に多くの機能

* 多数のベクターやラスター形式を容易に閲覧:

    * 多数のベクター形式: ESRI シェープファイル 、 MapInfo 、 SDTS 、 GML を含む
    * デジタル標高モデル、空中写真、ランドサット画像のようなラスター形式
    * OpenStreetMap や ArcGIS Online のようなタイルサービス

* 空間データの生成、編集、出力:

    * シェープファイル軽視のためのデジタイジング・ツール
    * ジオレファレンス・プラグイン
    * GPX 形式でのインポート/アウトプット、 他の GPS 形式から GPX への変換、 GPS ユニットへの直接的なダウンロード/アップロードのための GPS ツール

* プラグインによる空間解析の実行:

    * マップ代数演算
    * 地形解析
    * 水理モデリング (TauDEM),
    * ネットワーク解析
    * さらに多くの解析

* 拡張可能なプラグイン・アーキテクチャ:

    * プラグイン・アーキテクチャは、 MapWindow に機能を容易に追加することが可能です。 プラグインは、 Visual Studio Pro またはフリーの SharpDevelop または Visual Studio Expressを用いて .NET language (C#, VB.NET) で書くことができます。
 
* ActiveX コントロール:

    * C++ で書かれた ActiveX コントロールを使用します。このコントロールは、VB6 、 C++ 、 C# 、 VB.NET、 Delphi といった言語で書かれたカスタム・アプリケーションで使用できます。また、MS-Excel や MS-Access のような MS-Office 製品で使用できます。

実装している標準規格
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* OGC 標準: 
    * WMS (v1.1, v1.3)
    * WFS v1.1 (through a separate plug-in)
    * Web Map Tile Service (WMTS)
    * GML    

詳細
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**ウェブサイト:** http://www.mapwindow.org

**ライセンス:** MPLv1.1

**バージョン:** 4.8.6

**動作環境:** Windows

**API:** Visual Basic 6, VBA (MS-Access, MS-Excel), C++, .NET (C#, VB.NET)

**コミュニティサポート:** http://www.mapwindow.org/apps/wiki/doku.php?id=forums

**商用サポート:** http://www.mapwindow.nl, http://www.mapwindow.in/, http://www.mapwindow.org/pages/donate.php


クイックスタート
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* :doc:`Quickstart documentation <../quickstart/mapwindow_quickstart>`
