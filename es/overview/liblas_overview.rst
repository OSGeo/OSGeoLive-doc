:Autor: Howard Butler
:Revisado por: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:Licencia: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _liblas-overview:

.. image:: ../../images/project_logos/logo-libLAS.png
  :alt: project logo
  :align: right
  :target: http://liblas.org/

libLAS
================================================================================

Acceso a datos LiDAR
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

libLAS es una librería C/C++ para lectura y escritura en el formato común `LiDAR`_ denominado `LAS` El `formato ASPRS LAS`_ es un formato binario secuencial utilizado para almacenar datos previnientes de sensores LiDAR y de software de procesamiento de datos para intercambio y archivo.

.. image:: ../../images/screenshots/800x600/liblas.jpg
  :alt: LiDAR Acquisition
  :align: right
  :scale: 80 %
  
LiDAR (en Inglés Light Detection and Ranging) es una forma de detección de rangos de alta precisión, muy parecida a los sistemas de radar, que utiliza laser como emisión electromagnética. Uno de los productos de los sistemas LiDAR 
es la "nube de puntos". La "nube de puntos" se puede conceptualizar como una serie de puntos de medida que representan distancia desde el sensor a la emisión de vuelta.  El formato ASPRS LAS es el formato más común para almacenar nubes de puntos.

Características principales
--------------------------------------------------------------------------------

* C/C++/Python APIs para lectura, escritura y manipulación de datos LAS
* `Utilidades de línea de comando`_ para manipulación de datos LAS basados en herramientas LAS (`LAStools`_)
* Reproyección de coordenadas via `GDAL <http://gdal.org>`__

Detalles
--------------------------------------------------------------------------------
 
**Sitio Web:** http://liblas.org

**Licencia:** BSD

**Versión de Software:** 1.7.0

**Plataformas soportadas:** Cross Platform C++ -- Mac OS X, Windows (via `OSGeo4W <http://trac.osgeo.org/osgeo4w/>`_), y Linux

**Interfaces API:** C, C++, Python

**Soporte:** `Documentación y soporte <http://liblas.org/community.html>`_

Guía rápida
--------------------------------------------------------------------------------

* :doc:`Documentación de guía rápida <../quickstart/liblas_quickstart>`

.. _`LIDAR`: http://en.wikipedia.org/wiki/LIDAR
.. _`LAStools`: http://www.cs.unc.edu/~isenburg/lastools/
.. _`LAS Format`: http://www.lasformat.org/
.. _`ASPRS Standards Committee`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`formato ASPRS LAS`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`Utilidades de línea de comando`: http://liblas.org/utilities/index.html
.. _`OSGeo4W`: http://trac.osgeo.org/osgeo4w/
.. _`Wikipedia`: http://en.wikipedia.org/wiki/LIDAR
