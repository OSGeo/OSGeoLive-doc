:Author: OSGeo-Live
:Author: Massimo Di Stefano
:Author: Pirmin Kalberer
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-ossim.png
  :scale: 80 %
  :alt: project logo
  :align: right

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
Guida Rapida su OSSIM
********************************************************************************

Open Source Software Image Map (OSSIM) è un motore con potenti funzionalità per 
telerilevamento, processamento d'immagine, geographical information system e fotogrammetria.

Questa guida rapida descrive come:

  * Visualizzare immagini raster con imagelinker
  * Eseguire ossimPlanet

Imagelinker
================================================================================

* Avviare Imagelinker tramite la sua icona dalla directory "Spatial Tools" sul desktop 
* Selezionare il file della proiezione, usando :menuselection:`File --> Open Project --> /home/user/ossim/landsatrgb.prj`
* Aprire un file immagine, usando :menuselection:`File --> Open Image --> /home/user/data/raster/p011r031_7t19990918_z19_nn10.tif` 
* Ripetere l'operazione precedente per i file : `p011r031_7t19990918_z19_nn20.tif and p011r031_7t19990918_z19_nn30.tif` 
* O semplicemente trascinate le immagini nella finestra principale di Imagelinker
* Andare a :menuselection:`menu bar --> window --> tile`
* Selezionare un :menuselection:`image window --> select the pan icon --> click on the image --> press the button "propagate"`
* Verificare che si veda 3 immagini satellitari a scale di grigio. 

  .. image:: /images/screenshots/ossim/ossim_imagelinker2.jpg
     :scale: 100 %

Per un tutorial completo vedere questo `articolo di un blog`_.

.. _`articolo di un blog`: http://www.geofemengineering.it/GeofemEngineering/Blog/Voci/2010/3/15_OSGEO_-_Live_-_DVD_-_%22running_imagelinker%22.html


OssimPlanet
================================================================================

* Avviare OssimPlanet tramite la sua icona dalla directory "Desktop-GIS" sul desktop 

* Selezionare :menuselection:`File --> Open Image --> /home/user/data/raster/world.tif` 
  (o semplicemente trascinate l'immagine nella finestra principale) 

* Aprire file :menuselection:`menu --> Open kml --> /home/user/data/kml/*.kml`

* Andare su :menuselection:`legend tree --> Image Layers --> open the trees --> double-click on the world image`,
  dovreste vedere la scena zoomare alla posizione dell'immagine

* Spostatevi all'interno della scena.


.. note::
   Per spegnere l'ombreggiatura del solo, deselezionate :menuselection:`File --> Preferences --> Environment --> Enable Ephemeris`


Ed ora?
================================================================================

* Ossim Tutorials

  Seguite i tutorials_ per imparare di più su OSSIM.

.. _tutorials: http://download.osgeo.org/ossim/tutorials/pdfs/

* Documentazione sul DVD

  Guardate la documentazione_ inclusa su questo DVD.

.. _documentazione: ../../ossim/

