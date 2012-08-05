:Author: Oliver Tonnhofer
:Translator: Mauricio Miranda
:Translator: Jorge Sanz
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _mapproxy-quickstart-es:
 
.. image:: ../../images/project_logos/logo-mapproxy.png
  :alt: project logo
  :align: right
  :target: http://mapproxy.org/

Guía de Inicio Rápido de MapProxy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

MapProxy es **la** navaja suiza para todo tipo de servicios WMS y de teselas. Cachea, acelera y transforma datos provenientes de servicios de mapas existentes y los sirve a cualquier cliente de escritorio o web.

.. image:: ../../images/screenshots/800x600/mapproxy.png
  :alt: Diagrama de MapProxy
  :align: center

MapProxy no es sólo una solución de caché, también ofrece muchas funcionalidades nuevas e innovadoras como el soporte completo para clientes WMS.

Iniciar el servicio de demo
--------------------------------------------------------------------------------

MapProxy ofrece flexibles opciones de despliegue y puede ser integrado, por ejemplo, con Apache. Pero también puedes iniciar MapProxy como un servicio autónomo, que es la mejor opción para empezar.

Para iniciar MapProxy como un servicio autónomo haga clic en 
:menuselection:`Geospatial --> Web Services --> MapProxy --> Start MapProxy`.


Ver el servicio de demostración de MapProxy
--------------------------------------------------------------------------------

La página de demostración de MapProxy contiene un sencillo cliente
WMS y teselas para cada capa configurada. No se puede seleccionar la proyección para las capas WMS por ejemplo, pero es suficiente para verificar rápidamente que la instalación funciona.

Puede abrir la demostración en Firefox: `<http://localhost:8012/demo>`_


Conectarse desde un SIG de escritorio
--------------------------------------------------------------------------------

Puedes aregar MapProxy en cualquier SIG de escritorio con soporte para WMS, como uDig, QGIS o gvSIG. La URL del servicio es: 
`<http://localhost:8011/service?>`_

La configuración de ejemplo de MapProxy contiene unas cuantas capas que usan diferentes motores de mapas y distintos datos. Abajo puedes ver más detalles acerca de cada capa.

.. figure:: ../../images/screenshots/800x600/mapproxy_udig.png
  :alt: Ejemplo de MapProxy en uDig
  :align: center
  
  Capa WMS simple con datos generados desde dos fuentes e información
  (*GetFeatureInfo*) desde una de las fuentes.


Capas disponibles
--------------------------------------------------------------------------------

**mapnik**:
  La población mundial generada por Mapnik. No es necesario iniciar el servicio de Mapnik porque esta capa usa el soporte integrado de Mapnik en MapProxy.

**tilelite**:
  TileLite es un servidor simple que entrega teselas desde el servicio de población mundial de Mapnik. Esta capa demuestra la posibilidad de incluir servicios de teselas existentes en MapProxy y ponerlos disponibles como WMS.
  Debes iniciar TileLite con *Start Mapnik & TileLite* antes de utilizar a esta capa.

**geoserver**:
  La población de EEUU generada por el motor de WMS de Geoserver. Esta capa también soporta consultas ``GetFeatureInfo`` las cuales son redirigidas a la fuente WMS.
  Debes iniciar Geoserver con |osgeolive-appmenupath-geoserver| antes de utilizar esta capa.

**mapnik_geoserver**:
  Esta capa demuestra la posibilidad de combinar múltiples fuentes en una
  misma capa. En este caso se combinan la población mundial desde Mapnik 
  con la población de EEUU desde Geoserver. El soporte de ``GetFeatureInfo``
  para la población de EEUU está también disponible.
  Debes iniciar Geoserver con |osgeolive-appmenupath-geoserver| antes 
  de utilizar esta capa.

**mapserver**:
  Esta capa usa el juego de datos de ejemplo Itasca de Mapserver. Es un
  juego de datos local y usa la característica de *coverages* para limitar
  el rectángulo de acceso a la zona de Itasca, Illinois.

Crear tu propia configuración
--------------------------------------------------------------------------------

Puedes usar ``mapproxy-util`` para crear nuevas plantillas de configuración
e iniciar el servidor de prueba.

Para crear una nueva configuración::

  mapproxy-util create -t base-config ~/mapproxy

Para iniciar el servidor de prueba en el puerto 8011 con la configuración creada::

  mapproxy-util serve-develop ~/mapproxy/mapproxy.yaml -b 0.0.0.0:8011

Ahora puedes ver la página de demostración en http://127.0.0.1:8011/demo/.
MapProxy se recargará automáticamente si haces cambios en el archivo de
configuración.


¿Qué es lo siguiente?
--------------------------------------------------------------------------------

* Leer la `documentación de MapProxy <../../mapproxy/index.html>`_

* Leer la configuración de ejemplo (``/usr/local/share/mapproxy/mapproxy.yaml``)

