.. Consells per a la redacció:
  Els 'Consells per a la redacció' descriuen el contingut que ha d'aparèixer en la secció que ve a continuació.
  El document postgis_overview.rst s'usa com a exemple de referència per a altres documents d'overview.
  Tots els altres documents d'overview han d'eliminar els 'consells per a la redacció' 
  de manera que siguin més fàcils de traduir.

.. Consell per a la redacció:
  Metadades sobre aquest document

:Author: OSGeo-Live
:Author: Barry Rowlingson
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Anna Muñoz
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)


.. Consell per a la redacció:
  El següent element és un àncora HTML per a enllaçar amb aquesta pàgina

.. _postgis-overview:

.. Consell per a la redacció:
  Els logos del projecte s'emmagatzemen aquí:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  i també es pot accedir des d'aquí:
    ../../images/project_logos/<filename>

.. image:: ../../images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: logo del projecte
  :align: right
  :target: http://postgis.refractions.net/

.. Consell per a la redacció:
  Si el projecte és d'OSGeo, o està en incubació, cal incloure-hi el logo de l'organització.
  La llista de projectes d'OSGeo està en aquesta pàgina: http://www.osgeo.org/
  .. image:: images/logos/OSGeo_incubation.png
  .. image:: images/logos/OSGeo_project.png

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: Projecte OSGeo en Incubació
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

.. Consell per a la redacció: Nom de l'aplicació

PostGIS
================================================================================

.. Consell per a la redacció:
  Descripció de la Categoria a la que pertany l'apliació:

Base de dades espacial
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Consell per a la redacció:
  Respondre a les preguntes "Què fa aquesta aplicació?",
  "Quan s'hauria d'usar?", "Perquè l'hauria de triar aquesta i no pas una altra?",
  "Quin grau de maduresa i en quin nivell de desenvolupament es troba?".
  En aquesta secció no s'ha de comentar el tema de la llicència o del programari lliure.
  Els destinataris són professionals GIS o estudiants que s'inicien amb el programari lliure.
  * La primera frase ha d'explicar l'aplicació.
  * Normalment el lector no coneixerà l'àmbit d'ús de l'aplicació. Per tant, les següents línies cal que ho expliquin.
    Per exemple: per GeoKettle, les dues línies següents haurien d'explicar en què consisteix la Geospatial Business Intelligence.
  * Els darrers 2 paràgrafs d'aquesta secció haurien de proporcionar una descripció detallada i els avantatges de l'aplicació des d'una perspectiva d'usuari.

PostGIS proporciona el suport espacial a la base de dades objecte-relacional PostgreSQL, 
de manera que es pot usar com a base de dades per a sistemes d'informació geogràfica (SIG) i aplicacions de cartografia web 
tal com ho fa Oracle Spatial amb la base de dades Oracle.

PostGIS és estable, ràpid, segueix els estàndards, disposa de centenars de funcions espacials 
i actualment és la base de dades espacial de codi obert més utilitzada.
Diferents organitzacions de tot el món usen PostGIS, incloent agencies governamentals no gaire proclius al risc 
així com organitzacions que emmagatzemen terabytes de dades i que serveixen diàriament milions de peticions web.

L'administració de la base de dades es pot realitzar fent ús de pgAdmin, phpPgAdmin, entre altres.
La importació/exportació de les dades es pot fer usant eines en línia de comandes 
(shp2pgsql, pgsql2shp, ogr2ogr, dxf2postgis) o bé mitjançant clients GIS ja siguin web o d'escriptori
que permeten visualitzar i manipular les dades PostGIS.

.. Consell per a la redacció:
  Cal incloure una imatge de l'aplicació que acostuma a ser una captura de pantalla
  o un conjunt de captures de pantalla.
  Guardeu la imatge en image/<application>_<name>.gif . Eg: udig_main_page.gif
  Les captures de pantalla s'han de fer amb una resolució de pantalla de 1024x768.
  El fons d'escriptori no ha d'aparèixer degut a que pot canviar amb les versions.

.. image:: ../../images/screenshots/800x600/pgadmin.gif
  :scale: 55 %
  :alt: pgAdmin database manager
  :align: right

Funcionalitats Principals
--------------------------------------------------------------------------------

* Centenars de funcions espacials
  
  * Buffers, unions, overlays, distància i moltes més

* Integritat transaccional ACID
* Indexació espacial R-Tree
* Suport multiusuari
* Bloqueig a nivell de fila
* Replicació
* Particionat
* Seguretat basada en rols
* Table-spaces, esquemes

Estàndards implementats
--------------------------------------------------------------------------------

.. Consell per a la redacció: Llista dels estàndards OGC o similars que soporta.

* Acompleix l'estàndard OGC (SFSQL)

Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://postgis.refractions.net/

**Llicència:** GNU General Public License (GPL) version 2

**Versió de programari:** 1.5

**Plataformes suportades:** Windows, Linux, Mac

**Interface de l'API:** SQL

.. Consell per a la redacció:
  Enllaçar a una pàgina web que mostri un llistat amb els detalls del suport bàsic per a l'aplicació.
  Aquest llistat hauria d'incloure tant els contactes comercials com els de la comunitat.

**Suport:** http://www.osgeo.org/search_profile


Guia d'inici ràpid
--------------------------------------------------------------------------------
    
* :doc:`Documentació de la Guia d'inici ràpid <../quickstart/postgis_quickstart>`
