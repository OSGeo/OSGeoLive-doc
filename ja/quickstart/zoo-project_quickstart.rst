:Author: Gérald Fenoy
:Reviewer: Angelos Tzotsos
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/zoo-simple.png
  :scale: 100 %
  :alt: project logo
  :align: right

.. image:: /images/logos/OSGeo_community.png
  :scale: 100
  :alt: OSGeo Community Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
ZOO Project クイックスタート 
********************************************************************************

ZOO-Project は、Webサービス開発と処理チェーン化のための開発者フレンドリーなウェブ処理サービス（WPS）フレームワークを提供します。
WPS は、空間アルゴリズムを実行する機能への Web アクセスを提供します。

このクイックスタートでは次のことを説明しています：

  * ウェブブラウザから WFS のプロセスを利用する。

.. contents:: 目次
  

実行
================================================================================

*	OSGeo-Live DVD から ZOO Project デモを実行するには、デスクトップまたはメニューの「ZOO-project」から |osgeolive-appmenupath-geoserver| をクリックします。

*	Firefox に ZOO Project 空間ツールデモが表示されます。


.. image:: /images/screenshots/1024x768/zoo-project-demo-1.png
  :scale: 50 %
  :alt: screenshot
  :align: center
  
  
*	:doc:`GeoServer <../overview/geoserver_overview>` WFS サーバの地物を選択するために地図をクリックすると、選択された地物が青色で表示され、その後、Buffer（バッファ）、Centroid（重心）、ConvexHull（凸包） または Boundary（境界） のような単純なジオメトリ処理アイコンをクリックすると、結果が黄色で表示されます。

.. image:: /images/screenshots/1024x768/zoo-project-demo-2.png
  :scale: 50 %
  :alt: screenshot
  :align: center
  

*	最初に選択した地物の近くの別の地物を選択し、複数のジオメトリ処理ボタン Union（結合）、Intersection（積集合）、Symmetric Difference（対称差） または Difference（差） をクリックすると、結果が赤色で地図上に表示されます。

.. image:: /images/screenshots/1024x768/zoo-project-demo-3.png
  :scale: 50 %
  :alt: screenshot
  :align: center

更新情報
================================================================================

*	独自のリクエストを作成し、以下のページからZOOカーネルに送信することができます:
		http://localhost/zoo-demo/test_services.html

*	ZOO WPS サーバの機能一覧が必要であれば:
		http://localhost/zoo/?Request=GetCapabilities&Service=WPS
	
*	ご質問はZOOプロジェクトのメーリングリストに連絡ください:
	zoo-discuss@lists.osgeo.org
