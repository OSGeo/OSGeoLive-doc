
:Author: OSGeo-Live
:Author: Cameron Shorter
:Version: osgeo-live5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _usb-quickstart-ja:
 
********************************************************************************
OSGeo-Live を起動できる ブータブル USB flash ドライブの作成
********************************************************************************

ここでは、OSGeo-Live のブータブル（起動できる） USB flash ドライブを作る方法について記載します。flash ドライブからの起動は DVD から起動するよりも速く動作し、flash ドライブではセッションを超えてデータを保存することもできます。

巧く USB ドライブを作成するには、たくさんのクセやコツがあることがわかってきました。見つけた物はドキュメントに記載していますが、もっと多くのコツや問題点がわかってきています。最近の物については http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB を参照してください。

用意するもの
--------------------------------------------------------------------------------

* 4 GB USB flash ドライブ  osgeo-live-mini（WindowsとMac向けのインストーラーを含まない） を使用する場合 
* 8GB USB flash ドライブ  osgeo-live（WindowsとMac向けのインストーラーを含む） を使用する場合 
* OSGeo-Live DVD か ISO イメージ （ http://live.osgeo.org/en/download.html からダウンロードできます）


Ubuntu 環境でブータブル USB ドライブを作成する方法
--------------------------------------------------------------------------------

以下は USB を作成するのに必要な手順を書いた物です。この手順はそのまま Xubuntu や OSGeo-Live に使用できます。

.. ::
   USB ディスクを作成する PC で動作する Ubuntu は、USB で起動した Xubuntu と同じか、より新しいバージョンが必要となります。 OSGeo-Live 5.0/5.5 を USB から起動したい場合には Ubuntu 11.04 より新しいバージョンが動作していることが必要です。

osgeo-live か osgeo-live-mini をコンピューターにダウンロードしてください。


USB flash ドライブをコンピューターに接続してください。

  .. image:: ../../images/screenshots/800x600/usb_select.png
    :scale: 70 %

メニューから :menuselection:`System --> Administration --> Startup Disk Creator` を選択するか、デスクトップから  `Startup Disk Creator` を検索してください。

  .. image:: ../../images/screenshots/800x600/usb_set_params.png
    :scale: 70 %

osgeo-live か osgeo-live-mini の ISO イメージを選択します。

USB flash ドライブを選択します。

:guilabel:`Make Startup Disk` を選択します。

  .. image:: ../../images/screenshots/800x600/usb_installing.png
    :scale: 70 %

20分ほど待てば USB flash ドライブが作成されます。

Windows 環境でブータブル USB flash ドライブを作成する方法
--------------------------------------------------------------------------------

USB ドライブをコンピューターに接続します。

Universal USB Installer を http://www.pendrivelinux.com/universal-usb-installer-easy-as-1-2-3/ からダウンロードして実行してください。

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_licence.gif

ライセンスを読み、承認してください。

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_selection.gif

ステップ1: ディストリビューション: osgeo-live を使用するには xubuntu i386 を選択してください。OSGeo-Live 5.5 の場合は xubuntu 11.04 Desktop i386 を選択してください。

ステップ 2: osge-live の最新版をローカルにダウンロードしておきます。後で、ISO ファイルのパスを入力する必要があります。 :guilabel:`Browse` ボタンをおして xubuntu の ISO ファイルを指定してください。

ステップ 3: USB フラッシュドライブを選択してください。

ステップ 4: セッションを超えてデータを保存する場合は Persistence を選択してください。

:guilabel:`Create` をクリックしてください。

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_installing.gif

20分ほどで OSGeo-Live の USB flash ドライブが作成されます。

別の OS から起動可能な USB ドライブを作成する方法
--------------------------------------------------------------------------------

ステップ 1: UNetbootin を http://unetbootin.sourceforge.net/ からダウンロードしてインストールしてください。

ステップ 2: USB flash ドライブをコンピューターに接続します。

ステップ 3: UNetbootin を起動して、ディスクイメージを選択します。USB flash ドライブは自動的で選択されます。

ステップ 4: OSGeoLive の ISO ファイルを選択してください。

:guilabel:`OK` をクリックしてください

  .. image:: ../../images/screenshots/1024x768/unetbootin_live_osgeo.png

BIOS の起動順序設定
--------------------------------------------------------------------------------

多くのコンピューターではデフォルトでは USB ドライブから起動できるようにはなっていません。

これを修正するには、コンピューターを起動して、BIOS がすぐに表示するキーを押します。通常 <Delete>　キーや、いずれかのファンクションキー (F8やF12など）が割り当てられています。

USB デバイスから起動できるように選択してください。

注記: コンピューターによっては、起動ドライブとして選択するには、あらかじめコンピューターに USB ドライブを接続しておく必要があります。また、USB ドライブはハードディスクドライブとの対比でリムーバブルデバイス (removable devices) として表示されていることがあります。


起動:
--------------------------------------------------------------------------------

:doc:`osgeolive_quickstart` をご参照下さい。


既知の問題点:
--------------------------------------------------------------------------------

* Mac では USB flash ドライブから起動できません。Live DVD をご利用ください。

参照:
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`virtualbox_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * 問題がある場合には、 http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB までレポートをお願いいたします。E-mail での議論は http://lists.osgeo.org/mailman/listinfo/live-demo までお願いいたします。
 * USB 起動のより高度なオプションは http://pendrivelinux.com をご覧下さい。
