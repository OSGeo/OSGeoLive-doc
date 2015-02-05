:Author: Hamish Bowman
:Translator: Takayuki Nuimura
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

.. image:: ../../images/project_logos/logo-GRASS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://grass.osgeo.org


********************************************************************************
GRASS GISクィックスタート
********************************************************************************

起動のしかた
================================================================================

.. author's note: Location now focusing on Spearfish as there wasn't
 enough disc space for the full NC dataset.

Live DVDでGRASSを起動するには、:menuselection:`Geospatial --> デスクトップ GIS` メニューをクリックして下さい。
"GRASSへようこそ" と書かれた起動画面にて、ロケーションにSpearfishデータセット、マップセットに "user1" を選択し,
[*Start Grass*] をクリックしてください。

.. image:: ../../images/screenshots/800x600/grass-startup.png
  :scale: 60 %
  :alt: screenshot
  :align: right

このようにすると、 `wxPythonで書かれた新しいGUI <../../grass/wxGUI.html>`_ のGRASSが起動します。

.. tip::  画面の小さい (800 x 600 解像度) ネットブックの場合は起動画面がくずれて
[*Start GRASS*] ボタンがロケーションやマップセットのリストに隠れてしまうかもしれません。
その場合はウィンドウの端をドラッグしてウィンドウを大きくしてください。
ウィンドウを画面の上にずらす必要があるかもしれません
(Altキーを押しながら左クリックでドラッグするとウィンドウを動かせます)。

ディスクにはノースカロライナ (nc_basic_spm) の簡易版データも収録されています、このクィックチュートリアルは
Spearfish データセット用に作成されているので使用データごとに読み替えて下さい。
また、使用するデータに関わらず作業には PERMANENT マップセットではなく `user` マップセットの使用をお勧めします。


マップの表示
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/screenshots/800x600/grass-layerman.png
  :scale: 50 %
  :alt: screenshot
  :align: left

PERMANENT マップセットから "`elevation.10m`" といったラスターレイヤーを加えます。
`GIS レイヤマネージャ` ウィンドウにて "+" 記号のついたツールバーボタンをクリックして下さい。
そして "*表示するマップ*" リストからマップ名を選択して、 :guilabel:`Ok` をクリックして下さい。

同様に "`roads`" ベクターレイヤーも PERMANENT マップセットから
"+" 記号のついたV字に見える線のツールバーボタンをクリックして追加して下さい。

必要なら、ラスターマップ名を右クリックして "選択したマップのズーム" を選択して下さい。

マップが表示されていますよね。


標高プロファイルの表示
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/screenshots/800x600/grass-profile.png
  :scale: 50 %
  :alt: screenshot
  :align: right

`GIS レイヤマネージャ` ウィンドウに戻って`elevation.10m`ラスターを選択するために名前をクリックして下さい。
`マップディスプレイ` ウィンドウで `マップ表示` ツールバーのズームボタンの右にある線と縞目模様のあるアイコンを見て下さい。
**Profile surface map** をクリックして選択して下さい。
`@PERMANENT` マップセットは自動的に検索されて、ファイル名で絞り込むことができます。
もし自動的にリストに表示がされない場合は、再び `elevation.10m` マップをラスターレイヤーとして選択して
:guilabel:`Ok` をクリックして下さい。
左から2番目のアイコンをクリックして、 `Map Display` キャンバスのの複数点をクリックすることでプロファイルを取ることができます.
何点かクリックしたのちプロファイルウィンドウの目玉ボタンをクリックするとプロファイルを表示することができます。
終了するには右端にあるスイッチボタンをクリックして下さい。

ランダムサーフェスの作成
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. HB comment: this quickstart is getting kinda long, maybe retire this section.

それでは新しい地図を作ってみましょう。
まずは *computational region* を :menuselection:`Settings --> Region --> Set region` の
"*Set from default region*" にてデフォルト範囲を設定し [*Run*] をクリックします。
つづいてメニューから :menuselection:`Raster --> Generate surfaces --> Fractal surface` を選択し、
新しい地図の名前を指定して、 "Optional" タブのオプションを調整し [*Run*] をクリックします。
そして *r.surf.fractal* ダイアログウィンドウの [*Close*] をクリックして閉じます。

.. image:: ../../images/screenshots/800x600/grass-fractal.png
  :scale: 50 %
  :alt: screenshot
  :align: right

色の調整
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

新しいラスターマップが標高マップとともにレイヤーリストないしは "user1" マップセットに加わっているとのが見えると思います.
`elevation.10m` レイヤの表示チェックボックスをオフにすることで表示を制御することができます.
自動的に表示されない場合は目玉をクリックすると表示がされるようになります.
色合いが好みじゃない場合は変えてみましょう。
レイヤーリストでDEMを選択状態にして、 `Raster` メニューで :menuselection:`Manage colors --> Color tables` と選択します。

"Colors" タブで "Type of color table" オプションののプルダウンリストをクリックして選択します。
"srtm" などはおすすめです。
[*Run*] ボタンをクリックして実行した後は、 *r.colors* ダイアログウィンドウを閉じてください。
自動的に色合いが更新されるはずです。

陰影図の作成
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/screenshots/800x600/grass-shadedrelief.png
  :scale: 50 %
  :alt: screenshot
  :align: right

つづいてさきほどの標高レイヤの陰影図を作成します。
まずは *computational region* が対象のラスターレイヤである PERMANENTマップセットの "`elevation.10m`" に一致しているかを確認しましょう。
そのために `GIS Layer Manager` ウィンドウのレイヤーリストに読み込まれているかを確認してから
名前を右クリックして  "Set computation region from selected map(s)" を選択してください。
レイヤー管理タブが新たな設定を表示するためテキストコンソールに変更されます。
元のレイヤーリストに戻るためには下部にある "*Map layers*" タブをクリックしてください。

`Raster` メニューで :menuselection:`Terrain analysis --> Shaded relief` (以下のメニューの半分は地形解析です) を選択すると、モジュールコントロールダイアログが表示されます。
入力データとして標高レイヤを選択してから [*Run*] を実行してください。
その後、新たに `elevation.shade` *@user1* を先ほどの `elevation.10m` と同様にレイヤーリストに追加して、
他のラスターレイヤのチェックを外してください。


集水域と水系
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
`elevation.10m` を *@PERMANENT* マップセットから選択してください。
先ほどの範囲から変更を加えた場合は、再びレイヤー名を右クリックメニューから
:menuselection:`Set computational region from selected map(s)` を選択してクリックします。


.. 注意点:: wxGUI のマップディスプレイのビューとズームは解析機能とは独立しているため影響を与えない。
いつでも :menuselection:`Settings --> Region --> Display Region` で計算範囲を確認してください。
これはラスター処理における重要な基本となります。
範囲や解像度が異なるラスターではオンザフライで自動的に現在の計算範囲にリサンプリングされます。


つぎに、 `Raster` メニューから :menuselection:`Hydrologic modeling --> Watershed analysis` を選択してください。
``r.watershed`` モジュールが開くと思います。
`elevation.10m` レイヤを入力データとして選択して、
'Input options' タブで集水域外縁の最小サイズの *threshold* を 10000 セルに設定し、
'Output options' タブで集水域オプションに "elev.basins" と入力し、
その下の水流セグメントオプションに "elev.streams" を入力し、 [*Run*] をクリックします。

`GIS Layer Manager` ウィンドウに戻り、レイヤーリストに加わったそれら2つの新しいラスターレイヤを確認し、
集水域データが表示のためにファイル名の左のボックスにチェックがしてあるのを確認してください。
水流データのチェックは外れていると思います。
つづいて、 "`elev.basins`" ラスターで右クリックをして "`Change opacity level`" を選択してください。
50% ぐらいに設定してマップディスプレイで再表示をしてください。
何かマップレイヤ (例えば先ほどの陰影図) をこのレイヤの下にドラッグして、
集水域の背後に透けて見えるのを確認してみてください。

.. image:: ../../images/screenshots/800x600/grass-watersheds.png
  :scale: 50 %
  :alt: screenshot
  :align: left

`GIS Layer Manager` ウィンドウの上段の右から2番めのアイコンをクリックして `Add a grid layer` を選択してください。
グリッドのサイズは0度3分 (D:M:S 形式) の意味の 0:03 と入力し、 "Optional" タブで、
"Draw geographic grid" にチェックを入れて :guilabel:`Ok` をクリックして再描画をしてください。
結果を見るために新しいグリッドレイヤーをレイヤーリストの最上位にドラッグする必要があるかもしれません。

スケールバーを追加するためには `Map Display` ウィンドウにて、以前使用したプロファイルツールの右にある
"Add map elements" アイコンをクリックして "Add scalebar and north arrow" を選択して :guilabel:`Ok` を選択してください。
スケールバーがマップキャンバスの左上に表示されますので、左下にドラッグしてください。
同じツールバーメニューから "Add legend" を選択して出てくるウィンドウにて `Set Options` ボタンをクリックして、
凡例内のラスターレイヤ名を設定してください。

もし `elev.basins` を選択した場合は、 `Advanced` タブにて *Thinning factor* を10に設定し、
`Optional` タブにて、 *Placement* を `5,95,2,5` に設定する必要があるかもしれません。
設定後は :guilabel:`Ok` 、そしてもう一度 :guilabel:`Ok` をクリックしてください。
新しく追加された凡例をマップキャンバスの右側にドラッグをしてみてください。

今度はこれらのフォントが少しイマイチに思えてくるかもしれません。
`GIS Layer Manager` メニューから簡単に修正することができます。
:menuselection:`Settings --> Preferences` と開き、
"Map Display" タブにて [*Set font*] ボタンをクリックしてから
適当なフォント (例えばDroidSans) を選択して [*Apply*] をクリックします。

変更結果を見るためには `Map Display` ウィンドウの目玉アイコンの隣にある再描画ボタンをクリックする必要があるかもしれません。
これでフォントは大分ましになったはずです。


ベクターモジュール
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
ここまでの作業はいくつかのラスターデータの処理機能だけしかカバーしていません。
もちろんGRASSで扱うのはラスターデータだけではありません。
ベクターデータの処理機能もラスター同様に様々な機能を持っています。
GRASSのトポロジーエンジンは多くの強力な解析を可能にしています。

.. image:: ../../images/screenshots/1024x768/grass-vectattrib.png
  :scale: 30 %
  :alt: screenshot
  :align: right

ここまでの集水域作成の作業の続きとして、次はこれらをベクターポリゴンへの変換を行います。
ラスターメニューにて、 :menuselection:`Map type conversions --> Raster to vector` を選択します。
`r.to.vect` ダイアログの入力データとして ``elev.basins @user1`` を選択してから、
出力ファイル名に ``basins_areas`` のような名前 (ベクターファイル名はSQL準拠するべきでしょう) を入力し、
フィーチャタイプを `area` にしてください。
前に作成した水流セグメントラスターの値に合わせるため、
`Attributes` タブにて、 "use raster values as category numbers" にチェックを入れてください。
そして [*Run*] をクリックしてください。
新しいベクターレイヤが表示されたら `Layer Manager` リストにて右クリックをして透過率を変更してください。
また、 ``basins_areas`` ベクターレイヤでは右クリックから `Properties` に行き `Selection` タブで
チェックを外すことで重心点を非表示にすることができます。

次にそれぞれの集水域ポリゴンに対して平均標高などの属性情報を加えます。
ベクターメニューで :menuselection:`Update attributes --> Update area attributes from raster` を選択し、
*v.rast.stats* モジュールを開きます。
ベクターポリゴンとしては ``basin_areas`` を指定し、
統計計算するラスターとしては ``elevation.10m`` を選択し、
列名のプレフィックスとしては ``ele`` を指定し [*Run*] をクリックして処理終了後にダイアログを閉じます。
`Map Display` ウィンドウの左から5番目のアイコンを使うと値を調べる事ができますので、
ベクターレイヤが `Layer List` で選択されているのを確認した後、マップキャンバスのベクターレイヤをクリックしてみてください。

``v.colors`` モジュールを使うと、平均標高の値に基いて色を設定することができます。
ベクターメニューにて :menuselection:`Manage colors --> Color tables` を選択します。
入力データとして、 ``basin_areas`` を指定し、属性列として数値型を含む ``ele_mean`` を指定します。
そして `Colors` タブで `elevation.10m` ラスターから色をコピーするよう指定します。
実行後には `Layer List` の ``basin_areas`` を右クリックして `Properties` を選択します。
`Colors` タブにて、テーブル列から色情報を取得にチェックを入れてください。
[*Apply*] をクリックすると、色の変更された `Map Display` ウィンドウが見られるはずです。

つづいて、属性テーブルとSQLビルダーについて詳しく見てみましょう。
`Layer Manager` にて、下段左から2番目のテーブルアイコンをクリックしてください。
するとデータベーステーブルのビューが開きます。
ここでは集水域データの検索するために *簡単* なデータベースクエリのみをつかいます。
``SELECT * FROM basin_areas WHERE`` と入力すると標準偏差の ``ele_stddev`` がプルダウンリストから選べますので
その右のテキストボックスに ``< 50`` を入力し、 [*Apply*] をクリックしてください。
ウィンドウ下部のステータスバーに表示されている読み込みレコード数が減り、
標準偏差の大きいレコードがテーブルから消えているのに気づくと思います。
テーブル上で右クリックして ``Select all`` を選択してください。
つづいてもう一度、テーブルで右クリックして ``Highlight selected features`` を選択してください。
沖積平野やメサが ``Map Display`` に見えるはずです。


3D 可視化
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/screenshots/1024x768/grass-nviz.png
  :scale: 30 %
  :alt: screenshot
  :align: right

:menuselection:`File --> NVIZ` メニューを選択し、3D可視化を開始しましょう。
標高ラスターとして `elevation.10m` を選択し、 [*Run*] をクリックします。
3Dディスプレイインターフェイスが読み込まれたら、ウィンドウを最大化しましょう。
次にメニューから :menuselection:`Visualize --> Raster Surfaces` を選択し、
解像度を "1" にしてから、位置と高さのスライダーを動かし視点を変えてみましょう。

衛星写真や空中写真をDEMにオーバーレイするためには、
**Raster Surfaces** コントロールで **Surface Attributes** ドロップダウンメニューをクリックして "color" を選択します。
オーバーレイ画像のために "New Map" で PERMANENTマップセットの "`spot.image`" などを選択します。
そして "*Accept*" をクリックしてメインウィンドウに戻り、ウィンドウ左上、ファイルメニューの直下の "*Draw*" ボタンをクリックしてください。


その他
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

ここでは紹介しませんでしたが新しい地図コンポーザやオブジェクト指向のグラフィカルモデリングツールにも
興味を持たれるかもしれません。
それらは `Layer Manager` ウィンドウの下段にあるアイコンから起動することができます。
より詳細な情報は `wxGUI <../../grass/wxGUI.html>`_ ヘルプページにおいてあります。

新しいGUIはPythonで書かれており、Pythonプログラミングに興味のある人手あれば多くの素晴らしいツールが利用可能です。
`Layer Manager` ウィンドウの下段には `Python shell` タブがあり、
``help(grass.core)`` と入力すればGIS Pyhthonライブラリで利用可能な多くの機能のリストを見ることができます。
コアとなるGIS機能だけでなく、 `array` (NumPy)、 `db` (database)、 `raster`、 そして `vector` のライブラリが利用可能です。
GRASSのCライブラリに直接アクセスできる `Pythons CTypes` といった高度な機能も Python プログラマーに用意されています。


終了のしかたとコマンドライン
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

終了する時は、GRASS GUI の :menuselection:`File --> Exit GUI` から終了してください。
GRASS ターミナルセッションを閉じる前に、 "``g.manual --help``" と入力してモジュールオプションのリストを確認してみてください。
GRASSコマンドラインにおいてこそGISの真の力を発揮することができます。
GRASSでは全てのコマンドをスクリプトにて結びつけることができ、大量のバルク処理を行うことができます。
Bash や Python などの有名なスクリプト言語が利用可能で、
いずれの言語でもスクリプト処理を簡単にするための様々な便利な機能を使うことができます。
強力なパーサー、GUI、ヘルプページのテンプレートなどのツールを用いることで、
新しい GRASS モジュールを5分程度で作成することができます。

"``g.manual -i``" でヘルプページモジュールをWebブラウザで開くことができます。
ブラウザを閉じた後は "exit" とタイプしてGRASSターミナルを閉じてGIS環境を終了してください。

参照情報
================================================================================
* GRASS ホームページは `http://grass.osgeo.org <http://grass.osgeo.org>`_
* GRASS Wiki ヘルプサイトは `http://grasswiki.osgeo.org/wiki/ <http://grasswiki.osgeo.org/wiki/>`_
* チュートリアルや概要は `こちら <http://grasswiki.osgeo.org/wiki/GRASS_Help#Getting_Started>`_.
* GUIメニューと`GRASS モジュール概要 <http://grass.osgeo.org/gdp/grassmanuals/grass64_module_list.pdf>`_. (`HTML 版 <http://grass.osgeo.org/grass70/manuals/full_index.html>`_)
* もし 400 個の GRASS モジュールでも物足りない場合は第三者により開発されたアドオンもあります
  `http://grass.osgeo.org/grass70/manuals/addons/ <http://grass.osgeo.org/grass70/manuals/addons/>`_
