:Author: Trevor Wekel
:Version: osgeo-live5.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-MapGuideOS.png
  :scale: 100 %
  :alt: project logo
  :align: right 

MapGuide クイックスタート
================================================================================

このガイドでは次のことが説明されています:

* MapGuideの起動と実行
* Maestro を使用した空間データのスタイル設定

.. comment: ? * 64-bit Ubuntu についての追加記載

MapGuideの起動と実行
--------------------------------------------------------------------------------

.. comment: 1. Go to Desktop->Server, click icon Start MapGuide. This will start both MapGuide server and MapGuide Web server

.. comment: .. image:: ../../images/screenshots/1024x768/mapguide_desktopIcons.png
.. comment:   :scale: 50 %
.. comment:   :alt: mapguide desktop icons
.. comment:   :align: center 

1. MapGuide の手動インストール

.. note:: DVDスペースの節約のため、MapGuide は現在インストールされていません。

.. commented out as manual install doesn't currently work: To install
　ターミナルを開き、 ``cd gisvm/bin; sudo ./install_mapguide.sh`` を実行します。

2. サンプルアプリケーションを表示するには http://localhost:8008/mapguide/phpviewersample/ajaxtiledviewersample.php をブラウザで開きます。 

.. image:: ../../images/screenshots/1024x768/mapguide_viewer.png
  :scale: 50 %
  :alt: mapguide desktop icons
  :align: center

MapGuide Maestro
--------------------------------------------------------------------------------

1. Maestro を開始するには, Desktop->Server から, MapGuide Maestro アイコンをクリックすると, 次のスクリーンショットに示す Maestro ログイン画面が表示されます。 http://localhost:8008/mapguide/mapagent/mapagent.fcgi でユーザーネーム "Administrator" パスワード "admin" としてログインします。

.. image:: ../../images/screenshots/1024x768/mapguide_maestroLogin.png
  :scale: 50%
  :alt: screenshot
  :align: center
 
2. OKをクリックすると、次のスクリーンショットに示される Maestro メイン画面が表示されます。

.. image:: ../../images/screenshots/1024x768/mapguide_maestroMain.png
   :scale: 50%
   :alt: mapguide maestro main GUI
   :align: center

3. 左パネルのツリービューを開き、Samples->Sheboygan->Layersまで行き、Buildings をダブルクリックすると、次のスクリーンショットに示される Buildings のレイヤ編集画面が右のパネルに表示されます。:

.. image:: ../../images/screenshots/1024x768/mapguide_maestroLayerFeatures.png
   :scale: 50%
   :alt: mapguide maestro layer features
   :align: center

4. レイヤスタイルを表示するには右のパネルを下にスクロールします。 Featurestyle 欄で、次のスクリーンショットに示されるようにセルをクリックしスタイルエディタを表示させます。: 

.. image:: ../../images/screenshots/1024x768/mapguide_maestroLayerStyle.png
   :scale: 50%
   :alt: mapguide maestro layer stype panel
   :align: center

.. image:: ../../images/screenshots/1024x768/mapguide_maestroStyleEditor.png
   :scale: 50%
   :alt: mapguide maestro color chooser
   :align: center

5. Foreground Color ドロップダウンリストで、グリーンを選択し、OKをクリックしてスタイルエディタを閉じます。Maestroメイン画面で、ディスクアイコンをクリックして保存します。

.. image:: ../../images/screenshots/1024x768/mapguide_maestroSaveIcon.png
   :scale: 50%
   :alt: mapguide maestro Save icon 
   :align: center

6. プレビューを変更するため、ブラウザでアドレス http://localhost:8008/mapguide/phpviewersample/ajaxtiledviewersample.php を開くか Maestro メイン画面からプレビューアイコンをクリックすると、 上記のアドレスがブラウザで表示されます。マップビューにおいて、建物レベルまでズームすると, 建物の色がで表示されます。

.. image:: ../../images/screenshots/1024x768/mapguide_buildingColorBeforeChanging.png
   :scale: 50%
   :alt: Building color is grey 
   :align: center

.. image:: ../../images/screenshots/1024x768/mapguide_buildingColorAfterChanging.png
   :scale: 50%
   :alt: Building color is green 
   :align: center

