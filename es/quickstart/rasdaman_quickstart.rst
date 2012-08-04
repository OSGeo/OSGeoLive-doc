:Author: Jinsongdi Yu (j.yu@jacobs-university.de)
:Author: Michael Owonibi (o.michael@jacobs-university.de)
:Author: Peter Baumann (p.baumann@jacobs-university.de)
:Author: Dimitar Misev (d.misev@jacobs-university.de)
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-rasdaman.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.rasdaman.org


********************************************************************************
Guía de inicio rápido de rasdaman
********************************************************************************

rasdaman es un servidor *raster* que permite la realización de consultas sobre datos *rasters* n-D almacenados en una base de datos relacional estándar.

Esta guía de inicio rápido describe cómo probar algunas consultas en un entorno de pruebas de objetos *raster*. Antes de probar estos ejemplos el servidor rasdaman debe ejecutarse (Geospatial -> Databases -> Rasdaman -> Start Rasdaman Server).

Explorando los ejemplos de 1-D a 4-D
================================================================================

    * Visita la demostración `Earthlook <http://localhost:8080/earthlook/index.php>`_ para explorar algunos juegos de datos de ejemplo. Los pequeños son parte de OSGeo-Live, aquellos que utilizan juegos de datos más grandes se están redirigiendo directamente al `sitio web Earthlook <http://kahlua.eecs.jacobs-university.de/~earthlook/demos/index.php>`_ .

Ejecutar consultas locales
================================================================================

    * Abrir una terminal y abrir la base de datos de ejemplo instalada en local
    * Usar la utilidad para enviar consultas y recibir resultados, por ejemplo::

      $ rasql -q "select png((char)(c.red / (c.red + c.green) - c.green / (c.red + c.green)) > 0.6 * 255) from rgb AS c" --out file

    * Utiliza tu herramienta favorita de visualización de imágenes para explorar el fichero generado.


Crea tu propia base de datos
================================================================================

    * Abrir una terminal
    * `Descargar e instalar rasdaman <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/wiki/Download>`_ y `sus requisitos previos <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/wiki/RequiredPackages>`_
    * Ejecutar el guión de demostración de carga::

      $ install_demo.sh

    * Usar la utilidad para enviar consultas y recibir resultados, por ejemplo::

      $ rasql -q "select png( NIR ) from NIR" --out file


Cosas que se pueden probar:
================================================================================

Aquí hay algunos retos adicionales que puedes probar:

    * Explorar los juegos de datos de demostración usando la `guía del lenguaje de consulta rasql <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/browser/manuals_and_examples/manuals/pdf/ql-guide.pdf>`_
    * Para aprender más sobre el estándar OGC `Web Coverage Processing Service <http://www.opengeospatial.org/standards/wcps>`_ (WCPS) (que fuer fuertemente inspirado por rasdaman), un buen punto de partida es la página de `documentación y tutoriales <http://kahlua.eecs.jacobs-university.de/~earthlook/tech/interface-wcps.php>`_ . 

