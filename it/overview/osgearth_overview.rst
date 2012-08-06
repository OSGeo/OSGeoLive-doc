:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:Translator: Luca Delucchi
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-osgearth.gif
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://osgearth.org/


osgEarth
================================================================================

Terrain rendering toolkit
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

osgEarth è una serie di strumenti scalabili per restituzione grafica del terreno
per OpenSceneGraph_ (OSG), uno applicazione open source, altamente performante, 
per grafica 3D.  Basta creare un semplice file XML, puntarlo verso le vostre 
immagini, mappe di elevazione, e dati vettoriali, caricarlo nella vostra applicazione 
OSG preferita, e via!
osgEarth supporta tutti i tipi di dati e viene fornito con un sacco di esempi 
per aiutarvi a iniziare a lavorare velocemente e facilmente. 

.. _OpenSceneGraph: http://www.openscenegraph.org/

.. image:: ../../images/screenshots/1024x768/osgearth.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

Caratteristiche Principali
--------------------------------------------------------------------------------

osgEarth rende semplice di creare modelli del terreno scalabili:

* Crea modelli di terreno - sia offline, si dinamicamente al volo
* Caricare il terreno dell'intero pianeta senza scrivere alcun codice
* Immagini per produrre riquadri ad alta risoluzione
* Combina diverse sorgenti diti di immagini, mappe dell'elevazione, e vettoriali al volo
* Impostare cache per le tile per massimizzare le prestazioni
* Regolare l'opacità del livello per effetti multi-texturing 

Ma osgEarth fa molto più che restituire terreni: 

* Drape vector (GIS) data on the terrain 
* Reproiettare dati attraverso differenti sistemi di coordinate
* Place external models on the terrain with lat/long coordinates 
* Fare un veloce test dell'intersezione
* Incorporare nuovi dati nei database VPB esistenti (senza ricostruirli) 
* Access terrain tiles directly for non-visual processes 

Elementi che potete vedere:

* Immagini GeoTIFF e Modelli Digitali del Terremo (DEM) (più molti altri formati) 
* Dati vettoriali come ESRI shapefiles 
* Dati web conformi ad OGC (come WMS_) 
* Layer GIS pubblicati con MapServer_ o `ESRI ArcGIS Server`_
* Mappe online come OpenStreetMap_, `ArcGIS Online`_, o `NASA OnEarth`_

.. _WMS: http://www.opengeospatial.org
.. _MapServer: http://mapserver.org
.. _`ESRI ArcGIS Server`: http://www.esri.com/software/arcgis/arcgisserver/
.. _OpenStreetMap: http://openstreetmap.org
.. _`ArcGIS Online`: http://resources.esri.com/arcgisonlineservices/
.. _`NASA OnEarth`: http://onearth.jpl.nasa.gov


Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://osgearth.org/

**Licenza:** GNU Lesser General Public License (LGPL) 

**Versione Software:** 2.0

**Piattaforme Supportate:** Linux, Mac, Windows

**Interfacce API:** C++

**Supporto Commerciale:** http://osgearth.org/#ProfessionalServices


Presentazione Veloce
--------------------------------------------------------------------------------

* :doc:`Documentazione introduttiva <../quickstart/osgearth_quickstart>`


