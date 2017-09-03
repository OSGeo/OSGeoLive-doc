:Author: Hamish Bowman
:Reviewer: Markus Neteler
:Version: osgeo-live8.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
:Copyright: 2011-2015 by The OSGeo Foundation

.. image:: /images/project_logos/logo-GRASS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://grass.osgeo.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


********************************************************************************
GRASS GIS 7 クィックスタート
********************************************************************************

GRASS GIS は地理空間データの可視化、管理、解析、
編集に活用できる強力なGISです。

.. contents:: Contents


起動のしかた
================================================================================

.. author's note: Update in osgeo-live8.5: light NC dataset is included, tutorial
 rewritten

Live DVDでGRASSを起動するには、
:menuselection:`Geospatial --> デスクトップ GIS` メニューをクリックして下さい。
"GRASSへようこそ" と書かれた起動画面にて、ロケーションに North Carolina データセット、
マップセットに "user1" を選択し、 [*Start Grass*] をクリックしてください。

.. image:: /images/projects/grass/grass-startup.png
  :scale: 50 %
  :alt: screenshot
  :align: right

このようにすると、 `wxPythonで書かれたGUI <../../grass/wxGUI.html>`_ のGRASSが起動します。

.. tip::  画面の小さい (800 x 600 解像度) ネットブックの場合は
 起動画面がくずれて [*Start GRASS*] ボタンが
 ロケーションやマップセットのリストに隠れてしまうかもしれません。
 その場合はウィンドウの端をドラッグして
 ウィンドウを大きくしてください。
 ウィンドウを画面の上にずらす必要があるかもしれません
 (Altキーを押しながら左クリックでドラッグするとウィンドウを動かせます)。

.. 使用するデータに関わらず
 作業には PERMANENT マップセットではなく
 `user` マップセットの使用をお勧めします。


マップの表示
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/projects/grass/grass-layerman.png
  :scale: 50 %
  :alt: screenshot
  :align: left

PERMANENT マップセットから "`elevation.10m`" といったラスターレイヤーを加えます。
`GIS レイヤマネージャ` ウィンドウにて
"+" 記号のついたツールバーボタンをクリックして下さい。
そして "*表示するマップ*" リストからマップ名を選択して、
:guilabel:`Ok` をクリックして下さい。

同様に "`roadsmajor`" ベクターレイヤーも PERMANENT マップセットから
"+" 記号のついたV字に見える線のツールバーボタンをクリックして
追加して下さい。

アイコンの説明文も便利です (カーソルが重なると表示) 。

必要なら、ラスターマップ名を右クリックして
"選択したマップのズーム" を選択して下さい。

マップが表示されていますよね。

標高プロファイルの表示
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/projects/grass/grass-profile.png
  :scale: 50 %
  :alt: screenshot
  :align: right

`GIS レイヤマネージャ` ウィンドウに戻って`elevation`ラスターを選択するために名前をクリックして下さい。
`マップディスプレイ` ウィンドウで `マップ表示` ツールバーのズームボタンの右にある線と
縞目模様のあるアイコンを見て下さい。
**Profile surface map** をクリックして選択して下さい。
`@PERMANENT` マップセットは自動的に検索されて、ファイル名で絞り込むことができます。
もし自動的にリストに表示がされない場合は、再び `elevation` マップをラスターレイヤーとして選択して
:guilabel:`Ok` をクリックして下さい。
左から2番目のアイコンをクリックして、 `Map Display` キャンバスのの複数点をクリックすることでプロファイルを取ることができます.
何点かクリックしたのちプロファイルウィンドウの目玉ボタンをクリックすると
プロファイルを表示することができます。
終了するには右端にあるスイッチボタンをクリックして下さい。

ランダムサーフェスの作成
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. HB comment: this quickstart is getting kinda long, maybe retire this section.

それでは新しい地図を作ってみましょう。
まずは *computational region* を
:menuselection:`Settings --> Region --> Set region` の
"*Set from default region*" にてデフォルト範囲を設定し [*Run*] をクリックします。
つづいてメニューから :menuselection:`Raster --> Generate surfaces --> Fractal surface` を選択し、
新しい地図の名前を指定して、
"Optional" タブのオプションを調整し [*Run*] をクリックします。
そして *r.surf.fractal* ダイアログウィンドウの [*Close*] をクリックして閉じます。

.. image:: /images/projects/grass/grass-fractal.png
  :scale: 50 %
  :alt: screenshot
  :align: right

ラスターデータの色の調整
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

新しいラスターマップが標高マップとともに
レイヤーリストないしは "user1" マップセットに加わっているとのが見えると思います.
`elevation` レイヤの表示チェックボックスをオフにすることで
表示を制御することができます.
自動的に表示されない場合は目玉をクリックすると表示がされるようになります.
色合いが好みじゃない場合は変えてみましょう。
レイヤーリストでDEMを選択状態にして、
`Raster` メニューで :menuselection:`Manage colors --> Color tables` と選択します。
"Define" タブで "Name of color table" オプションのプルダウンリストをクリックして選択します。
"terrain" や "srtm" などはおすすめです。
[*Run*] ボタンをクリックして実行した後は、
*r.colors* ダイアログウィンドウを閉じてください。
自動的に色合いが更新されるはずです。

陰影図の作成
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/projects/grass/grass-shadedrelief.png
  :scale: 50 %
  :alt: screenshot
  :align: right

つづいてさきほどの標高レイヤの陰影図を作成します。
まずは *computational region* が対象のラスターレイヤである
PERMANENTマップセットの "`elevation`" に一致しているかを確認しましょう。
そのために `GIS Layer Manager` ウィンドウの
レイヤーリストに読み込まれているかを確認してから
名前を右クリックして  "Set computation region from selected map(s)" を選択してください。
レイヤー管理タブが新たな設定を表示するためテキストコンソールに変更されます。
元のレイヤーリストに戻るためには下部にある "*Map layers*" タブをクリックしてください。

`Raster` メニューで :menuselection:`Terrain analysis --> Compute shaded relief`
(Terrain analysis は `raster` メニュー真ん中よりちょっと下にあります) を選択すると、
モジュールコントロールダイアログが表示されます。
入力データとして "elevation" *@PERMANENT* 、出力データとして
"shaded_relief" 指定して [*Run*] をクリックしてください。
その後、新たに `shaded_relief` *@user1* をレイヤーリストに追加して、
他のラスターレイヤのチェックを外すと新たに追加された陰影図が表示されます。

集水域と水系
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`elevation` を *@PERMANENT* マップセットから選択してください。
先ほどの範囲から変更を加えた場合は、
再びレイヤー名を右クリックメニューから
:menuselection:`Set computational region from selected map(s)` を選択してクリックします。

.. note:: wxGUI のマップディスプレイのビューとズームは解析機能とは独立しているため影響を与えません。いつでも :menuselection:`Settings --> Region --> Display Region` で計算範囲を確認してください。これはラスター処理における重要な基本となります。範囲や解像度が異なるラスターではオンザフライで自動的に現在の計算範囲にリサンプリングされます。

つぎに、 `Raster` メニューから :menuselection:`Hydrologic modeling --> Watershed analysis` を選択してください。
``r.watershed`` モジュールが開くと思います。
`elevation` レイヤを入力データとして選択して、
'Input options' タブで集水域外縁の最小サイズの
*threshold* を 10000 セルに設定し、
'Output options' タブで集水域オプションに "elev.basins" と入力し、
その下の水流セグメントオプションに "elev.streams" を入力し、
[*Run*] をクリックします。

`GIS Layer Manager` ウィンドウに戻り、
レイヤーリストに加わったそれら2つの新しいラスターレイヤを確認し、
集水域データが表示のためにファイル名の左のボックスにチェックがしてあるのを確認してください。
水流データのチェックは外れていると思います。
つづいて、 "`elev.basins`" ラスターで右クリックをして
"`Change opacity level`" を選択してください。
50% ぐらいに設定してマップディスプレイで再表示をしてください。
何かマップレイヤ (例えば先ほどの陰影図) をこのレイヤの下にドラッグして、
集水域の背後に透けて見えるのを確認してみてください。


.. image:: /images/projects/grass/grass-watersheds.png
  :scale: 50 %
  :alt: screenshot
  :align: left

`GIS Layer Manager` ウィンドウの上段の右から2番めのアイコンをクリックして `Add a grid layer` を選択してください。
グリッドのサイズは0度3分 (D:M:S 形式) の意味の 0:03 と入力し、
"Optional" タブで、"Draw geographic grid" にチェックを入れて
:guilabel:`Ok` をクリックして再描画をしてください。
結果を見るために新しいグリッドレイヤーをレイヤーリストの最上位にドラッグする必要があるかもしれません。

スケールバーを追加するためには `Map Display` ウィンドウにて、以前使用したプロファイルツールの右にある
"Add map elements" アイコンをクリックして "Add scalebar and north arrow" を選択して :guilabel:`Ok` を選択してください。
スケールバーがマップキャンバスの左上に表示されますので、左下にドラッグしてください。
同じツールバーメニューから "Add legend" を選択して出てくるウィンドウにて `Set Options` ボタンをクリックして、
凡例内のラスターレイヤ名を設定してください。

.. MN comment: UNUSED TOO MANY BASINS
  From the same toolbar menu select
  "Add legend" and in the instructions window click the `Set Options`
  button to set the raster map name to create the legend for.
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
 
ここまでの作業はいくつかのラスターデータの
処理機能だけしかカバーしていません。
もちろんGRASSで扱うのはラスターデータだけではありません。
ベクターデータの処理機能もラスター同様に様々な機能を持っています。
GRASSのトポロジーエンジンは多くの強力な解析を可能にしています。

.. image:: /images/projects/grass/grass-vectattrib.png
  :scale: 50 %
  :alt: screenshot
  :align: right

ここまでの集水域作成の作業の続きとして、
次はこれらをベクターポリゴンへの変換を行います。
ラスターメニューにて、 :menuselection:`Map type conversions --> Raster to vector` を選択します。
`r.to.vect` ダイアログの入力データとして ``elev.basins @user1`` を選択してから、
出力ファイル名に ``basins_areas`` のような名前 (ベクターファイル名はSQL準拠するべきでしょう) を入力し、
出力フィーチャタイプを `area` にしてください。
前に作成した水流セグメントラスターの値に合わせるため、
`Attributes` タブにて、 use raster values as category numbers (IDなど) にチェックを入れてください。
そして [*Run*] をクリックしてください。
新しいベクターレイヤが表示されたら
`Layer Manager` リストにて右クリックをして透過率を50%に変更してください。

ベクターデータの色の調整
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

先ほどラスターデータで行ったように集水域ベクターデータの色の調整を行います。
レイヤーリストで ``basin_areas`` を選択し、
右クリックで "Set color table" を選択します。
'Define' タブで "Name of color table" オプションにて
"bcyr" (blue-cyan-yellow-red) などを選択します。
[*Run*] ボタンをクリックして、
*v.colors* ダイアログを閉じます。
変更した色を見るために再描画をする必要があるかもしれません。

.. image:: /images/projects/grass/grass-vector-basins.png
  :scale: 50 %
  :alt: screenshot
  :align: right
  
属性データの管理
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

次にそれぞれの集水域ポリゴンに対して平均標高などの属性情報を加えます。
ベクターメニューで :menuselection:`Update attributes --> Update area attributes from raster` を選択します。
ベクターポリゴンとして ``basin_areas`` 、統計計算するラスターとして ``elevation`` を選択し、
"Column prefix for new attribute columns" に ``elev`` を設定して [*Run*] をクリックします。
終了したらダイアログを閉じてください。
`Layer List` でポリゴン名が選択されているのを確認したあと
`Map Display` ウィンドウの左から5番目のアイコンを使うことで、
クリックしたポリゴンの値を調べることができます。

`v.colors`` モジュールを使うことでポリゴンの平均標高値から色の設定をすることができます。
ベクターメニューで	:menuselection:`Manage colors --> Color tables` を選択します。
入力ベクターとして `basin_areas`` を選択し、
"Source value" として ``cat`` の代わりに ``attr`` を選択します。
そして "Define" タブで数値が含まれている ``elev_average`` 列を選択します。
`elevation` ラスターから色をコピーしたいため、
"Raster map from which to copy color table" にそれを選択します。
[*Run*] をクリックしたあと、更新された集水域を見るためには
マップ表示を更新する必要があります (左から2番目のアイコンです)。

それではここからは属性テーブルとSQLビルダーを詳しく見ていきます。
`Layer Manager` にて下部の左から2番目のテーブルアイコン
("選択したベクターの属性テーブルを表示") をクリックします。
このように選択したベクターデータに関連付けられた属性テーブルを開くことができます。
ここではたくさんある中でも *簡単な* データベースクエリを
集水域ポリゴンに対して実行してみましょう。
Where句として ``SELECT * FROM basin_areas WHERE`` を、
統計リストの中の標準偏差として ``elev_stddev`` を選択します。
そしてその右のテキストボックスに ``< 50`` を入力してから [*Apply*] をクリックします。
ウィンドウ下部の情報バーには読み込まれたレコード数が表示されているでしょう。
標準偏差 (std. dev.) として大きすぎる数字が含まれている行は
テーブルに表示がされなくなります。
テーブル上で右クリックから ``Select all`` を選択したあと ``Highlight selected features`` を選択します。
``Map Display`` に沖積平野とメサなどが見えるでしょう。

3D 可視化
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/projects/grass/grass-nviz.png
  :scale: 50 %
  :alt: screenshot
  :align: right

3D可視ツールを開始するためには
`Layer list` からラスター標高として `elevation` を選択したあと
`Map Display` ウィンドウから "3D view" (ツールバーの右端) を選択します。
3Dインターフェイスが読み込まれると
3Dビューのディスプレー操作のための幾つかのタブが表示されます。
そのあと "Data" タブを選択してから解像度として
"1" (低いほど高解像度) を設定してから
視点を変えるために位置を移動したり高度スライダーを調整してみて下さい。

DEMの上に衛星画像や航空写真を重ねあわせるために
"Data" タブにて **Surface Attributes** として
PERMANENTマップセットの "`landuse`" を選択します。
表示はすぐに更新されるでしょう。
比較的平坦なエリアなので "View" タブで
Z強調 ("z-Exag") の値を増やすと良いでしょう。

3Dビューで簡単に操作するためにマップディスプレイツールバーにて "Rotate 3D scene" に切り替えてから
視点切り替えのためにマウスを使用して下さい。

その他
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

ここでは紹介しませんでしたが
新しい地図コンポーザやオブジェクト指向のグラフィカルモデリングツールにも
興味を持たれるかもしれません。
それらは `Layer Manager` ウィンドウの下段にあるアイコンから起動することができます。
より詳細な情報は `wxGUI <../../grass/wxGUI.html>`_ ヘルプページにおいてあります。

新しいGUIはPythonで書かれており、
Pythonプログラミングに興味のある人手あれば多くの素晴らしいツールが利用可能です。
`Layer Manager` ウィンドウの下段には `Python shell` タブがあり、
``help(grass.core)`` と入力すれば
GIS Pyhthonライブラリで利用可能な多くの機能のリストを見ることができます。
コアとなるGIS機能だけでなく、
`array` (NumPy)、 `db` (database)、 `raster`、 そして `vector` のライブラリが利用可能です。
GRASSのCライブラリに直接アクセスできる `Pythons CTypes` といった高度な機能も
Python プログラマーに用意されています。

終了のしかたとコマンドライン
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

終了する時は、GRASS GUI の :menuselection:`File --> Exit GUI` から終了してください。
GRASS ターミナルセッションを閉じる前に、
"``g.manual --help``" と入力してモジュールオプションのリストを確認してみてください。
GRASSコマンドラインにおいてこそGISの真の力を発揮することができます。
GRASSでは全てのコマンドをスクリプトにて結びつけることができ、
大量のバルク処理を行うことができます。
Bash や Python などの有名なスクリプト言語が利用可能で、
いずれの言語でもスクリプト処理を簡単にするための様々な便利な機能を使うことができます。
強力なパーサー、GUI、ヘルプページのテンプレートなどのツールを用いることで、
新しい GRASS モジュールを5分程度で作成することができます。

"``g.manual -i``" でヘルプページモジュールをWebブラウザで開くことができます。
ブラウザを閉じた後は "exit" とタイプして
GRASSターミナルを閉じてGIS環境を終了してください。

参照情報
================================================================================
* GRASS ホームページは `http://grass.osgeo.org <http://grass.osgeo.org>`_
* GRASS Wiki ヘルプサイトは `http://grasswiki.osgeo.org/wiki/ <http://grasswiki.osgeo.org/wiki/>`_
* チュートリアルや概要は `こちら <http://grasswiki.osgeo.org/wiki/GRASS_Help#Getting_Started>`_.
* GUIメニューと`GRASS モジュール概要 <http://grass.osgeo.org/gdp/grassmanuals/grass64_module_list.pdf>`_.
  GUIメニュー (`HTML 版 <http://grass.osgeo.org/grass70/manuals/full_index.html>`_)
* もし 400 個の GRASS モジュールでも物足りない場合は第三者により開発されたアドオンもあります
  `http://grass.osgeo.org/grass70/manuals/addons/ <http://grass.osgeo.org/grass70/manuals/addons/>`_
