:Author: Steve Lime
:Reviewer: Stephan Meissl
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Mauricio Miranda
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

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
 Guía de inicio rápido de MapServer
================================================================================

MapServer es una aplicación servidor de `Código Abierto <http://www.opensource.org>`_ que te permite publicar imágenes de mapas geográficos y datos vectoriales a través de internet usando `Estándares OGC <http://www.opengeospatial.org/standards>`_ como `WMS <http://www.opengeospatial.org/standards/wms>`_ y `WFS <http://www.opengeospatial.org/standards/wfs>`_.

Esta guía describe cómo:
     
  * :ref:`mapserver-quickstart-configure-with-mapfile-es`
  * :ref:`mapserver-quickstart-wms-request-es`
  * :ref:`mapserver-quickstart-cmd-es`
  * :ref:`mapserver-quickstart-add-new-layer-es`
  * :ref:`mapserver-quickstart-styling-a-layer-es`

.. _mapserver-quickstart-configure-with-mapfile-es:

Configurar MapServer usando un archivo de configuración "mapfile"
================================================================================

.. note:: **¿Qué aprenderé?** En esta sección, aprenderás qué es un mapfile y cómo configurarlo para permitirle a MapServer servir un archivo shape como imágenes usando WMS.

¿Qué es un MapFile?
--------------------------------------------------------------------------------

El `Mapfile <http://mapserver.org/mapfile/index.html>`_ es el archivo de configuración que MapServer usa para convertir datas geoespaciales en imágenes o datas vectoriales. Su propósito principal es definir las capas que puede generar, cómo obtener los datos necesarios y cómo dibujarlas (ej.: color, símbolo, etiqueta, etc...).

Creando mi primer MapFile
--------------------------------------------------------------------------------

#. Abre cualquier editor de texto (Mousepad es el editor de texto por defecto en el Live DVD: :menuselection:`Applications --> Accessories --> Mousepad`).
#. Crea el archivo "mapserver_quickstart.map" en tu directorio en tu carpeta personal: :file:`/home/user/mapserver_quickstart.map`

Agrega el siguiente contenido en el archivo::

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

.. note::
    
   El ejemplo usa el conjunto d edatos de *Natural Earth*, que se encuentra instalado en el Live DVD: :file:`~/data/natural_earth` (un atajo para :file:`/usr/local/share/data/natural_earth`)

Cada objeto en el mapfile empieza con su nombre (por ejemplo **MAP**) y termina con un **END**. Un mapfile siempre empieza con un objeto **MAP** y debería contener una lista de objetos **LAYER** que son la capas que el mapfile puede leer y dibujar. En nuestro mapfile, tenemos sólo una capa definida.

Ahora démosole una mirada a los objetos (y propiedades) definidos en nuestro mapfile: 
 * EXTENT : define los límites por defecto para nuestra configuración.
 * LAYER : define el acceso y la froma de mostrar un conjunto de datos espaciales. Agregaremos otra capa más tarde.
 * SHAPEPATH : define la ruta hacie el archivo con contiene los datos (ej.: archivos shape o imágenes tiff). 

Si miramos un poco más de cerca el objeto **LAYER**, veremos que contiene una serie de propiedades y objetos. Entre ellos están:
 * STATUS : la capa puede ser dibujada (*ON*), no puede ser dibujada (*OFF*) o es siempre dibujada (*DEFAULT*).
 * TYPE : el tipo de geometría que MapServer debería usar para dibujar los datos en la imagen. En nuestro mapfile, los datos serán dibujados como polígonos (*polygons*).
 * DATA : el nombre del archivo que usa la capa, en este caso un archivo shape.
 * CLASS : determina cómo dibujar la capa (estilo). Hablaremos de este objeto más adelante.

.. note:: En la `documentación <http://mapserver.org/mapfile/index.html>`_ de MapServer puedes encontrar una lista completa de los objetos y propiedades disponibles.

.. _mapserver-quickstart-cmd-es:

Generar una imagen de mapa con MapSerever usando la línea de comandos
===============================================================================

A pesar de que MapServer está orientado a aplicaciones web, también puede producir imágenes en la línea de comandos. Esto puede ser útil si estás buscando mapeo repetitivo o mientras estás haciendo pruebas.

Abre un terminal (Applications/Accessories/Terminal Emulator) y escribe

 shp2img -m mapserver_quickstart.map -o mymap.png

Si este comando corre satisfactoriamente, serás capaz de ver el mapa generado en file:///home/user/mymap.png.

.. _mapserver-quickstart-wms-request-es:

Generar una imagen de mapa con MapServer usando una consulta **GetMap** de WMS
==================================================================================

.. note:: 

**¿Qué aprenderé?** Aprenderás cómo generar una imagen con capas desde un mapfile con MapServer usando una consulta de OGC WMS.

Abre el navegador web y coloca la siguiente dirección::

  http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Admin%20Countries&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=PNG&WIDTH=800&HEIGHT=600

¿Qué significa lo anterior? Si lo ponemos en palabras simples, es una consulta **GetMap** de WMS `Web Map Service <http://www.opengeospatial.org/standards/wms>`_ que le dice a MapServer que "*use el siguiente mapfile para generar una capa específica como una imagen png basada en ciertos parámetros provisto por el usuario como el tamaño de la imagen, los límites geográficos, la proyección, etc.*". Todas las capas especificadas en la propiedad "*&LAYERS=...*" que tengan *STATUS ON* en el mapfile, además de todas las capas con *STATUS DEFAULT*, serán dibujadas. El resultado debería parecerse a lo siguiente:

  .. image:: ../../images/screenshots/800x600/mapserver_map.png
    :scale: 70 %

.. note:: Todos los parámetros de la consulta pertenecen al estándar WMS, excepto "*?map=/home/user/mapserver_quickstart.map*", que es específico de MapServer.  

.. _mapserver-quickstart-add-new-layer-es:

Agregar una nueva capa al "mapfile" para servir un archivo shape local
================================================================================

.. note:: 

  **¿Qué aprenderé?** Aprenderás cómo agregar una nuevo objeto capa a la definición de tu mapfile.

Agregaremos ahroa una nueva capa a nuestro mapfile. Antes del último *END*, agrega la siguente configuración::

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

Ahora tenemos 2 definiciones de capas en nuestro mapfile. Fíjate que la nueva capa que acabamos de agregar tiene la propiedad "STATUS ON", esto significa que a menos que sea específicamente requerida, no será generada.

Usemos nuestra consulta **GetMap** anterior y agreguemos nuestra nueva capa "Lakes" a la imagen generada. Simplemente necesitamos agregar el nombre de la nueva capa en la lista de la propiedad "LAYERS":

 http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Admin%20Countries,Lakes&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=PNG&WIDTH=800&HEIGHT=600

La imagen generada por MapServer se parece a nuestro mapa anterior pero con el agreado de los lagos, provistos por nuestra nueva capa:

  .. image:: ../../images/screenshots/800x600/mapserver_lakes.png
    :scale: 70 %

.. _mapserver-quickstart-styling-a-layer-es:

Darle estilo a una capa usando las configuraciones de "mapfile"
================================================================================

.. note:: **¿Qué aprenderé?** Verás un ejemplo de cómo darle estilos a los elementos de una capa dependiendo de algunas de sus propiedades.

En un mapfile, un objeto LAYER puede contenter infitos objetos CLASS. Estos son usados para darle estilo a los elementos contenidos in los datos espaciales (DATA). Por ejemplo, si miramos más de cerca a nuestro archivo "10m_lakes" usando una herramienta como `ogrinfo <http://www.gdal.org/ogrinfo.html>`_, veremos la geometría y la definición de atributos que contiene. Estos valores de atributos pueden ser usados para dibujar los elementos dentro del conjunto de datos en forma diferente usando múltiples objetos CLASS.

En nuestro conjunto de datos "10m_lakes", tenemos el atributo *ScaleRank*, que parece estar relacionado con el tamaño del lago. Podemos usar esto para generar cada lago en forma diferente. En el objeto LAYER, agregaremos otro objeto CLASS justo antes del que tenemos::

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

¿Qué hace nuestro nuevo objeto CLASS? Básicamente, le dice a MapServer que dibuje los elementos que tengan "ScaleRank" igual a "0" o "1", con una línea exterior negra. Los objetos CLASS son siempre leídos desde arriba hacia abajo por cada elemento a ser dibujado. Cuando un elemento concuerda con la expresión ("EXPRESSION") especificada en una clase (CLASS), esa clase es usada para generar el elemento. Si el elemento no concuerda con una clase, se revisa la clase siguiente. Si un elemento con concuerda con ninguna clase, entonces no se dibuja y si la última clase en la capa no contiene un objeto EXPRESSION, entonces actúa como clase por defecto. La propiedad "CLASSITEM" le dice a MapServer qué atributo usar para evaluar la expresión definida en el objeto EXPRESSION.

El resultado de esta modificación debería hacer que los lagos grandes en nuestro mapa sean generados con un borde negro:

  .. image:: ../../images/screenshots/800x600/mapserver_lakes_scalerank.png
    :scale: 70 %

.. note:: 

Aprende más acerca de los objetos `EXPRESSIONS <http://mapserver.org/mapfile/expressions.html>`_.

¿Qué sigue?
================================================================================

Este es un ejemplo simple pero puedes hacer más, mucho más. El sitio web del proyecto MapServer contiene muchos recursos que pueden ayudarte a empezar. Aquí tienes algunos recursos para revisar:

* Lee la introducción a MapServer: `Introduction to MapServer <http://mapserver.org/introduction.html#introduction>`_.
* Dale una mirada al tutorial que contiene más ejemplos de mapfile: `MapServer Tutorial <http://www.mapserver.org/tutorial/index.html>`_.
* Revisa el siguiente documento para aprender más de los estándares OGC en MapServer (WMS, WFS, SLD, WFS Filter Encoding, WCS, SOS, etc.): `OGC Support and Configuration <http://www.mapserver.org/ogc/index.html>`_.
* ¿Estás listo para usar MapServer? Entonces únete a la comunidad en las `Listas de Correo <http://www.mapserver.org/community/lists.html>`_ para intercambiar ideas, discutir potenciales mejoras y hacer preguntas.
