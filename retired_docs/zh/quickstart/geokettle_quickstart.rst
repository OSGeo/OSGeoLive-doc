:Author: Jean Mathieu, Thierry Badard
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.5 Draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-geokettle.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://www.geokettle.org/

********************************************************************************
GeoKettle 快速入门文档
********************************************************************************


　　GeoKettle 是一套基于元数据，功能强大的空间数据 ETL（抽取、转换与装载）工具。它用于整合不同的空间信息来源，建立和更新地理信息数据库与数据仓库。它为从各类数据源抽取所需数据，转换数据格式并清理、纠错、满足标准协议，并将成果装载进入目标数据库、GIS 文件或网络服务提供了一整套方法。

　　本文档将演示：

  * 读取已有的数据转换信息
  * 创建新的转换

启动 GeoKettle 
================================================================================

#. 在 Geospatial 菜单选择 :menuselection:`Spatial Tools --> GeoKettle` 。
#. 请稍等片刻，程序将会启动。
#. 如下图所示的对话框将会出现。输入所用数据仓库（repository）或选择“No repository”开始即可进入 GeoKettle 工作台。

  .. image:: /images/screenshots/800x600/geokettle_welcome.png
    :scale: 80 %

工作台
================================================================================

　　工作台包含了不同的面板。见下图：

  .. image:: /images/screenshots/1024x768/geokettle_workbench.png
    :scale: 80 %

　　左侧面板显示了转换操作的各个步骤。右侧主面板用于设计个测试具体的转换操作。具体使用请见后述。


读取已有转换配置
================================================================================

　　通过 :menuselection:`File --> Open` 可读取配置文件。在 :file:`/opt/geokettle/samples/transformations/geokettle 目录可以看到演示配置。从中选择一个并单击 :guilabel:`OK` 。GeoKettle 转换文件的扩展名是 `*.ktr` 。

　　下图的示例是 « intersection » 转换。工作台的两部分现在都显示了此转换配置的内容。

  .. image:: /images/screenshots/1024x768/geokettle_intersection_transformation.png
    :scale: 80 %

　　明黄色的提示栏显示了转换配置的描述以及可选参数。

　　在开启转换操作之前，需要指定目标文件（shp）。请双击各个 « GIS file input » 步骤以显示如下图的配置对话框：

  .. image:: /images/screenshots/800x600/geokettle_shapefile_input_step.png

.. note: 
   其它任何转换步骤也可通过双击开启设置。

　　输入目标文件的名称（包括 `.shp`）或直接使用默认。点击 :guilabel:`OK` 完成。

　　至此，转换可以运行了。点击 play 即可执行操作。

创建新的转换
================================================================================

　　同前节一样，启动 GeoKettle 并进入工作台。

　　选择 :menuselection:`File --> New --> Transformation` 创建新转换配置。选择 :menuselection:`File --> Save as...` 可以所需的文件名保存。

　　如下图所示，所有转换步骤都在左侧面板显示，并可展开进一步显示细节。

  .. image:: /images/screenshots/800x600/geokettle_your_transformation.png
    :scale: 80 %

　　要添加一个新的转换步骤，将所需步骤从 **Steps** 面板拖动到 **transformation** 面板。双击可调整其设置。


**Hop / 连接**

　　两个步骤之间的箭头表示一个连接，即两者之间数据流。如下图所示，从 **Table Input / 表格数据输入** 到 **Add sequence / 添加序列** 表示 **Table Input** 的输出既是 **Add sequence** 的输入。其它同理。

  .. image:: /images/screenshots/800x600/geokettle_hop.png
    :scale: 60 %

　　选择两个转换步骤，右键点击其中一个并选择 :menuselection:`New hop` 即可创建新连接。或者在选择待连接步骤时按住 :kbd:`Ctrl` 也可。

　　双击任何连接或右击选择 :menuselection:`Edit hop` 可编辑连接。


**设置转换过程**

　　转换大部分步骤需要配置相应的参数。

**运行转换**

　　运行转换时，运行面板会在下方显示。这个 **Execution Results / 运行结果** 面板会显示所有步骤的数据流信息。 

　　如下图所示，**Step Metrics / 转换步骤参数** 选项卡会首先显示。这里包含了数据输入/输出量等信息。**Active / 活动状态** 一览显示该步骤 started/启动、running/运行、finished/完成、aborted/撤销等。**Time / 时间** 一栏显示了各个项目的运行时间，同时还有 **Speed / 平均速度** 栏显示每秒处理的记录数。

  .. image:: /images/screenshots/1024x768/geokettle_running_transformation.png
    :scale: 70 %


**预览转换配置**

　　执行转换可能导致错误。错误信息显示在 **Execution Results** 面板（如下图）。错误的细节在 **Logging / 日志** 选项卡。日志包含了大量的信息用于追踪错误来源，并调整转换过程设计。

  .. image:: /images/screenshots/1024x768/geokettle_transformation_fail.png
    :scale: 70 %

　　为帮助查找错误，系统可以显示各个中间过程的输出。右键单击某个步骤并选择 :menuselection:`Preview` 即可。这样可以避免反复执行整个转换，而直接查看某个点的执行状态。

其它演示
================================================================================

　　你可以尝试以下操作：

#. 浏览 GeoKettle 提供的众多转换功能。
#. 利用 GeoKettle Debugger 检查错误。
#. 为你自己的数据设计转换。

更多信息
================================================================================

　　GeoKettle 用户/开发者文档可以在官方 `wiki <http://wiki.spatialytics.org>`_ 获取。欢迎就使用中发现的问题在 `Spatialytics 论坛 <http://www.spatialytics.com/forum>`_ 提问。

