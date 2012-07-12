:Author: Howard Butler
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-libLAS.png
  :alt: project logo
  :align: right
  :target: http://liblas.org/

libLAS
================================================================================

LiDAR データアクセス
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

libLAS は一般的な `LAS` `LiDAR`_ フォーマットを読み書きするための C/C++ ライブラリです。
`ASPRS LAS format`_ は LiDAR センサや LiDAR 処理ソフトウェアがデータの保存、交換，アーカイブに使用している
シーケンシャルなバイナリフォーマットです。

.. image:: ../../images/screenshots/800x600/liblas.jpg
  :alt: LiDAR Acquisition
  :align: right
  :scale: 80 %
  
LiDAR （ライダー、Light Detection and Ranging） はレーダーと似た高精度な距離検出の一種で、電磁放射線の代わりにレーザー光線を使用するものです。
LiDAR システムは "point cloud" データのように、センサからの距離等を反射波を用いて計測した結果を概念化したデータを出力します。
一般的な point cloud データの保存に使用されているのが ASPRS LAS フォーマットです。

主な機能
--------------------------------------------------------------------------------

* LAS データ読み書きと処理に使用する C/C++/Python API
* `LAStools`_ を基にした LAS データを扱うための `Command line utilities`_ 
* `GDAL <http://gdal.org>`_ を用いた投影法の変換

詳細
--------------------------------------------------------------------------------
 
**ウェブサイト:** http://liblas.org

**ライセンス:** BSD

**バージョン:** 1.7.0

**対応プラットフォーム:** Cross Platform C++ -- Mac OS X, Windows (`OSGeo4W`), Linux

**API:** C, C++, Python

**サポート:** `Communication and Support <http://liblas.org/community.html>`_

クイックスタート
--------------------------------------------------------------------------------

* :doc:`クイックスタート <../quickstart/liblas_quickstart>`

.. _`LIDAR`: http://en.wikipedia.org/wiki/LIDAR
.. _`LAStools`: http://www.cs.unc.edu/~isenburg/lastools/
.. _`LAS Format`: http://www.lasformat.org/
.. _`ASPRS Standards Committee`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`ASPRS LAS format`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`Command line utilities`: http://liblas.org/utilities/index.html
.. _`OSGeo4W`: http://trac.osgeo.org/osgeo4w/
.. _`Wikipedia`: http://en.wikipedia.org/wiki/LIDAR
