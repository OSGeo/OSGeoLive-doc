:Author: OSGeo-Live
:Author: Dane Springmeyer
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-mapnik.png
  :scale: 80 %
  :alt: project logo
  :align: right

Guía de inicio rápido de Mapnik 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Mapnik es una caja de herramientas para desarrollar aplicaciones cartográficas. Sobre todo, Mapnik trata sobre hacer mapas bonitos. Es realmente extensible y adecuada tanto para aplicaciones de escritorio como para desarrollo web.


Mapnik & Python
--------------------------------------------------------------------------------

Mapnik y sus enlaces a python están instalados y listos para ser usados en esta máquina.

Crear mapas en python es sencillo con Mapnik. Ejecuta `python` en una línea de comandos para entrar en un intérprete de python y prueba esto::

    >>> import mapnik, os
    >>> m = mapnik.Map(600,400)
    >>> style = '/usr/local/share/mapnik/demo/population.xml'
    >>> mapnik.load_map(m,style)
    >>> m.zoom_all()
    >>> mapnik.render_to_file(m,'map.png')
    >>> os.system('xdg-open map.png')


.. note::
    
      El código anterior depende de disponer de un fichero XML que Mapnik pueda leer, definiendo las capas
      a leer y los estilos a aplicar sobre dichas capas. Puedes crear uno de estos ficheros desde QGis.
      con el plugin Quantumnik: http://bitbucket.org/springmeyer/quantumnik/


Mapnik & OpenLayers
--------------------------------------------------------------------------------

Además, hay disponible una aplicación de demostración, que permite usar Mapnik para servir teselas dentro de un mapa OSM usando el esquema de OSM/Google.

La demo usa un servidor de teselas diseñado para Mapnik llamado "TileLite"

  * Más información sobre Tilelite: http://bitbucket.org/springmeyer/tilelite/

Para ejecutar la demo simplemente sigue estos pasos:

  #. Haz clic en :menuselection:`Desktop --> Spatial Tools --> Start Mapnik & TileLite`

    * El servidor debería arrancar en una ventana de terminal (que se mantiene abierta y muestra información básica de *debug*).
        
    * Si no se abre la ventana de terminal, entonces prueba a reinstalar TileLite y ejecutar el servidor desde una línea de comandos::
      
        $ sudo easy_install tilelite
        $ liteserv.py /usr/local/share/mapnik/demo/population.xml


  #. Comprueba que el servidor está funcionando visitando la página de bienvenida de TileLite http://localhost:8012

  #. Entonces puedes visitar la aplicación TileLite OpenLayers "World Population":
    
    * La página se encuentra en `http://localhost/mapnik/local.html <../../mapnik/local.html>`_


¿Qué es lo siguiente?
--------------------------------------------------------------------------------

* Tutoriales de Mapnik

  Sigue los tutoriales_ para aprender más sobre Mapnik.

.. _tutoriales: http://trac.mapnik.org/wiki/MapnikTutorials

* Explora los ficheros en el DVD

  Puedes también explorar los ficheros_ incluidos en este DVD.

.. _ficheros: file:///usr/local/share/mapnik/
