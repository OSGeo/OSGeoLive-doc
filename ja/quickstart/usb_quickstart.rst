:Author: OSGeo-Live
:Author: Alex Mandel, Cameron Shorter
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live7.9
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
OSGeo-Live を起動できる ブータブル USB flash ドライブの作成
********************************************************************************

ここでは、OSGeo-Live のブータブル（起動できる） USB flash ドライブを作る方法について記載します。flash ドライブからの起動は DVD から起動するよりも速く動作し、flash ドライブではセッションを超えてデータを保存することもできます。

巧く USB ドライブを作成するには、たくさんのクセやコツがあることがわかってきました。見つけた物はドキュメントに記載していますが、もっと多くのコツや問題点がわかってきています。最近の物については http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB を参照してください。

用意するもの
--------------------------------------------------------------------------------

* USB flash ドライブ (最低 4 GB、推奨 8 GB 以上)。
* OSGeo-Live ISO イメージ (http://live.osgeo.org/en/download.html からダウンロード) か DVD から変換したもの。

* 4 GB USB flash ドライブ用には、osgeo-live-mini ISO を使用 (WindowsとMac向けのインストーラーを含まない)、永続性は非サポート
* 8 GB 以上の USB flash ドライブ用には、osgeo-live-mini ISO か osgeo-live ISO のどちらかを使用 (WindowsとMac向けのインストーラーを含む)、永続性をサポートする場合は 8 GB 以上を推奨。


Ubuntu 環境でブータブル USB ドライブを作成する方法
--------------------------------------------------------------------------------

(以下は USB を作成するのに必要な手順を書いた物です。この手順はそのまま Ubuntu や OSGeo-Live のような Ubuntu 派生物に使用できます。

.. note::
   USB ディスクを作成する PC で動作する Ubuntu は、USB で起動した Lubuntu と同じか、より新しいバージョンが必要となります。 OSGeo-Live 8.0 を USB から起動したい場合には Ubuntu 14.04 より新しいバージョンが動作していることが必要です。

`ダウンロード <http://live.osgeo.org/en/download.html>`_ osgeo-live か osgeo-live-mini をコンピューターにダウンロードしてください。

Boot your computer into a recent Ubuntu/Xbuntu distribution. You can do this by running from an OSGeo-Live DVD, as explained in :doc:`osgeolive_quickstart`.

USB flash ドライブをコンピューターに接続してください。

  .. image:: /images/screenshots/800x600/usb_select.png
    :scale: 70 %

メニューから :menuselection:`System Tools --> Startup Disk Creator` を選択するか、デスクトップから  `Startup Disk Creator` を検索してください。

  .. image:: /images/screenshots/800x600/usb_set_params.png
    :scale: 70 %

osgeo-live か osgeo-live-mini の ISO イメージを選択します。

USB flash ドライブを選択します。If you have extra room you might adjust the slider to create persistent storage space on the USB drive (recommended). In order for this option to be available you will need an 8+ GB USB flash drive.

:guilabel:`Make Startup Disk` を選択します。

  .. image:: /images/screenshots/800x600/usb_installing.png
    :scale: 70 %

20分ほど待てば USB flash ドライブが作成されます。


Booting from the USB drive:
--------------------------------------------------------------------------------

#. Start with the computer off.
#. Insert the USB drive into an open USB port.
#. Power on the Machine and select to boot from USB:

   * Most computers are not set to boot from a USB drive by default.
   * When booting, look for a message indicting a Boot Menu (most commonly you press F12)
   * If your computer does not have a boot menu, then boot into your system BIOS. The button to enter BIOS varies by brand and model of computer. If you can't figure out yours try this website that lists many BIOS hotkeys. http://www.mydigitallife.info/comprehensive-list-of-how-key-to-press-to-access-bios-for-various-oem-and-computer-systems/

#. Select to boot from the USB device.

   * Note, that for some computers you will need to have the USB drive inserted into the computer in order to select it.
   * Note also, the USB drive is often listed under hard drives rather than removable devices. 
   * This `Video <http://www.youtube.com/watch?v=eQBdVO-n6Mg>`_ demonstrates booting from USB.

起動:
--------------------------------------------------------------------------------

:doc:`osgeolive_quickstart` をご参照下さい。

参照:
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`virtualization_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * 他の USB 作成方法や最新の Tips はこちらまでお願いします: `wiki <http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB>`_
 * 質問は E-mail リストまでお願いします: http://lists.osgeo.org/mailman/listinfo/live-demo
