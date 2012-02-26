:Author: OSGeo-Live
:Author: Cameron Shorter
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _virtualbox-quickstart-en:
 
********************************************************************************
Virtual Box 向け OSGeo-Live クイックスタート
********************************************************************************

ここでは、 OSGeo-Live DVD や ISO を `VirtualBox <http://www.virtualbox.org/>`_ の仮想マシンで動作させる方法について記載します。

VirtualBox はオープンソースの仮想マシン環境です。 OSGeo-Live の多くの開発者、テスターが使用しています。

動作環境
--------------------------------------------------------------------------------

* RAM: 1 GB - ほかにもアプリケーションを動作させたい場合は、2 GB あるとよいでしょう
* HDD 容量:

 * ISO イメージから動作する場合 |osgeo-live-hdspace| が必要になります
 * ISO イメージからインストールするときには 17 GB が必要になります

仮想環境の作成
--------------------------------------------------------------------------------
`Virtual Box <http://www.virtualbox.org/>`_ をダウンロードしてインストールしてください。Linuxでは以下のようにします。

  ``apt-get install virtualbox-ose``

Virtualboxを開きます。

  .. image:: ../../images/screenshots/800x600/virtualbox.png
    :scale: 70 %

新しい仮想環境作成のため、 :guilabel:`New` を選択します。

  .. image:: ../../images/screenshots/800x600/virtualbox_create_vm.png
    :scale: 70 %

:guilabel:`Next` で次に進みます。

  .. image:: ../../images/screenshots/800x600/virtualbox_select_name.png
    :scale: 70 %

イメージに名前を付け、 "Linux", "Ubuntu" を選択します。

  .. image:: ../../images/screenshots/800x600/virtualbox_memory.png
    :scale: 70 %

ベースメモリを 768 MB にします。Java ベースのアプリケーションを使用するには 1 GB 以上にするとよいでしょう。

  .. image:: ../../images/screenshots/800x600/virtualbox_no_hard_disk.png
    :scale: 70 %

"Boot Hard Disk" のチェックを外すと、仮想マシンを常に DVD のイメージから起動する設定となります。

より広い画面を使ったり、画面の解像度変更を保存する、ツールの設定保存など、仮想環境内に情報を保存したい場合には
ハードディスクから起動するようにしてください。設定の方法は後述します。

  .. image:: ../../images/screenshots/800x600/virtualbox_warning_no_hard_disk.png
    :scale: 70 %

:guilabel:`Continue` をクリックしてください。

  .. image:: ../../images/screenshots/800x600/virtualbox_final_check.png
    :scale: 70 %

:guilabel:`Finish` をクリックしてください。

  .. image:: ../../images/screenshots/800x600/virtualbox_select_settings.png
    :scale: 70 %

ここまでで仮想マシンのイメージは作成できています。ここで OSGeo-Live DVD を CD ドライブに挿入してください。

"osgeo-live" のイメージを右クリックして :guilabel:`Settings` を選択してください。

  .. image:: ../../images/screenshots/800x600/virtualbox_set_cd.png
    :scale: 70 %

"Storage" から CD/DVD Device を選択します

  .. image:: ../../images/screenshots/800x600/virtualbox_add_dvd.png
    :scale: 70 %

OSGeo-Live イメージを選択します

  .. image:: ../../images/screenshots/800x600/virtualbox_start_vm.png
    :scale: 70 %

以上で :doc:`osgeolive_quickstart` と同様に仮想マシンから使用できます。

持続的な仮想マシンのインストール
--------------------------------------------------------------------------------
OSGeo-Live DVD を頻繁に使用する際には、持続的な仮想マシンとしてインストールし、さらに、 :doc:`osgeolive_install_quickstart` のように仮想環境の HDD にインストールして使用することをお勧めします。

画面サイズの拡大
--------------------------------------------------------------------------------
より高解像度に対応した仮想起動ツール、ゲストOSとホストOS間でのコピー、
グラフィックアクセラレーションなど多くの機能を追加できます

コンピューターをインターネットに接続した状態で次のようにします。

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_menu.png
    :scale: 70 %

synaptic package manager を起動します。

パスワードは "user" としてください。

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_select_tools.png
    :scale: 70 %

インストールするため、"virtualbox-ose-guest-utils" をチェックしてください。

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_apply.png
    :scale: 70 %

変更を反映してください。

仮想マシンを再起動すると画面サイズはホストマシンのディスプレイと近い物になっています。
これは

Select: :menuselection:`Applications --> Settings --> Xfce 4 Settings Manager --> Display`

から変更できます。

参照:
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`

