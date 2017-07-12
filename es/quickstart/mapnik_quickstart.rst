:Author: OSGeo-Live
:Author: Dane Springmeyer
:Translator: Jorge Sanz
:Version: osgeo-live10.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-mapnik.png
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


Mapnik & Leaflet
--------------------------------------------------------------------------------

Además, hay disponible una aplicación de demostración, que permite usar Mapnik para servir teselas dentro de un mapa OSM usando el esquema de OSM/Google.

La demo usa un servidor de teselas diseñado para Mapnik llamado "TileStache"  

  * Más información sobre TileStache: http://tilestache.org/

Para ejecutar la demo simplemente sigue estos pasos:

  #. Haz clic en :menuselection:`Desktop --> Spatial Tools --> Start Mapnik & TileStache`

    * El servidor debería arrancar en una ventana de terminal (que se mantiene abierta y muestra información básica de *debug*).
        
  #. Comprueba que el servidor está funcionando haciendo una petición de tesela al servidor enhttp://localhost:8012/example/0/0/0.png

  #. Entonces puedes visitar la página de demostración de Leaflet:
    
    * Esta página está en `http://localhost/leaflet-demo.html <../../../leaflet-demo.html>`_


¿Qué es lo siguiente?
--------------------------------------------------------------------------------

* Tutoriales de Mapnik

  Sigue los tutoriales_ para aprender más sobre Mapnik.

.. _tutoriales: https://github.com/mapnik/mapnik/wiki/MapnikTutorials

* Explora los ficheros en el DVD

  Puedes también explorar los ficheros_ incluidos en este DVD.

.. _ficheros: file:///usr/local/share/mapnik/
