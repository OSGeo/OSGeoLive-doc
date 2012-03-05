:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Version: osgeo-live4.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _qgis-quickstart:
 
.. image:: ../../images/project_logos/logo-QGIS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.qgis.org

********************************************************************************
QGIS クイックスタート 
********************************************************************************

Quantum GIS (QGIS) は視覚化、管理、編集、データ解析、印刷できる地図作製に使える
ユーザーフレンドリーなデスクトップ GIS クライアントです。


このクイックスタートでは以下の手順を記載しています:

  * 既存の QGIS プロジェクトを更新する
  * 単純なベクタレイヤをもつ新規の QGIS プロジェクトを作成する

QGIS プロジェクトを編集する
================================================================================

#. メニューから :menuselection:`Desktop --> Desktop GIS --> Quantum GIS` をクリックしてください

#. メニューバーから :menuselection:`File --> Open Project...` を選択してください

#. ファイル :file:`QGIS-NaturalEarth-Example.qgs` を選択し、 :guilabel:`Open` をクリックしてください

   * 世界地図が表示されるはずです

#. レイヤーツリーから **10m_populated_places_simple** を選択してください

   * 人口の多い地域が以下のように表示されます:

     .. image:: ../../images/screenshots/1024x768/qgis.png
        :scale: 50 %

#. レイヤーツリーで **10m_rivers_lake_centerlines** をダブルクリックしてください

#. アウトラインオプションで異なる青のトーンに変更してください

#. :guilabel:`OK` を押してください

   * 川が選択した色で表示されます


新規の QGIS プロジェクトを作成する
================================================================================

#. メニューから :menuselection:`File --> New Project` を選択してください

#. :menuselection:`Layer --> Add Vector Layer...` をクリックしてください

#. データセット :file:`/home/user/data/natural_earth/10m_admin_0_countries.shp` を選択してください

#. :guilabel:`Open` を押してください

   * 世界の国が表示されます


参照情報
================================================================================

より進んだ QGIS のチュートリアルを `OSGeo-Live QGIS tutorials`_ に集めてあります。

QGIS について詳細の開始ページは QGIS ホームページの `Documentation page`_ になります。

OSGeo-Live については `A Gentle Introduction to GIS`_ と `QGIS User Guide`_ をご覧下さい

.. _`OSGeo-Live QGIS tutorials`: ../../qgis/tutorials/
.. _`Documentation page`: http://www.qgis.org/en/documentation.html
.. _`A Gentle Introduction to GIS`: ../../qgis/qgis-1.0.0_a-gentle-gis-introduction_en.pdf
.. _`QGIS User Guide`: ../../qgis/qgis-1.7.0_user_guide_en.pdf
