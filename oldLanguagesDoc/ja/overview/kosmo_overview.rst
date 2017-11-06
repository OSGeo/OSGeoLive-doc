:Author: Sergio Baños Calvo
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live8.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-Kosmo.png
  :alt: project logo
  :align: right
  :target: http://www.opengis.es/index.php?lang=en

Kosmo Desktop
================================================================================

デスクトップ GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Kosmo - Desktop はユーザーフレンドリなデスクトップ GIS アプリケーションです。
様々なデータベースに含まれるベクタ/ラスタフォーマットの地理空間データの調査、編集、解析を行うことができます。

様々な OGS 標準に対応しており、すばらしいトポロジ完全を提供します。
プラグインアーキテクチャにより特定の目的用に簡単に機能拡張ができるようになっています。

.. image:: /images/projects/kosmo/kosmo.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

主な機能
--------------------------------------------------------------------------------

対応しているフォーマット:

* ベクタファイル: Shapefiles, GML, DXF, DWG, DGN, CSV （拡張子による対応）
* ベクタデータベース: PostgreSQL + PostGIS, Oracle, MySQL
* ラスタファイル: ECW, MrSID, Tiff, JPG, GIF, PNG, BMP
* OGC サービス: WMS 1.0.0/1.1.0/1.3.0, WFS 1.0.0/1.1.0

特徴:

* ユーザーフレンドリな GUI と学習曲線に注力しています
* 13 言語に対応 （英語、スペイン語、イタリア語、ドイツ語、クロアチア語、チェコ語、ロシア語、スロバキア語、カタロニア語、バスク語、ブラジルポルトガル語、フィンランド語、ポルトガル語）
* Advanced edition capabilities:

  * Multiple drawing tools: draw point, draw linestring, draw polygon, ...
  * CAD style tools: rotate, rotate by angle, symmetry, perpendicular, paralell, ... (by an extension)
  * Multiple snapping modes: to vertexes, to vertexes and lines, to segment mid points, to centroids, to grid, ...
  * Geometry tracking mode
  * Advanced snap manager (by an extension)  
* OpenOffice offimatic suite を用いた拡張印刷モジュール
* トポロジ整合性ルール: pre/during/post edition
* トポロジ確認と削除ツール (intersect/eliminate/clean)
* 地理演算ウィザード拡張: buffer/dissolve/merge/clip/intersection/spatial join/difference （拡張子による対応）
* ラスタジオリファレンスツール （拡張子による対応）
* Sextante 1.0 の統合 （拡張子による対応）
* Massive import/export operations wizard (by an extension)
* PDF printing module (by an extension)
* GPS tools (by an extension)

.. note::
  (*) ECW and MrSID raster formats require an extra download to work: due to licensing restrictions their libraries can't be distributed


準拠している標準規格
--------------------------------------------------------------------------------

* Web Map Service (WMS) 1.0.0/1.1.0/1.3.0
* Web Feature Service (WFS) 1.0.0/1.1.0
* Styled Layer Descriptor (SLD) 1.0/1.1 (import/export)


詳細
--------------------------------------------------------------------------------

**ウェブサイト:** http://www.opengis.es/index.php?lang=en

**ライセンス:** GNU General Public License (GPL) version 3

**ソフトウェアバージョン:** |version-kosmo|

**対応プラットフォーム:** Windows, Linux

**API インターフェース:** Java

**商用サポート:** http://www.saig.es/index.php?lang=en


クイックスタート
--------------------------------------------------------------------------------
    
* :doc:`クイックスタート文書 <../quickstart/kosmo_quickstart>`
