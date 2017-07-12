:Author: Hamish Bowman
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-mb-system.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://www.ldeo.columbia.edu/res/pi/MB-System/

********************************************************************************
Guida rapida su MB-System 
********************************************************************************


Eseguire
================================================================================

Gli utenti che conoscono :doc:`GMT <../overview/gmt_overview>` e :doc:`GDAL <../overview/gdal_overview>` 
si sentiranno a casa con MB-System. Infatti, MB-System fa una grande uso di
GMT per la visualizzazione delle mappe. MB-System è una suite modulare, utilizzabile
da linea di comando composta da circa 75 programmi che lavorano assieme per processare
grandi (spesso terabytes) worth di multi-beam swath bathymetry e sidescan sonar data
usando scrip automatizzati. I file dei dati in dozine di formati possone essere left
co-mingled and intact on the drive solo quelli necessari verranno selezionati
automaticamente, permettendo efficienti processamenti e miscelare diversi
set di dati collezionati in momenti differenti, da barche differenti, in formati di
dati differenti. Sono inclusi anche software per output cartografico e pulizia di 
dati 3D avanzati.

Aprite un terminale, quindi

* Visualizzate informazioni su un file di dati: (simile a `gdalinfo`)

::

  cd /usr/local/mbsystem/examples/
  cd mbinfo
  ./mbinfo.cmd

.. image:: /images/screenshots/1024x768/mb-system_screenshot.png
  :scale: 35 %
  :alt: 2D shaded relief
  :align: right

* Processate e preparate grafici 3D per gli stessi file di dati di esempio:

::

  cd /usr/local/mbsystem/examples/
  cd mbgrid
  export PATH="$PATH:."
  ./mbgrid.cmd

* Processate e preparate un immagine 2D dei rilievi ombreggiati:

::

  cd /usr/local/mbsystem/examples/
  cd mbm_plot
  export PATH="$PATH:."
  ./mbm_plot_5.cmd


Documentazione
================================================================================

La documentazione online può essere trovato all'indirizzo 
 http://www.ldeo.columbia.edu/res/pi/MB-System/html/mbsystem_home.html

La versione HTML online del Cookbook tutorial può essere trovata
 http://www.ldeo.columbia.edu/res/pi/MB-System/mb-cookbook/

La versione PostScript della documentazione può essere trovata su questo LiveDVD in
 `/usr/share/doc/mbsystem-doc/docs/ <../../mbsystem/docs/>`_

La versione PDF del cookbook è inclusa su questo disco in
 `/usr/local/mbsystem/mbcookbook.pdf <../../mbsystem/mbcookbook.pdf>`_

I dati usati negli esempi del cookbook possono essere trovati in
 `/usr/local/mbsystem/examples/ <../../mbsystem/examples/>`_

Vedere anche l'articolo su `MB-System nel wiki di GRASS GIS <http://grass.osgeo.org/wiki/MB-System>`_
