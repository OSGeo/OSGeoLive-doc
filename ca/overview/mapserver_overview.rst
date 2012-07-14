:Author: Alan Boudreault, Steve Lime
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-mapserver-new.png
  :scale: 65 %
  :alt: project logo
  :align: right
  :target: http://mapserver.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


MapServer
================================================================================

Servei web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

MapServer és un motor de renderitzat de dades geogràfiques de `Codi Obert <http://www.opensource.org>`_ escrit en C. A part de poder visualitzar dades SIG, MapServer permet crear imatges de mapes geogràfics, o sigui, mapes que poden conduïr els usuaris a continguts web. Per exemple, Minnesota DNR `Recreation Compass <http://www.dnr.state.mn.us/maps/compass.html>`_ proporciona als usuaris més de 10.000 pàgines web, informes i mapes des d'una sola aplicació. Aquesta mateixa aplicació serveix com a "motor de mapes" per altres parts del lloc web, proporcionant context espacial on sigui necessari.

MapServer va ser desenvolupat originalment en el projecte ForNet de la University of Minnesota (UMN) en col·laboració amb la NASA i Minnesota Department of Natural Resources (MNDNR). Més tard va ser hostatjat pel projecte TerraSIP, un projecte patrocinat per la NASA entre la UMN i un consorci de gestió de la terra.

MapServer ara és un projecte d'`OSGeo <http://www.osgeo.org>`_, i és mantingut per un nombre creixent de programadors (quasi 20) de tot el món. És recolzat per un grup divers d'organitzacions que financen millores i manteniment, i és administrat a OSGeo pel MapServer Project Steering Committee composat per desenvolupadors i altres contribuïdors.

Característiques principals
--------------------------------------------------------------------------------

.. image:: ../../images/screenshots/1024x768/mapserver.png
  :scale: 50 %
  :alt: screenshot
  :align: right

* Producció cartogràfica avançada

  * Dibuixat d'elements i execució d'aplicacions depenent de l'escala
  * Etiquetat d'elements incloent la mediació en la col·lisió d'etiquetes
  * Suport de tipus TrueType per etiquetatge i simbolització
  * Automatització d'elements del mapa (barra d'escala, mapa de referència i llegenda)
  * Mapes temàtics emprant classes lògiques o definides amb expressions regulars
  * Suport de renderitzador extern via mòdul per AGG, Cairo, GD i OpenGL i altres
  * Proveïment especial per a la generació de tessel·les

* Suport sofisticat per a la consulta espacial

  * Identificar elements per atributs, punt, quadre delimitador o geometria a través d'una o més capes
  * Suport per consultes raster
  * Producció amb plantilles totalment configurable
  * Generació de consultes basades en OGR

* Suport per als entorns de desenvolupament i els llenguatges de comandes més populars

  * CGI/FastCGI
  * PHP, Python, Perl, Ruby, Java, i .NET

* Sistemes operatius

  * Linux, Windows, Mac OS X, Solaris, i altres

* Una multitud de formats de dades raster i vector

  * Suport natiu per ESRI shapefiles, PostGIS, ESRI ArcSDE i Oracle Spatial
  * Molts altres formats via GDAL i OGR

* Suport de projeccions de mapes

  * Projecció de mapes al vol amb més de 1000 projeccions a través de la biblioteca Proj.4

Estàndards implementats
--------------------------------------------------------------------------------

* Suport de nombrosos estàndards de l'Open Geospatial Consortium (OGC)

  * WMS (client/servidor), WFS no transaccional (client/servidor), WMC, WCS, codificació per filtre, SLD, GML, SOS, OM

Demostració
--------------------------------------------------------------------------------

* `Itasca <http://localhost/mapserver_demos/itasca/>`_

Documentació
--------------------------------------------------------------------------------

* `Documentació de MapServer 6.0.2  <../../mapserver/doc/index.html>`_

Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://www.mapserver.org/

**Llicència:** `MIT-style license <http://mapserver.org/copyright.html#license>`_

**Versió de programari:** 6.0.2

**Sistemes operatius:** Windows, Linux, Mac

**Interfícies API:** C, PHP, Python, Perl, Ruby, Java, and .NET

**Suport:** http://mapserver.org/community/

Guia ràpida
--------------------------------------------------------------------------------
    
* :doc:`Documentació de la guia ràpida <../quickstart/mapserver_quickstart>`
