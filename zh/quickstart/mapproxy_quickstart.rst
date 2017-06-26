:Author: Oliver Tonnhofer
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-mapproxy.png
  :alt: project logo
  :align: right
  :target: http://mapproxy.org/

MapProxy 快速入门文档
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　MapProxy 是 WMS 网页地图服务与切片服务提供者的瑞士军刀。它对已有服务的数据服务进行缓存、加速和转换，服务任何支持 OGC 标准的桌面与网页客户端。

.. image:: /images/screenshots/800x600/mapproxy.png
  :alt: MapProxy diagram
  :align: center

　　除了切片缓存功能外，MapProxy 还包含了完整 WMS 客户端支持等特性。

启动示例服务
--------------------------------------------------------------------------------

　　MapProxy 开发方式灵活，易于同 Apache 环境等集成。MapProxy 也能作为一个独立服务使用。这是对于新用户而言最容易的方式。

　　通过 :menuselection:`Geospatial --> Web Services --> MapProxy --> Start MapProxy` 可以以独立方式启动 MapProxy 。


查看 MapProxy 示例
--------------------------------------------------------------------------------

　　MapProxy 示例为一个基本的 WMS 切片客户端。它显示了配置的各个图层。它不具备改变投影等复杂功能，但足以验证服务是否正常运行。

　　示例位于 `<http://localhost:8011/demo>`_ （Firefox 打开）

以桌面 GIS 使用服务
--------------------------------------------------------------------------------

　　任何支持 WMS 的桌面 GIS ，例如 uDig ，QGIS 或 gvSIG 等，均可使用 MapProxy 服务。服务 URL 为 `<http://localhost:8011/service?>`_ 。

　　MapProxy 示例配置包含了若干不同的数据源。详见后述。

.. figure:: /images/screenshots/800x600/mapproxy_udig.png
  :alt: MapProxy example in uDig
  :align: center
  
  单个 WMS 包含了层叠的两个图层，并显示了其中一个的 `FeatureInformation` 。

Available layers
--------------------------------------------------------------------------------

**mapnik**:
　　Mapnik　世界人口分布图示例。这里无需启动 Mapnik 服务，Mapnik 内建有相应支持。

**tilelite**:
　　TileLite 是一个通过 Mapnik 世界人口图服务提供切片的简单服务。这个示例图层显示了将已有切片服务加入 MapProxy 的 WMS 服务的能力。
　　在访问该图层前请通过 *Start Mapnik & TileLite* 启动服务。

**GeoServer**:
　　由 :doc:`GeoServer <../overview/geoserver_overview>` 实现的美国人口分布图的 WMS 。这个服务支持 ``GetFeatureInfo`` 请求，并叠加于 WMS 来源中。
　　在访问该图层前请通过 |osgeolive-appmenupath-geoserver| 启动 GeoServer 。

**MapNik_Geoserver**:
　　演示将不同数据源整合为一个 MapProxy 图层。它包含 Mapnik 的世界人口图和 GeoServer 的美国人口图。对于 GeoServer 数据， ``GetFeatureInfo`` 请求依然有效。
　　访问前请通过 |osgeolive-appmenupath-geoserver| 启用服务。

**MapServer**:
  演示使用 Mapserver 的 Itasca 示例数据集。该数据集运用 *coverage* 特性，边界框对应意大利 Itasca 地区。


建立自己的配置
--------------------------------------------------------------------------------

　　利用 ``mapproxy-util`` 可以建立新的配置与模板，建立服务。

　　建立新配置：
::

  mapproxy-util create -t base-config ~/mapproxy

　　在 8011 端口以新配置启动服务：
::

  mapproxy-util serve-develop ~/mapproxy/mapproxy.yaml -b 0.0.0.0:8011

　　于 http://127.0.0.1:8011/demo/ 访问新配置。MapProxy 在配置改变后会自动重新加载。


其它信息
--------------------------------------------------------------------------------

* `MapProxy 文档 <../../mapproxy/index.html>`_

* 示例配置 (``/usr/local/share/mapproxy/mapproxy.yaml``)

