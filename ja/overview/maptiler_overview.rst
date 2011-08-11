:Author: Klokan Petr Pridal
:Version: osgeo-live4.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _maptiler-overview:

.. image:: ../../images/project_logos/logo-maptiler.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://www.maptiler.org/


MapTiler
================================================================================

マップ編集
--------------------------------------------------------------------------------

MapTiler はラスターマップを迅速にパブリッシュし、タイル状のマップを作成するデスクトップアプリケーションです。地理データはGoogle Maps およびGoogle Earthと互換のあるタイルに変換され、ウェブサーバあるいはクラウドストレージ(例としてAmazon S3)に直接アップロードを通じてパブリッシュする事が出来ます。

サーバサイド上の大規模な配置ではなく、単純なファイルホスティングで対応します。パン、ズームのような動的な機能、マーカーやベクターデータのオーバーレイ機能は強力なブラウザにより実現しています。

OpenLayers および Google Maps APIをベースにしたシンプルなビューアが直接扱え、簡単にカスタマイズすることが可能です。

MapTilerはマルチプラットフォームのデスクトップアプリケーションです。Windows, Mac OS X および linux 用のパッケージ(Debian/Ubuntu)を用意しています。

主要機能
--------------------------------------------------------------------------------

* Javascript APIs のサポート: OpenLayers, Google Maps API
* 追加のサーバソフトウェアのインストールが不要
* 場所を問わないホスティング：Amazon S3のようなクラウドストレージまたは、安価な無制限のFTPアクセスによるウェブホスティング
* 商用のレイヤ(Google, Bing, Yahoo)またはOpenStreetMapと簡単マッシュアップ
* Tiles は OSGEO TMS (Tile Map Service Specification)に準拠
* 様々なラスタフォーマット処理能力: TIFF/GeoTIFF, MrSID, ECW, JPEG2000, Erdas HFA, NOAA BSB, JPEG など
* 商用へのサポートおよびマルチコアCPUまたはAmazon EC2クラスター上の並列レンダリング処理

詳細
--------------------------------------------------------------------------------

**ウェブサイト:** http://www.maptiler.org/

**ライセンス:** New BSD License

**ソフトウェアバージョン:** 1.0beta2

**対応プラットフォーム:** Windows, Linux, Mac

**団体:** http://groups.google.com/group/maptiler 

**商用のサポートおよび応用例:** http://www.maptiler.com/
