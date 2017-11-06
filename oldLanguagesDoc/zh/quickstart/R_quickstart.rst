:Author: Barry Rowlingson
:Version: OSGeo-Live 5.0
:Translator: Zhengfan Lin
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-R.png
  :alt: project logo
  :align: right

********************************************************************************
R 快速入门
********************************************************************************

　　R 是一款用于数据统计和图形运算的自由软件环境。

　　本文演示：

  * 使用 R 进行简单算数运算。
  * 读取 shp 文件并生成地图。
  * 执行坐标转换。
  * 在地图中投出数据点。

启动 R
================================================================================

  * 从 Spatial Tools 菜单选择 ``R Statistics`` 启动一个命令行窗口。

　　或者：

  * 在命令行窗口输入 ``R`` 。

　　若您对命令行环境不熟悉，使用上下键调出以前输入的命令可以方便地修改错误。若因为持续运算导致不能执行输入，点击 CTRL-C 即可。

退出 R
================================================================================

　　几乎 R 中所有的功能都是一个函数，包括退出。输入 ``q()`` 并回车退出。若输入 ``q`` 会显示 ``q`` 函数的源码。

　　系统将询问是否要将数据保存。从一个有 ``.RData`` 文件的目录启动 R 将读取全部的数据。


R 基本操作
================================================================================

　　R 是一个命令行程序，但也有图形界面可用。在命令行输入一个命令，R 将解释执行并输出结果。

　　例如简单算数

::

   > 3*2
   [1] 6

   > 1 + 2 * 3 / 4
   [1] 2.5

   > sqrt(2)
   [1] 1.414214

   > pi * exp(-1)
   [1] 1.155727


　　基本的算数、三角和统计分析运算都可以执行。另有数千种扩展功能由 `CRAN <http://cran.r-project.org/>`_ 提供。

　　R 中基本的命令提示符为 ``>`` 。``+`` 表示进一步输入的提示。比如用户忘记关闭括号时会显示该提示符。

::

   > sqrt(
   + 2
   + )
   [1] 1.414214


创建数据
================================================================================

You might be wondering what the mysterious 'one' in square brackets is 
doing in the output. This is telling you that the result is one number. R
can store things in one-dimensional vectors, two-dimensional matrices,
and multi-dimensional arrays. There are many functions that can 
generate these things. Here's a simple sequence:
　　您可能会好奇前述开方输出前面的“[1]”是什么符号。这个标记在此处表示结果只有一个数值。R 可以存储一维、二维及多维的数列和矩阵。下面是一个简单的等差数列：

::

    > seq(1,5,len=10)
    [1] 1.000000 1.444444 1.888889 2.333333 2.777778 3.222222 3.666667 4.111111
    [9] 4.555556 5.000000

　　此处 ``[9]`` 表示 4.555 是数列中第 9 个数。

　　创建二维矩阵将得到行列标记：

::

	> m=matrix(1:12,3,4)
	> m
	     [,1] [,2] [,3] [,4]
	[1,]    1    4    7   10
	[2,]    2    5    8   11
	[3,]    3    6    9   12

　　矩阵中的元素可以以行列号标示获取，只取行或列将得到低维矩阵或向量。使用行列号范围可以取矩阵的一部分。

::

	> m[2,4]
	[1] 11

	> m[2,]
	[1]  2  5  8 11

	> m[,3:4]
	     [,1] [,2]
	[1,]    7   10
	[2,]    8   11
	[3,]    9   12

　　Data frame 数据表模型是类似 Postgres 或 MySQL 等关系数据库的数据模型。每行为一个记录，每列为一个字段。每个字段的数据类型对所有记录必须一致。

　　该模型的操作同一般矩阵类似，但字段可以以 $-notation 命令标注名称：

::

	> d = data.frame(x=1:10,y=1:10,z=runif(10)) # z is 10 random numbers
	> d
	        x  y          z 
	    1   1  1 0.44128080 
	    2   2  2 0.09394331 
	    3   3  3 0.51097462 
	    4   4  4 0.82683828 
	    5   5  5 0.21826740 
	    6   6  6 0.65600533 
	    7   7  7 0.59798278 
	    8   8  8 0.19003625 
	    9   9  9 0.24004866 
	    10 10 10 0.35972749 

	> d$z
	 [1] 0.44128080 0.09394331 0.51097462 0.82683828 0.21826740 0.65600533
	 [7] 0.59798278 0.19003625 0.24004866 0.35972749

	> d$big = d$z > 0.6  # d$big is now a boolean true/false value
	> d[1:5,]
	  x y          z   big
	1 1 1 0.44128080 FALSE
	2 2 2 0.09394331 FALSE
	3 3 3 0.51097462 FALSE
	4 4 4 0.82683828  TRUE
	5 5 5 0.21826740 FALSE

	> d$name = letters[1:10] # create a new field of characters
	> d[1:5,]
	  x y          z   big name
	  1 1 1 0.44128080 FALSE    a
	  2 2 2 0.09394331 FALSE    b
	  3 3 3 0.51097462 FALSE    c
	  4 4 4 0.82683828  TRUE    d
	  5 5 5 0.21826740 FALSE    e



读取地图数据
================================================================================

　　R 包含了大量处理空间操作和空间统计的功能。其中一部分包含在基本系统中，另一些由 CRAN 提供。

　　这里读取两个 shp 文件，分别是 Natural Earth 数据集中的国境线和主要居民点。以下两个软件包在这里提供所需的空间操作能力：

::

	> library(sp)
	> library(maptools)

	> countries = readShapeSpatial("/usr/local/share/data/natural_earth2/ne_10m_admin_0_countries.shp")
	> places = readShapeSpatial("/usr/local/share/data/natural_earth2/ne_10m_populated_places.shp")
	> plot(countries)

　　输出为简单的世界地图位图：

.. image:: /images/projects/R/r_plot1.png

　　OGR 数据集在 R 中以 data frame 表达。此处通过 ``admin`` 字段可以提取英国部分的数据：

::

	> uk = countries[countries$admin=="United Kingdom",]
	> plot(uk); axis(1); axis(2)

.. image:: /images/projects/R/r_plot2.png

　　这样的显示对于英国居民而言不符合习惯，因为数据分布的位置不在图件的中心位置。目前该地图还没有投影信息。此处查询投影：

::

	> proj4string(uk)
	[1] NA

　　``NA`` 表示空值。在进行投影转换前必须先指定投影系统。此处需变换至 EPSG:27700 Ordnance Survey of Great Britain 投影：

::

	> proj4string(uk)=CRS("+init=epsg:4326")
	> library(rgdal)
	> ukos = spTransform(uk,CRS("+init=epsg:27700"))
	> proj4string(ukos)
	[1] " +init=epsg:27700 +proj=tmerc +lat_0=49 +lon_0=-2 +k=0.9996012717 +x_0=400000 +y_0=-100000 +ellps=airy +datum=OSGB36 +units=m +no_defs
	+towgs84=446.448,-125.157,542.060,0.1502,0.2470,0.8421,-20.4894"

	> plot(ukos);axis(1);axis(2)

　　这样就得到了变换后的底图。对于居民点数据，同样执行转换：

::

	> ukpop = places[places$ADM0NAME=="United Kingdom",]
	> proj4string(ukpop)=CRS("+init=epsg:4326")
	> ukpop = spTransform(ukpop,CRS("+init=epsg:27700"))

　　将居民点数据投图，图标尺寸同人口平方根成正比（即面积同人口成正比），颜色为红色，图标为实心点：

::

	> points(ukpop,cex=sqrt(ukpop$POP_MAX/1000000),col="red",pch=19)
	> title("UK Population centre sizes")

　　最终结果：

.. image:: /images/projects/R/r_plot3.png

功能简介短文
================================================================================

　　以往 R 文档只包含对各个功能简单的说明。R 社区鼓励编写被称为 'vignette' 的更为友好的短文介绍各个功能。无参数运行 ``vignette()`` 将列出所有可用的 vignette 数据。``vignette("intro_sp")`` 将显示统计功能包的技术说明，``vignette("shapefiles")`` 则是 shp 文件的使用指南，``vignette("gstat")`` 对应一个包含克里格插值在内的空间插值功能包。

其它信息
================================================================================

　　对于 R 的一般介绍，请查看 `官方简介 <http://cran.r-project.org/doc/manuals/R-intro.html>`_ 或 `R Project <http://www.r-project.org/>`_ 的任何文档。

　　对于其空间操作功能，建议阅读 `R Spatial Task View <http://cran.r-project.org/web/views/Spatial.html>`_ 。

　　浏览 `R-Spatial <http://r-spatial.sourceforge.net/>`_ 可以获得更多项目信息以及 R-sig-Geo 邮件列表的信息。

