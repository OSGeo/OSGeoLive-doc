:Author: Jan Drewnak (j.drewnak@52north.org)
:Version: osgeo-live4.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _52nWSS-overview-ja:

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://52north.org/security


52°North WSS
================================================================================

地理情報Webセキュリティサーバ
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

52North Web Security Service (WSS) では地理情報サービスやそのリソースへの
ロールベース認証にでのアクセス制限を簡単に実現できます。

52North WSS を用いると以下のようなアクセス方針も設定可能です:

* 外部のユーザーはGetMapでのレイヤAとBへのWMSアクセスのみ許可。

もしくは

* BBOXで指定した範囲内のみで GetFeatureInfo を可能とする*

52North WSS は Apache Tomcat サーブレットのコンテナとして動作する Java アプリケーションです。
多数の OGC ウェブサービスのプロキシとして動作し、全てのリクエストを受け付けて、方針に即して運用します。
そのため、既に動作しているサービスに手を加える必要はありません。方針とユーザーは一般的な管理インターフェースで設定する
XML の設定ファイルで設定を行います。

.. image:: ../../images/screenshots/1024x768/52n_wss_mgmt.png
  :scale: 70 %
  :alt: Screenshot of WSS Management UI
  :align: right

主な機能
--------------------------------------------------------------------------------

**権限付与**

現在サポートしている保護は以下のような物を含みます

* WMS: レイヤ、地理的範囲
* WFS: 地物の種類、地物とその属性、地理的範囲
* SOS: 提供、手順、地理的範囲、現在値
* WPS: プロセス


**認証**

52North WSS はユーザーによって異なる認証方式を選択できます。

* HTTPベーシック認証
* SAMLプロトコルによる認証
* その他

詳細
--------------------------------------------------------------------------------

* **ウェブサイト:** http://52north.org/communities/security

* **ライセンス:** GNU GPL v2.0

* **バージョン:** WSS 2.2.0

* **対応プラットフォーム:** Windows, Linux, Mac

* **API:** Java

* **コミュニティサポート:** http://52north.org/


クイックスタート
--------------------------------------------------------------------------------

* `Quickstart documentation <../quickstart/52nWSS_quickstart.html>`_

