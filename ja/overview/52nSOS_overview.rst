:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Version: osgeo-live4.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _52nSOS-overview:

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://52north.org/sos


52°North SOS
=============

ウェブサービス
~~~~~~~~~~~

52°North `Sensor Observation Service (SOS) <../standards/sos_overview.html>`_ 
は、現地もしくは遠隔センサがリアルタイムに蓄積したデータの取得をサポートします。
センサとしては人工衛星に搭載したカメラから、川の水量メーターまで様々な物を取り扱うことができます。
 
.. image:: ../../images/screenshots/1024x768/52n_sos_test_client.png
  :scale: 100 %
  :alt: screenshot of sos test client
  :align: right

機能
--------

52°North SOS (version 3.1.1) では SOS 仕様のうち最新のスキーマバージョン (1.0.0) より、
コア、トランザクション、一部の拡張プロファイルを実装しています。

**コア SOS 操作**:

* GetCapabilities.によるサービス詳細のリクエスト
* GetObservation による Observations & Measurements (O&M) で記述したセンサ測定値のリクエスト
* DescribeSensor によるSensor Model Language (SensorML) で記述したセンサメタ情報のリクエスト

**トランザクションでの SOS 操作**:

* RegisterSensor による新しいセンサの登録
* InsertObservation による登録したセンサへの新しい観測対象の追加

**その他の SOS 操作**:

* GetResult によるセンサデータの定期的なリクエスト
* GetObservationById による個々の観測値の再取得
* GetFeatureOfInterest によるGMLで記述したセンサの観測対象情報のリクエスト
* GetFeatureOfInterestTime により、センサのデータが今の時点で利用可能かの調査

**クライアント**:

* ブラウザベースのクライアントでサポートする全ての操作の、テストXMLクエリを提供しています

準拠している標準規格
---------------------

* `OGC Sensor Observation Service (SOS) <http://www.ogcnetwork.net/SOS>`_

詳細
-------

* **ウェブサイト:** http://52north.org/communities/sensorweb/sos

* **ライセンス:** GNU GPL v2.0

* **バージョン:** SOS 3.2.0

* **対応プラットフォーム:** Windows, Linux, Mac

* **API:** Java

* **商用サポート:** http://52north.org/

* **コミュニティサポート:** http://sensorweb.forum.52north.org/

* **コミュニティウェブサイト:** http://52north.org/communities/sensorweb/

クイックスタート
----------

* `Quickstart documentation <../quickstart/52nSOS_quickstart.html>`_

