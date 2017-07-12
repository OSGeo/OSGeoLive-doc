:Author: OSGeo-Live
:Author: Micha Silver
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
仮想マシン内での OSGeo-Live 起動クイックスタート
********************************************************************************

ここでは、 OSGeo-Live を VirtualBox の仮想マシン内で動作させる1つの方法について記載します。他の方法については、以下の"参照"の章のリンクにしたがってください。

仮想マシンの利点
--------------------------------------------------------------------------------

* VM の反応速度は、DVD のものより大分速く、ホストマシンに直接インストールした場合に匹敵します。

* 全ての設定の変更、ソフトウェアのアップデート、保存ファイルは、"通常"のコンピュータと同様に、永続化されます。このため、

 * システムのカスタマイズとアップデートが可能です
 * VM 内に作業状態を保存することが可能です
 * 追加のソフトウェアのインストールが可能です
 
* インストールした仮想マシンのバックアップが可能です。

動作環境
--------------------------------------------------------------------------------

* RAM: 最低 2 GB。Lubuntu システムは 1 GB の RAM で動作しますが、ホストシステムのために、少なくとも同じサイズのメモリが必要となります。このため、合計 2 GB がスムーズな操作のために必要となります。
* ハードディスクの空き容量: 仮想ディスクファイル (vmdk): `live.osgeo.org <http://live.osgeo.org/en/download.html>`_ は、解凍後、だいたい 10 GB となります。また、作業のためには、仮想マシン内でさらに容量が必要となります。このため、20 GB が推奨となります。
* CPU: どんな CPU でも構いませんが、"仮想化テクノロジー" をサポートしたものが速くなります。 `こちら <http://www.intel.com/support/processors/sb/cs-030729.htm>`_ から、お手持ちのコンピュータの CPU を確認することも可能です。

この 4〜5 年で製造されたマシンのほとんどは、この要件を満たしています。

手順
--------------------------------------------------------------------------------

**ダウンロード**

`Virtual Box <http://www.virtualbox.org/>`_ をダウンロードしてインストールしてください。Windows ではインストーラを実行します。もしくは、Ubuntu のような Linux システムでは以下のようにします。

  ``apt-get install virtualbox-ose``

さらに、OSGeo の仮想ディスクファイル (vmdk) を `live.osgeo.org <http://live.osgeo.org/en/download.html>`_ からダウンロードします。
"Download virtual machine" ボタンをクリックします。それから、ダウンロードしたファイルを解凍します (`7zip <http://www.7-zip.org>`_ を使用します)。


**仮想マシンの作成**

VirtualBox アプリケーションを起動し、新しい VM を作成するために New ボタンをクリックし、Next をクリックします。

  .. image:: /images/screenshots/800x600/virtualbox.png
         :scale: 50 %

イメージに OSGeo-Live のような名前を付け、"Operating System" に Linux、"Version" に Ubuntu を選択します。

  .. image:: /images/screenshots/800x600/virtualbox_select_name.png
         :scale: 70 %

次の画面でメモリを 1024 MB に設定します (ホストコンピュータが 4GB 以上の場合はより大きな値を設定できます)。

  .. image:: /images/screenshots/800x600/vmdk_memory.png
              :scale: 65 %

続けて、次の画面で "Use existing hard disk" を選択します。フォルダアイコンのボタンをクリックし、保存した osgeo-live-vm-6.0.vmdk ファイルを選択し、Next と Create を押下します。

  .. image:: /images/screenshots/800x600/vmdk_disk.png
                   :scale: 65 %

VM が作成されたら、Settings ボタンをクリックします。"General" セクションで Advanced タブを選択し、Mini toolbar で "Show at top of screen" をクリックして選択します。

  .. image:: /images/screenshots/800x600/vmdk_general_advanced.png
                   :scale: 65 %

"Display" セクションで、ビデオメモリを 32 か 64 MB に増やします。

  .. image:: /images/screenshots/800x600/vmdk_display.png
                   :scale: 65 %

さらに、"Shared Folders" セクションに移動し、"Add folder" (右側の緑の "+" アイコン) をクリックし、VM 内部で共有したいホストコンピュータのディレクトリを指定します。

 .. image:: /images/screenshots/800x600/vmdk_shared_folders.png
                      :scale: 65 %

"Folder path" と "Folder name" が決まったら、OK をクリックし、再度 OK をクリックして、設定ウィンドウを終了して閉じます。

**仮想マシンの起動**

Start (緑の矢印) ボタンをクリックして、VM を起動しましょう。

OSGeo システムが起動したら、VirtualBox の "Guest Additions" を追加して、ビデオパフォーマンスを向上させたり、上記で設定した共有フォルダを有効化することが可能です。Guest Adition のインストーラは、Oracle の VirtualBox アプリケーションとともに、ISOファイルとして供給され、自由なオープンソースソフトウェアとしてライセンスされていません。この ISO は VM 内で CD としてマウントされ、インストーラはそこから実行します。以下のようにして実行します:

VirtualBox ウィンドウ内で、 :menuselection:`Devices` メニューを開き、 :menuselection:`Install Guest Additions` をクリックします。これにより、OSGeo Live VM 内で、Guest Additions が CD ドライブとしてマウントされます。

  .. image:: /images/screenshots/800x600/vmdk_guest_additions.jpg
                        :scale: 80 %

CD フォルダが表示されたら、ターミナルを開き、以下のコマンドを実行します:

``user@osgeolive:~$ sudo apt-get update``

``user@osgeolive:~$ sudo apt-get install build-essential linux-headers-generic``

``user@osgeolive:~$ cd /media/VBOXADDITIONS_4.1.18_78361/``

``user@osgeolive:/media/VBOXADDITIONS_4.1.18_78361$ sudo ./VBoxLinuxAdditions.run``

しばらく待つと処理が完了します。VM を再起動すると、フルスクリーンモードとなり、共有フォルダがマウントされます。上記の例では、VM の設定で共有フォルダパスをホストシステム上の "GIS" という名前にしています。VM 内でマウントする場合は、ターミナルウィンドウを開き、以下を実行します:

``user@osgeolive:~$ mkdir GIS``

``user@osgeolive:~$ sudo mount -t vboxsf -o uid=user,rw GIS /home/user/GIS``

これで、ホストマシンで選択されたフォルダが、user のホームディレクトリ内の "GIS" フォルダでも利用可能になりました。

参照:
--------------------------------------------------------------------------------
 * OSGeo wiki ページ:
        `Other ways to create a Virtual Machine <http://wiki.osgeo.org/wiki/Live_GIS_Virtual_Machine>`_

 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`

