:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-osgearth.gif
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://osgearth.org/


osgEarth
================================================================================

地形レンダリングツールキット
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

osgEarthは、OpenSceneGraph_ (OSG)のためのスケーラブルな地形レンダリングツールキットで、オープンソース、高パフォーマンス、そして3次元グラフィックスのツールキットです。 単純なXMLファイルの生成、画像・標高・ベクタデータに対応し、あなたの好きなOSGアプリケーションを読み込み、そして実行できます!
osgEarthはすべての種類のデータをサポートしており、立ち上げと実行を迅速かつ容易にするのに役立つ多くのサンプルが付属しています。

.. _OpenSceneGraph: http://www.openscenegraph.org/

.. image:: ../../images/screenshots/1024x768/osgearth.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

主な機能
--------------------------------------------------------------------------------

osgEarthは、簡単にスケーラブルな地形モデルを作成することができます: 

* 地形モデルの生成- オフラインまたはランタイムによる動的な生成
* 何かコードを記述すること無く、全球の地形が読み込まれる
* 高解像度の挿入図を生成するための画像レイヤ
* オンザフライによる複数の画像・標高・ベクターデータの結合
* パフォーマンスを最大化するためのマップタイルキャッシュ設定
* マルチテクスチャ効果のためのレイヤ透明度の調整

osgEarthでは地形をレンダリングする以上のことができます: 

* 地形上にベクタ（GIS）データをドレープ
* 異なる座標参照系間のデータの再投影
* 緯度経度座標系による地形上の外部モデルの配置
* 高速な交差テストの実行
* （再構築せずに）既存のVPBのデータベースへの新しいデータの取り込み
* 非視覚的なプロセスのための地形タイルへの直接アクセス

閲覧可能なもの:

* GeoTIFF画像やデジタル標高モデル(DEM)ファイル (加えて多くの他のフォーマットも) 
* ESRI シェイプファイルのようなベクターデータ
* OGC準拠のWebマッピングデータ (WMS_ など) 
* MapServer_ or `ESRI ArcGIS Server`_によるGISレイヤーのパブリッシュ
* OpenStreetMap_, `ArcGIS Online`_, or `NASA OnEarth`_のようなオンラインマップ

.. _WMS: http://www.opengeospatial.org
.. _MapServer: http://mapserver.org
.. _`ESRI ArcGIS Server`: http://www.esri.com/software/arcgis/arcgisserver/
.. _OpenStreetMap: http://openstreetmap.org
.. _`ArcGIS Online`: http://resources.esri.com/arcgisonlineservices/
.. _`NASA OnEarth`: http://onearth.jpl.nasa.gov


詳細
--------------------------------------------------------------------------------

**ウェブサイト:** http://osgearth.org/

**ライセンス:** GNU Lesser General Public License (LGPL) 

**バージョン:** 2.0

**動作環境:** Linux, Mac, Windows

**API:** C++

**商用のサポート:** http://osgearth.org/#ProfessionalServices


クイックスタート
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/osgearth_quickstart>`


