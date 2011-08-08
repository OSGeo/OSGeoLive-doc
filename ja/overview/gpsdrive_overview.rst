:Author: Hamish Bowman
:Version: osgeo-live4.0
:License: Creative Commons

.. _gpsdrive-overview:

.. image:: ../../images/project_logos/logo-gpsdrive.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://www.gpsdrive.de


GpsDrive
================================================================================

GPS ナビソフト
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`GpsDrive <http://www.gpsdrive.de>`_ はカーナビ、バイク用ナビ、船舶ナビ、
航空ナビとして使用できるナビゲーションシステムです。GpsDrive は GPS の信号を元に
今いる位置を拡大縮小できる地図上に表示します。地図のファイルは現在地にあわせて自動的に選択し、
適切な倍率で表示します。GPSとはNMEAプトロコルでの通信をサポートしており、
マルチプレクサとして `Gpsd <http://gpsd.berlios.de>`_ を使用してUSB
のGPSモジュールのバイナリプロトコルも扱うことができます。

主な機能
--------------------------------------------------------------------------------

.. image:: ../../images/screenshots/1024x768/gpsdrive-cyclemap.png
  :scale: 50 %
  :alt: screenshot
  :align: right

* ランドサットもしくは OpenStreetMap のデータをWebからダウンロード、もしくは独自の地図画像を登録
* OpenStreetMap のデータを PostGIS データベースに格納し、Mapnik を用いたリアルタイムのレンダリング
* NASA の Blue Marble を高解像度でのレンダリング
* eSpeak を用いた音声ナビ
* 細かくカスタマイズできるダッシュボードと GUI
* 多数のウェイポイントのオプションを含むGPXトラックと経路のサポート
* SQLite, GpsBabelと互換性のあるプレインテキストファイル
* 指定半径内でウェイポイントから最近傍 POI の探索
* 経路計画
* 友達とトラックを共有できるサーバ機能
* Kismet による Wifi の統合

詳細
--------------------------------------------------------------------------------

**ウェブサイト:** http://www.gpsdrive.de

**ライセンス:** GNU General Public License (GPL) version 2

**バージョン:** 2.11

**サポートするプラットフォーム:** GNU/Linux, Mac OSX

**サポート:** http://gpsdrive.de/support.shtml


クイックスタート
--------------------------------------------------------------------------------

* `クイックスタート <../quickstart/gpsdrive_quickstart.html>`_


