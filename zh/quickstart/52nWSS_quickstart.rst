:Author: Jan Drewnak (j.drewnak@52north.org)
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/security
  
********************************************************************************
52°North WSS 快速入门
********************************************************************************

快速入门
================================================================================

　　52°North WSS 依据策略设置对 OGC 进行代理，从而控制其访问。

　　在 OSGeo-Live 中，52°North WSS 被用于保护 WMS、WFS、WPS、SOS 分别一个实例。通过以下步骤可以获得被保护的服务列表，并测试访问这些服务。

1) 选择 :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North WSS` 启动 52°North WSS 或使用 `该链接 <http://localhost:8080/wss/site/manage.html>`_ 。
  
2) 52°North WSS 管理界面将显示在浏览器窗口中。

3) 若需要，以 user/user 登录。

4) 点击 *Manage WSS* 可获取此系统连接的服务的列表。
  
　　对于每一个被保护的服务（又称为 *Enforcement Point* 执法点），该表格显示了其认证方式（*httpauth*, *saml*, *WSS*, ...）。
 
　　以下操作请求 52°North WSS 的功能信息：

5) 访问 http://localhost:8080/wss/service/wms_demis/httpauth?SERVICE=WMS&REQUEST=GetCapabilities 页面。

6) 以 ``alice``/``alice`` 登录，可获取全部权限。

　　或

7) 以 ``bob``/``bob`` 登录，将获得部分权限。有一部分图层将被隐藏。

　　进一步测试：以 WMS 服务方式访问 http://localhost:8080/wss/service/wms_demis/httpauth 。请使用一个支持 HTTP 认证的客户端，例如 :doc:`uDig <../overview/udig_overview>` ，并以使用常规 WMS 服务的方式请求数据。


其它信息
================================================================================

用户定义位置
--------------------------------------------------------------------------------
``/var/lib/tomcat6/webapps/wss/WEB-INF/classes/users.xml``

用户权限定义位置
--------------------------------------------------------------------------------
``/var/lib/tomcat6/webapps/wss/WEB-INF/classes/permissions.xml``

详细信息
--------------------------------------------------------------------------------
请访问 52°North `使用手册 <http://52north.org/communities/security/general/user_guide_intro.html>`_ 。
