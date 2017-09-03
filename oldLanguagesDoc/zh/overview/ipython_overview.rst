:Author: OSGeo-Live
:Reviewer: Massimo Di Stefano, Center for Coastal and Ocean Mapping - UNH
:Translator: Bu Kun(bukun@osgeo.cn)
:Version: osgeo-live7.9
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-ipython.png
  :alt: project logo
  :align: center
  :target: http://ipython.org/



IPython
================================================================================

IPython中为交互计算提供了强劲的功能：

* 强大的交互式shell（终端和基于Qt）。
* 基于浏览器的 notebook 支持代码，文字，数学表达式，内嵌图和其他丰富的媒体。
* 支持交互式数据可视化的和GUI工具包的使用。
* 灵活的，可嵌入的解释器方便加入到自己的项目。
* 支持并行计算的简单易用、高性能的工具。

.. image:: /images/projects/ipython/ipython-notebook1.png
  :scale: 100 %
  :alt: screenshot
  :align: right
  

.. _protocol: http://ipython.org/ipython-doc/stable/development/messaging.html

.. _bash-perl-or-ruby: http://nbviewer.ipython.org/github/ipython/ipython/blob/master/examples/notebooks/Script%20Magics.ipynb

.. _official-example-collection: https://github.com/ipython/ipython/tree/master/examples/notebooks#a-collection-of-notebooks-for-using-ipython-effectively

.. _notebook-gallery: https://github.com/ipython/ipython/wiki/A-gallery-of-interesting-IPython-Notebooks

.. _videos-and-screencasts : http://ipython.org/videos.html#videos

.. _talks-and-presentations: http://ipython.org/presentation.html

.. _extensive-documentation: http://ipython.org/documentation.html

.. _other-projects: https://github.com/ipython/ipython/wiki/Projects-using-IPython


虽然该项目重点关注Python，IPython的架构被设计成语言无关的方式，以方便在任何语言交互计算。一个互动的内核，通过良好的规范协议来与终端或上网本通信，并将内核的所有功能提供给所有客户端。我们发布了IPython的内核，但目前正在为其他语言开发内核，已经有用在Ruby和JavaScript的原型。此外，IPython的内核支持多语言集成，让您在Cython，R，Octave和bash、perl或ruby等​脚本中混合使用Python。

要了解更多有关IPython中，有视频和截屏可以下载或讲座及演示，或阅读大量的文档。 IPython的开源的（BSD许可证），并采用了一系列其它项目；如果你的项目使用的IPython作为一个库，添加它到列表中，并请不要忘记引用这个项目。
  

IPython 支持  Python 2.6 、 2.7 、 3.2 或更新。 旧版本 0.10 系列支持  2.5，并也可以被用于 Python 2.4。 




核心功能 
--------------------------------------------------------------------------------




IPython的 Notebook 是一个基于Web的交互式计算环境，你可以在一个单一的文件中结合代码执行，文本，数学符号，图表和多媒体：


这些 notebooks 是可以与同事共享的常规文件，可以转换成如HTML或PDF等的其他格式。您可以通过使用IPython Notebook浏览器服务将任何公开的 notebook作为静态网页共享。这很容易让你的同事获得文档，他们可以立即读取，而无需安装任何东西。

要了解更多有关使用IPython Notebook，您可以访问我们的示例集合，可以读取文档，了解有关如何使用和配置系统的所有细节。该 Notebook 合集展示了许多有趣的 Notebook，涵盖了各种主题，从基本的编程，以先进的科学计算。



地理空间数据分析与IPython
--------------------------------------------------------------------------------
.. _Data_and_Visualization_Integration_Via_Web-based_Resources: http://nbviewer.ipython.org/gist/anonymous/5678081

.. _Exploring_seafloor_habitats_geographic_analysis_using_IPython_Notebook_with_GRASS_and_R: http://nbviewer.ipython.org/gist/epifanio/7598354

.. _slideshow: http://orion.tw.rpi.edu/~epifanio/AGU-2013/AGU-2013-H52E02-MDS.slides.html

.. _geo-notebook: https://github.com/epifanio/geo-notebook

On OSGeoLive a number of python libraries and command line tools are installed (GDAL, GRASS, )and ready to be used, IPython provides a rich interface for such kind of tools, example usage can be found in the geo-notebook  git repository other examples are available online on the IPython notebook gallery see : Data and Visualization Integration Via Web-based Resources  and Exploring seafloor habitats geographic analysis using IPython Notebook with GRASS and R  , and an IPython Notebook can be also rendered as a slideshow 




详情
--------------------------------------------------------------------------------

IPython 网站 

.. _Website: http://ipython.org/

**授权:** BSD license

**软件版本:** 1.2.1

**支持的平台:** Linux, Mac, Windows

**API接口:** Python


社区
--------------------------------------------------------------------------------

.. _Help-Chat-Room: http://www.hipchat.com/ghSp7E1uY

帮助聊天室

.. _Stack-Overflow: http://stackoverflow.com/questions/tagged/ipython


.. _Mailing-list: http://projects.scipy.org/mailman/listinfo/ipython-dev

邮件列表

.. _Wiki: https://github.com/ipython/ipython/wiki

维基

.. _Reddit: http://www.reddit.com/r/IPython

Reddit

.. _File_a_bug: https://github.com/ipython/ipython/issues

提交Bug

快速入门
--------------------------------------------------------------------------------

* :doc:`快速入门文档 <../quickstart/ipython_quickstart>`
