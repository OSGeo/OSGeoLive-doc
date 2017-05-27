:Author: Bastian Schaeffer, Kristof Lange, Benjamin Pross
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live8.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :alt: project logo
  :align: right
  :target: http://52north.org/wps


52°North WPS
================================================================================

Webサービス
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

52°North `Web Processing Service (WPS) <../standards/wps_overview.html>`_ はWeb から Sextant, ArcGISサーバー、独自に開発した地理空間分析アルゴリズムへのアクセスを可能にします。アルゴリズムは異なる複数の時期でのインフルエンザの違いを決定するようにシンプルであることもありますし、全球気候変動のように複雑であることもあります。

.. image:: ../../images/screenshots/800x600/52nWPS_welcome_page.png
  :scale: 50 %
  :alt: screenshot
  :align: right

主な機能
--------------------------------------------------------------------------------

主なGIS機能:

* 単純なバッファーアルゴリズム
* ダグラス-ポイカーアルゴリズム
* インターセクションアルゴリズム
* AddRasterValuesAlgorithm
* CoordinateTransformAlgorithm
	
以下のものを利用したバックエンド・アルゴリズム：

* Sextante
* ArcGIS サーバー
* R
* GRASS 7

サポートしている入出力フォーマット：

* ベクタデータ: GML2, GML3, シェープファイル, KML, WKT (Well-known Text), DGN, JSON
* ラスタデータ: Geotiff, AsciiGrid, NetCDF, JPEG, PNG, HDF-EOS, ERDAS HFA
* Outputs can be stored in GeoServer/MapServer

ブラウザを利用したクライアント

準拠している標準規格
--------------------------------------------------------------------------------

* OGC Web Processing Service (WPS)
* OGC GML2 SimpleFeatures
* OGC GML3 SimpleFeatures

詳細
--------------------------------------------------------------------------------

**ウェブサイト:** http://52north.org/wps

**ライセンス:** GPL 2

**ソフトウェアバージョン:** |version-52nWPS|

**対応プラットフォーム:** Windows, Linux, Mac

**商用サポート:** http://52north.org

**Other 52°North projects:** :doc:`SOS <./52nSOS_overview>`


クイックスタート
--------------------------------------------------------------------------------

* :doc:`クイックスタート文書 <../quickstart/52nWPS_quickstart>`


