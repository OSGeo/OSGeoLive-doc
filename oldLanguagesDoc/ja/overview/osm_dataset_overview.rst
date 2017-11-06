:Authors: Hamish Bowman, Marco Brancolini
:Reviewer:
:Version: osgeo-live10.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-osm.png
  :alt: project logo
  :align: right
  :target: https://www.openstreetmap.org/


OpenStreetMap (OSM)
================================================================================

地図データ
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

OpenStreetMapは、世界のクラウドソースによる地図で、利用可能なローカルスケールでの地図データうち最も詳細なソースの一つになりました。ソースの地図データは、Wikipediaの百科事典の維持と同様のプロセスで、世界中の数千人のボランティアによって作成・維持されています。

OSMを最も目にする光景は、 https://www.openstreetmap.org のオンライン上でのウェブタイルによるインターフェイスです。しかしマップは、:doc:`QGIS <qgis_overview>` や :doc:`OpenLayers <openlayers_overview>`、ArcGIS、そして専用のOSMアプリケーションなど多くのアプリケーションで閲覧、インポート、編集することができます。

プロジェクトの中心は、カスタムにレンダリングされた地図として編集され、閲覧、作成されるための、全てに開かれたデータの基礎になることです。基本的にOSMの焦点はデータにあり、リッチな地図は、これから単純に抜け落ちています。

OSGeo-Liveのディストリビューションには、いくつかのアプリケーションで例に使用されているOSMデータの都市サイズに抽出されたデータが含まれています。

.. image:: /images/projects/osm_dataset/osm-screenshot.jpg 
  :scale: 55 %
  :alt: OSM screenshot
  :align: right


主な特徴
--------------------------------------------------------------------------------

* ベクトルのフィーチャは、名前と他の属性によってタグづけされます。

* データのローカルなサブセットを抽出します

* データは、緯度経度WGS84のノード、ノードの文字列、そしてポイント・ポリライン・エリアカバレッジを可能にするメタ地物として格納されています。

* 他のソースよりもはるかに詳しい豊富な属性タグ

* ローカルな知識の地球規模のリポジトリ


OSGeo-Liveに含まれるデータセット
--------------------------------------------------------------------------------

- feature_city.osm.bz2: A large extract of the greater city area as a BZip2 compressed XML text file.

- feature_city_CBD.osm.bz2: A smaller subset covering just the Central Business District (CBD).

- feature_city_poi.db: Sqlite DB of "positions of interest" nodes extracted from the above larger city OSM extract. Contains locations of pubs, fuel stations, restaurants, supermarkets, etc.

- Files referencing the name of the featured city contain the same data as the above files. Quickstarts and overviews use the generic file names so that the example city can change with each new release.

The OSM feature city data has been imported into a PostGIS database called "osm_local" using the osm2pgsql tool. The spatial reference system used for this database is latitude-longitude with the WGS84 datum (EPSG code 4326) and can be reprojected to other Spatial Reference Systems (SRS), such as Spherical-Mercator, on demand.
The smaller CBD extract is loaded into another PostGIS database called "pgrouting".


詳細
--------------------------------------------------------------------------------

**ウェブサイト:** https://www.openstreetmap.org/

**ライセンス:** `Open Data Commons Open Database License (ODbL) <http://opendatacommons.org/licenses/odbl/>`_

**データのバージョン:** Live database extract

**データ形式:** XML

**空間座標系:** 緯度経度 WGS84

**サポート:** https://www.openstreetmap.org/help

