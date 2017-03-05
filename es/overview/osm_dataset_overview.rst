:Author: Hamish Bowman, Marco Brancolini
:Reviewer: Cameron Shorter
:Version: osgeo-live10.0
:Translator: David Mateos
:Translator: Jorge Arévalo
:Translator: Javi Sánchez
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _osm_dataset-overview:

.. image:: ../../images/project_logos/logo-osm.png
  :alt: project logo
  :align: right
  :target: https://www.openstreetmap.org/


OpenStreetMap
================================================================================

Datos cartográficos
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

OpenStreetMap es mapa del mundo creado por una comunidad de usuarios. Ha crecido hasta convertirse en una de las fuentes de datos cartográficos a escala local más detallados que existen. Estos datos cartográficos son creados
y mantenidos por miles de voluntarios de todo el mundo, de manera similar a cómo se mantiene la enciclopedia en línea, wikipedia.

El aspecto más visible de OSM es la interfaz web basada en teselas, accesible a través de http://osm.org. Pero los mapas también se pueden visualizar, importar o editar en otras aplicaciones como :doc:`QGIS <qgis_overview>` , :doc:`OpenLayers <openlayers_overview>`, ArcGIS o
aplicaciones específicas de OSM.

El corazón del proyecto son los datos que hay por debajo, que cualquier puede editar, visualizar o utilizar para crear mapas personalizados. Fundamentalmente, OSM se enfoca en los datos. Los mapas resultante son simplemente una
consecuencia de esto.

La distribución OSGeo-Live incluye un extracto de los datos de OSM a nivel de ciudades, que es usado en ejemplos de otras aplicaciones.

.. image:: ../../images/screenshots/1024x768/osm-screenshot.jpg 
  :scale: 55 %
  :alt: captura de pantalla de OSM 
  :align: right


Características principales
--------------------------------------------------------------------------------

* Los datos vectoriales están etiquetados con nombres y otros atributos.
* Es posible extraer subconjuntos locales de los datos.
* Los datos son almacenados como nodos WGS84 (latitud-longitud) y cadenas de nodos. Los metadatos están permitidos a nivel de punto, polilínea y cobertura completa.
* Etiquetado enriquecido, normalmente mucho más detallado que en cualquier otra fuente de datos.
* Un repositorio global de conocimiento local.

Conjuntos de datos incluidos en la distribución OSGeo-Live
--------------------------------------------------------------------------------

- feature_city.osm.bz2: Un fragmento grande del área de la ciudad como un BZip2 comprimido que contiene un archivo de texto en formato XML.

- feature_city_CBD.osm.bz2: Un subconjunto más pequeño que abarba sólo el centro (en inglés *Central Business District - CBD*).

- feature_city_poi.db: Una base de datos Sqlite DB de "puntos de interés" extraidos a partir de feature_city.osm.bz2. Contiene la localización de pubs, gasolineras, restaurantes, supermercados, etc. 

- La documentación de Quickstarts y Overviews muchas veces se refieren a estos nombres de ficheros, independiente de la ciudad de ejemplo utilizada, que puede variar entre las diferentes versiones.

Los datos OSM del fichero feature_city.osm se han importado con osm2pgsql a una base de datos PostGIS llamada "osm_local". El sistema de referencia espacial (SRS por sus siglas en inglés) usado para esta base de datos es latitud-longitud con el datum WGS84 (código EPSG 4326) y se puede reproyectar a cualquier otro, como la pseudo-projección "Spherical-Mercator" de Google para generar webtiles de Mapnik.
feature_city_CBD.osm.bz2 está cargado en otra base de datos PostGIS llamada "pgrouting".


Detalles
--------------------------------------------------------------------------------

**Página web:** https://www.openstreetmap.org/

**Licencia:**  `Open Data Commons Open Database License (ODbL) <http://opendatacommons.org/licenses/odbl/>`_

**Versión de los datos:** Live database

**Formato de los datos:** XML

**Sistema de coordenadas espaciales:** Lat-Long WGS84

**Soporte:** https://www.openstreetmap.org/help

