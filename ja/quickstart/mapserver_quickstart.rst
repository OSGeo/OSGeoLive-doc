:Author: OSGeo-Live
:Author: Alan Boudreault, Steve Lime
:Version: osgeo-live5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _mapserver-quickstart:

.. image:: ../../images/project_logos/logo-mapserver-new.png
  :scale: 65 %
  :alt: Project logo
  :align: right
  :target: http://mapserver.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

================================================================================
 MapServer クイックスタート
================================================================================

MapServer は `オープンソース <http://www.opensource.org>`_ のサーバベースアプリケーションです。 `WMS <http://www.opengeospatial.org/standards/wms>`_ や `WFS <http://www.opengeospatial.org/standards/wfs>`_ など `OGC 標準 <http://www.opengeospatial.org/standards>`_ の地理情報の画像、ベクタデータ配信に使うことができます。

このクイックスタートでは以下の点について説明しています:
     
  * :ref:`mapserver-quickstart-configure-with-mapfile`
  * :ref:`mapserver-quickstart-wms-request`
  * :ref:`mapserver-quickstart-add-new-layer`
  * :ref:`mapserver-quickstart-styling-a-layer`

.. _mapserver-quickstart-configure-with-mapfile:

MapServer を設定する
================================================================================

.. note::ここでは、WMS リクエストを使って shp ファイルを画像として MapServer で配信するために必要な mapfile の設定について学びます。 

Mapfile とは
--------------------------------------------------------------------------------

`Mapfile <http://mapserver.org/mapfile/index.html>`_ は MapSrver の設定ファイルです。時空間データを、画像やベクタデータとしてレンダリングする際に使用します。このファイルでは主にレイヤを定義し、必要なデータをどこからどのように読み込み、どうやって表示するかを設定します。（色、シンボル、ラベル等）

初めてのマップファイル作成
--------------------------------------------------------------------------------

#. テキストエディタを開いてください（Live DVD では、 Mousepad をインストールしてあります。メニューから :menuselection:`Applications --> Accessories --> Mousepad` を選択してください）
#. ホームディレクトリに以下の内容で "mapserver_quickstart.map" を作成してください。 :file:`/home/user/mapserver_quickstart.map`

 ::

  MAP
    NAME "MAPSERVER QUICKSTART"
    EXTENT -137 29 -53 88
    UNITS DD
    SHAPEPATH "/home/user/data/natural_earth/"
    SIZE 800 600

    IMAGETYPE PNG24
  
    PROJECTION
      "init=epsg:4326" 
    END

    WEB
      METADATA
        ows_enable_request "*"
      END
    END

    LAYER
      NAME "Admin Countries"
      STATUS ON
      TYPE POLYGON
      DATA "10m_admin_0_countries"
      CLASS 
        STYLE
          COLOR 246 241 223
          OUTLINECOLOR 0 0 0
        END
      END 
    END

  END

.. note::この例では Natural Earth データセットを使用します。DVD の :file:`~/data/natural_earth` にインストールしてあります。（ :file:`/usr/local/share/data/natural_earth` にショートカットがあります）

mapfile の各オブジェクトは、 **MAP** のように名前で始まり、 **END** で終わります。 mapfile は常に **MAP** オブジェクトで始まり、 MapServer が読み込んで表示する **LAYER** オブジェクトのリストを持つべきです。今回はレイヤを一つだけ定義した mapfile になっています。


mapfile のオブジェクトやプロパティについて見てみましょう: 
 * EXTENT : この設定でのデフォルト範囲の設定
 * LAYER : 時空間データセットへのアクセスと表示の設定を行います。後ほど別のレイヤを追加します。
 * SHAPEPATH : 表示したい shp ファイルや tiff 画像へのパスのベースとなるパス

mapfile の **LAYER** を詳しく見るとほかにも以下のようなプロパティを含んでいます。
 * STATUS : レイヤを表示する (*ON*)、表示しない (*OFF*) もしくは常に表示する (*DEFAULT*)
 * TYPE : MapServer がレンダリング画像として使用するジオメトリの種類。 作成した mapfile ではポリゴン (POLYGON) として表示します。
 * DATA : レイヤとして使用するファイルの名称。今回は shp ファイルを指定しています。
 * CLASS : レイヤを描画するスタイル。後程このオブジェクトについてより詳しく説明します。
 
.. note:: 使用できるプロパティの完全なリストは MapServer ドキュメントのページ `Mapfile <http://mapserver.org/mapfile/index.html>`_ に記載されています。

.. _mapserver-quickstart-wms-request:


コマンドラインから地図画像をレンダリングする
========================================================

MapServer はウェブアプリケーション用に作られていますが、コマンドラインからも画像を作成できます。これは何度も地図を作成してみたり、デバッグする際に便利です。

Applications/Accessories/Terminal からターミナルを開き、次のようにタイプしてください。

 shp2img -m mapserver_quickstart.map -o mymap.png

コマンドの実行に成功すると、レンダリングした地図が file:///home/user/mymap.png に作成されます。

WMS の **GetMap** リクエストで地図画像をレンダリングする
================================================================================

.. note:: ここでは、OGC WMS リクエストを使って、 mapfile から MapServer でレイヤをレンダリングする方法を学びます。

ブラウザを開き、以下の URL を入力してください ::

 http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Admin%20Countries&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=PNG&WIDTH=800&HEIGHT=600

これは、 `Web Map Service (WMS) <http://www.opengeospatial.org/standards/wms>`_ の **GetMap** リクエストです。mapserver に「以下のマップファイルを使って指定したれレイヤを png 画像で、サイズ、レンダリングする地物、投影法等のパラメータを指定してレンダリングする」というリクエストをしています。

"*&LAYERS=...*" で指定した全てのレイヤのうち、 mapfile で *STATUS ON* のものと、 *STATUS DEFAULT* のレイヤをレンダリングします。このリクエストの結果は以下の様になります。


  .. image:: ../../images/screenshots/800x600/mapserver_map.png
    :scale: 70 %

.. note:: リクエストにのパラメータは "*?map=/home/user/mapserver_quickstart.map*" を除いて全て WMS の仕様にあるものです。

.. _mapserver-quickstart-add-new-layer:

shp ファイルを新しいレイヤとして追加する
================================================================================

.. note:: ここでは、mapfile に新しいレイヤを追加し、定義する方法について学びます

mapfile に新しいレイヤを追加します。mapfile にある最後の *END* ステートメントの直前に、以下のレイヤ設定を追加してください。::

 LAYER
   NAME "Lakes"
   STATUS ON
   TYPE POLYGON
   DATA "10m_lakes"
   CLASS 
     STYLE
       COLOR 153 179 204
     END
   END 
  END

これで mapfile に二つ目のレイヤが追加できます。追加したレイヤは "STATUS ON" プロパティとなっています。これは、リクエストしない限りレンダリングしないことを意味します。

**GetMap** リクエストの内容を確認し、追加した "Lakes" レイヤの画像がレンダリングされるかどうかを確かめてみましょう。単純に "LAYERS" の引数に、追加したレイヤの名前を以下のように加えます。::

 http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Admin%20Countries,Lakes&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=PNG&WIDTH=800&HEIGHT=600

MapSetver でレンダリングすると、先程の結果と良く似ていますが、追加した湖のレイヤを追加した画像になります。

  .. image:: ../../images/screenshots/800x600/mapserver_lakes.png
    :scale: 70 %

.. _mapserver-quickstart-styling-a-layer:

レイヤのスタイルを設定する
================================================================================

.. note:: レイヤ内の要素を、データの属性によってスタイル変更する方法について学びます

mapfile では、レイヤオブジェクトはいくつでもクラスオブジェクトを追加できます。これは、データに含まれる要素のスタイル/見栄えの変更に使用します。例えば、 "10m_lakes" のデータを、 `ogrinfo <http://www.gdal.org/ogrinfo.html>`_ を使って見てみましょう。ジオメトリと属性の定義を見ることができます。これら属性値を使って各要素を描画する際に異なるクラスを割り当てられます。

"10m_lakes" のデータセットには、湖の大きさに関連すると思われる *ScaleRank* 属性があります。これをつかって湖をすこし違うようにレンダリングしてみましょう。レイヤオブジェクトの中に、既に作成したものに続けて、新しい CLASS オブジェクトを以下のように作成します。::

  LAYER
   NAME "Lakes"
   STATUS DEFAULT
   TYPE POLYGON
   DATA "10m_lakes"
   CLASSITEM "ScaleRank" 
   CLASS 
     EXPRESSION /0|1/  
     STYLE
       COLOR 153 179 204
       OUTLINECOLOR 0 0 0
     END
   END 
   CLASS 
     STYLE
       COLOR 153 179 204
     END
   END 
  END

新しいクラスオブジェクトは、 MapServer に "ScaleRank" が "0" か "1" の時には、黒い境界線で書くように指示しています。

クラスオブジェクトは各フィーチャー（地物）を描画する際に、毎回上から順に読み込まれ、フィーチャーがクラスに指定した "EXPRESSION" と一致する属性を持つ場合、指定した方法でレンダリングを行います。フィーチャーがクラスに指定した条件と一致しないときには次のクラスのチェックに移り、全てのクラスをチェックして一致が無く、かつ最後のクラスが "EXPRESSION" を持たない場合には、そのクラスをデフォルトとして振る舞います。LAYER の "CLASSITEM" プロパティでは、そのクラスが EXPRESSION でチェックする属性を指定します。

この変更を加えると、大きな湖は黒い境界線で描くようになります。


  .. image:: ../../images/screenshots/800x600/mapserver_lakes_scalerank.png
    :scale: 70 %

.. note:: MapServer の様々な `EXPRESSIONS <http://mapserver.org/mapfile/expressions.html>`_ について調べてみてください。

次のステップ
================================================================================

以上、大変簡単な例を紹介しました。まだまだできることはたくさんあります。MapSrver のプロジェクトウェブサイトに有用な情報を掲載しているので参考にして下さい。いくつかそのリンクを掲載しておきます。

* MapServer の導入 -  `Introduction to MapServer <http://mapserver.org/introduction.html#introduction>`_.
* MapServer チュートリアル - `MapServer Tutorial <http://www.mapserver.org/tutorial/index.html>`_ より多くの mapfile の例を掲載しています。
* `OGC 準拠と設定 <http://www.mapserver.org/ogc/index.html>`_ では WMS, WFS, SLD, WFS Filter Encoding, WCS, SOS など MapServer の OGC 標準屁の準拠について記載しています
* MapServer が動作させられたら是非、コミュニティ `メーリングリスト <http://www.mapserver.org/community/lists.html>`_ に参加してください。アイデアの交換やソフトウェアの性能向上などに関しての議論を行っています。
