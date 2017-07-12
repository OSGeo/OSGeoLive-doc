:Author: Klokan Petr Pridal, Angelos Tzotsos
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live8.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-mapslicer.png
  :alt: project logo
  :align: right
..  :target: https://wiki.osgeo.org/wiki/MapSlicer


MapSlicer
================================================================================

マップ編集
--------------------------------------------------------------------------------

MapSlicer はラスターマップを迅速にパブリッシュし、タイル状のマップを作成するデスクトップアプリケーションです。地理データはGoogle Maps およびGoogle Earthと互換のあるタイルに変換され、ウェブサーバあるいはクラウドストレージ(例としてAmazon S3)に直接アップロードを通じてパブリッシュする事が出来ます。

サーバサイド上の大規模な配置ではなく、単純なファイルホスティングで対応します。パン、ズームのような動的な機能、マーカーやベクターデータのオーバーレイ機能は強力なブラウザにより実現しています。

OpenLayers および Google Maps APIをベースにしたシンプルなビューアが直接扱え、簡単にカスタマイズすることが可能です。

MapSlicerはマルチプラットフォームのデスクトップアプリケーションです。Windows, Mac OS X および linux 用のパッケージ(Debian/Ubuntu)を用意しています。

主要機能
--------------------------------------------------------------------------------

* Javascript APIs のサポート: OpenLayers, Google Maps API
* 追加のサーバソフトウェアのインストールが不要
* 場所を問わないホスティング：Amazon S3のようなクラウドストレージまたは、安価な無制限のFTPアクセスによるウェブホスティング
* 商用のレイヤ(Google, Bing, Yahoo)またはOpenStreetMapと簡単マッシュアップ
* Tiles は OSGEO TMS (Tile Map Service Specification)に準拠
* 様々なラスタフォーマット処理能力: TIFF/GeoTIFF, MrSID, ECW, JPEG2000, Erdas HFA, NOAA BSB, JPEG など
.. * 商用へのサポートおよびマルチコアCPUまたはAmazon EC2クラスター上の並列レンダリング処理

詳細
--------------------------------------------------------------------------------

**ウェブサイト:** https://wiki.osgeo.org/wiki/MapSlicer

**ライセンス:** New BSD License

**ソースコード:** https://github.com/geopython/mapslicer

**ソフトウェアバージョン:** |version-mapslicer|

**対応プラットフォーム:** Windows, Linux, Mac

.. **団体:** http://groups.google.com/group/mapslicer 

.. **商用のサポートおよび応用例:** https://wiki.osgeo.org/wiki/MapSlicer

クイックスタート
--------------------------------------------------------------------------------
    
* :doc:`クイックスタート文書 <../quickstart/mapslicer_quickstart>`
