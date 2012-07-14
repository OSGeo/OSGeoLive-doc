:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Anna Muñoz Bollas
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-osgearth.gif
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://osgearth.org/


osgEarth
================================================================================

Eines per a la representació del Terreny
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

osgEarth és un conjunt escalable d'eines per la representació del terreny 
d'OpenSceneGraph_ (OSG), un motor gràfic 3D de codi obert d'altes prestacions.
Només cal crear un fitxer XML que apunti al seu conjunt d'imatges, 
models d'elevació i dades vectorials, carregui-ho en la seva aplicació
OSG favorita i llest!

osgEarth suporta tot tipus de dades i ve amb un munt d'exemples 
que l'ajudaran a posar-se en marxa d'una manera ràpida i senzilla.

.. _OpenSceneGraph: http://www.openscenegraph.org/

.. image:: ../../images/screenshots/1024x768/osgearth.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

Característiques Principals
--------------------------------------------------------------------------------

osgEarth fa fàcil la implementació models del terreny a escala:

* Crea models del terreny - ja sigui en línia o de forma dinàmica en temps d'execució
* Carrega models del terreny de la totalitat del globus terrestre sense necessitat d'escriure cap línia de codi  
* Tractament de les imatges per capes per obtenir productes d'alta resolució
* Combina imatges, models d'elevació i fonts de dades vectorials al vol
* Configura el "tile cache" per maximitzar el rendiment
* Ajusta l'opacitat de les capes per aconseguir efectes de multi-textura

Però osgEarth fa alguna cosa més que renderitzats del terreny:

* Visualitza dades vectorials (GIS) sobre el terreny
* Reprojecta dades entre diferents sistemes de coordenades de referència
* Situa models externs sobre el terreny mitjançant coordenades de latitud i longitud
* Realitza test d'intersecció de manera ràpida
* Incorpora noves dades en una base de dades VPB existent (sense necessitat de recrear-la)
* Accés directe als "tiles" del terreny per a processos no visuals

Dades que es poden importar:

* Imatges GeoTIFF i arxius DEM ("Digital Elevation Model") a més de molts altres formats
* Dades vectorials com arxius de format ESRI 'shapefiles'
* Dades compatibles amb els estàndards d'OGC (com WMS_)
* Capes de SIG publicades amb Mapserver_ o `ESRI ArcGIS Server` _
* Mapes 'en línia' com OpenStreetMap_, `ArcGIS Online` _, o `NASA OnEarth` _

.. _WMS: http://www.opengeospatial.org
.. _MapServer: http://mapserver.org
.. _`ESRI ArcGIS Server`: http://www.esri.com/software/arcgis/arcgisserver/
.. _OpenStreetMap: http://openstreetmap.org
.. _`ArcGIS Online`: http://resources.esri.com/arcgisonlineservices/
.. _`NASA OnEarth`: http://onearth.jpl.nasa.gov


Detalls
--------------------------------------------------------------------------------

**Lloc Web:** http://osgearth.org/

**Llicència:** GNU Lesser General Public License (LGPL) 

**Versió de Programari:** 2.0

**Plataformes suportades:** Linux, Mac, Windows

**API Interfaces:** C++

**Suport Comercial:** http://osgearth.org/#ProfessionalServices


Guia d'inici ràpid
--------------------------------------------------------------------------------

* :doc:`Documentació de la Guia d'inici ràpid <../quickstart/osgearth_quickstart>`


