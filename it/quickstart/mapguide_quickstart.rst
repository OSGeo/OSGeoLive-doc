:Author: Trevor Wekel
:Version: osgeo-live5.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-MapGuideOS.png
  :scale: 100 %
  :alt: project logo
  :align: right 

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

Guida rapida su MapGuide
================================================================================

Questa guida descrive come:

* Ottenere MapGuide funzionante
* Creare stili per i dati spaziali usando Maestro

.. comment: ? * Extra note on 64-bit Ubuntu  

Ottenere MapGuide funzionante
--------------------------------------------------------------------------------

.. comment: 1. Go to Desktop->Server, click icon Start MapGuide. This will start both MapGuide server and MapGuide Web server

.. comment: .. image:: /images/screenshots/1024x768/mapguide_desktopIcons.png
.. comment:   :scale: 50 %
.. comment:   :alt: mapguide desktop icons
.. comment:   :align: center 

1. Installare manualmente MapGuide

.. note:: A causa di problemi di spazio sul DVD, MapGuide non è attualmente
  installato.

.. commented out as manual install doesn't currently work: To install
  aprire un terminale ed eseguire ``cd gisvm/bin; sudo ./install_mapguide.sh``

2. Aprire un browser all'indirizzo http://localhost:8008/mapguide/phpviewersample/ajaxtiledviewersample.php
per vedere l'applicazione di esempio 

.. image:: /images/screenshots/1024x768/mapguide_viewer.png
  :scale: 50 %
  :alt: mapguide desktop icons
  :align: center

MapGuide Maestro
--------------------------------------------------------------------------------

1. Per avviare Maestro, andare Desktop->Server, cliccare l'icona MapGuide Maestro,
questo aprirà Maestro login GUI, e mostrerà il seguente screenshot. Login in http://localhost:8008/mapguide/mapagent/mapagent.fcgi
con l'utente "Administrator" e la password "admin" 

.. image:: /images/screenshots/1024x768/mapguide_maestroLogin.png
  :scale: 50%
  :alt: screenshot
  :align: center
 
2. Cliccate Ok per andare nella GUI principale di Maestro, come mostrato nel seguente screenshot.

.. image:: /images/screenshots/1024x768/mapguide_maestroMain.png
   :scale: 50%
   :alt: mapguide maestro main GUI
   :align: center

3. Espandere il tree view nel pannello a sinistra, andare su Samples->Sheboygan->Layers,
doppio click Buildings, si aprirà l'editor del larye per Buildings sul pannello di destra,
come mostrato nel seguente screenshot:

.. image:: /images/screenshots/1024x768/mapguide_maestroLayerFeatures.png
   :scale: 50%
   :alt: mapguide maestro layer features
   :align: center

4. Scroll down il pannello a destra per vedere lo stile del layer. Sulla colonna Featurestyle,
cliccate la cella ... per portare avanti lo Style Editor, come mostrato nel seguente screenshot: 

.. image:: /images/screenshots/1024x768/mapguide_maestroLayerStyle.png
   :scale: 50%
   :alt: mapguide maestro layer stype panel
   :align: center

.. image:: /images/screenshots/1024x768/mapguide_maestroStyleEditor.png
   :scale: 50%
   :alt: mapguide maestro color chooser
   :align: center

5. nella lista a tendina Foreground Color, selezionate Green, cliccate Ok per chiudere Style Editor.
Nella GUI principale di Maestro, cliccate l'icona del disco per salvare. 

.. image:: /images/screenshots/1024x768/mapguide_maestroSaveIcon.png
   :scale: 50%
   :alt: mapguide maestro Save icon 
   :align: center

6. per visualizzare l'anteprima dei cambi, aprire un browser all'indirizzo http://localhost:8008/mapguide/phpviewersample/ajaxtiledviewersample.php o cliccate l'icona Preview
nella barra degli strumenti GUI principale di Maestro, che aprirà un browser all'indirizzo sopra.
Nel visualizzatore navigate la mappa, aumentate lo zoom al livello degli edifici, il colore degli 
edifici è ora verde.

.. image:: /images/screenshots/1024x768/mapguide_buildingColorBeforeChanging.png
   :scale: 50%
   :alt: Building color is grey 
   :align: center

.. image:: /images/screenshots/1024x768/mapguide_buildingColorAfterChanging.png
   :scale: 50%
   :alt: Building color is green 
   :align: center

