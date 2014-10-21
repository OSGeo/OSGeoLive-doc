:Author: Hamish Bowman
:Reviewer: Cameron Shorter
:Version: osgeo-live6.5
:Translator: David Mateos
:Translator: Jorge Arévalo
:Translator: Javi Sánchez
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _osm_dataset-overview:

.. image:: ../../images/project_logos/logo-osm.png
  :alt: project logo
  :align: right
  :target: http://www.osm.org/


OpenStreetMap
================================================================================

Datos cartográficos
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

OpenStreetMap es mapa del mundo creado por una comunidad de usuarios. Ha crecido hasta convertirse en una de las fuentes de datos cartográficos a escala local más detallados que existen. Estos datos cartográficos son creados
y mantenidos por miles de voluntarios de todo el mundo, de manera similar a cómo se mantiene la enciclopedia en línea, wikipedia.

El aspecto más visible de OSM es la interfaz web basada en teselas, accesible a través de http://osm.org. Pero los mapas también se pueden visualizar, importar o editar en otras aplicaciones como Quantum GIS, OpenLayers, ArcGIS o
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
* Repositorio global de conocimiento.

Conjuntos de datos incluidos en la distribución OSGeo-Live
--------------------------------------------------------------------------------

Nottingham.osm.bz2:
 Un extracto del área urbana más grande de Nottingham en un fichero de texto XML comprimido con BZip2.

Nottingham_CBD.osm.bz2:
 Un subconjunto más pequeño de datos que cubre únicamente el distrito de negocios central de Nottingham.

- feature_city.osm.bz2 y feature_city_CBD.osm.bz2 son los mismos datos de la ciudad.          

 Documentación de Quickstarts y Overviews muchas veces se refieren a estos nombres de ficheros, independiente de la ciudad de ejemplo utilizada, que puede variar entre las diferentes versiones.

- feature_city_poi.db

 Base de Datos Sqlite de nodos de "puntos de interés" sacados del fichero feature_city.osm.bz2. Contiene pubs, fuel stations, restaurants, etc.

Datos OSM importados en Bases de Datos PostGIS: 

Son datos OSM del fichero feature_city.osm, importados con osm2pgsql en dos diferentes proyecciones:
 
- osm_local: Importado en lat/long (epsg:4326)

- osm_local_smerc: Importado en la pseudo-projección "Espherical mercator" de Google para generar webtiles de Mapnik.

Detalles
--------------------------------------------------------------------------------

**Página web:** http://www.osm.org

**Licencia:** Creative Commons CC-By-SA

**Versión de los datos:** Live database

**Formato de los datos:** XML

**Sistema de coordenadas espaciales:** Lat-Long WGS84

**Soporte:** http://wiki.osm.org

