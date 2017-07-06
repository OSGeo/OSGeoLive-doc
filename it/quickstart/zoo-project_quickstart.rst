:Author: Gérald Fenoy
:Reviewer: Angelos Tzotsos
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-ZOO-Project.png
  :scale: 100 %
  :alt: project logo
  :align: right

.. image:: /images/logos/OSGeo_community.png
  :scale: 100
  :alt: OSGeo Community Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
Guida rapida su ZOO Project
********************************************************************************

ZOO-Project fornisce un semplice ambiente di sviluppo Web Processing Service (WPS)
per creare e concatenare Web Processing Services.
Un WPS fornisce accesso web a funzioni che eseguiscono algoritmi spaziali

La guida rapida descrive come:

  * Applicare processi ad un WFS da un browser web

.. contents:: Contents


Running
================================================================================

* Per eseguire la demo di ZOO Project dal OSGeo-Live DVD, cliccare in successione su
  |osgeolive-appmenupath-geoserver| infine sul collegamento "ZOO Project" sul desktop
  oppure quello che si trove nel menu

* Verrà avviato Firefox sulla demo ZOO Project Spatial Tools.


.. image:: /images/screenshots/1024x768/zoo-project-demo-1.png
  :scale: 50 %
  :alt: screenshot
  :align: center


* Cliccare sulla mappa per selezionare un elemento dal :doc:`GeoServer <../overview/geoserver_overview>`
  WFS Server, l'elemento sarà visualizzato in blu, quindi cliccare su uno dei pulsanti di
  processi con geometria semplice come Buffer, Centroid, ConvexHull o Boundary e il
  risultato sarà visualizzato in giallo.

.. image:: /images/screenshots/1024x768/zoo-project-demo-2.png
  :scale: 50 %
  :alt: screenshot
  :align: center


* Ora selezionate un altro elemento vicino al primo che avete selezionato e cliccate su
  un pulsante dei pocressi geometrie multiple come Union, Intersection, Symmetric
  Difference o Difference e otterete il risultato sulla mappa rappresentato in rosso.

.. image:: /images/screenshots/1024x768/zoo-project-demo-3.png
  :scale: 50 %
  :alt: screenshot
  :align: center

Ed ora?
================================================================================

* Potete creare la vostra richiesta e inviarla al ZOO Kernel dalla seguente pagina:
	http://localhost/zoo-demo/test_services.html

* Potete ottenere le capabilities del Server ZOO WPS:
	http://localhost/zoo/?Request=GetCapabilities&Service=WPS

* Per maggiori informazioni potete contattare la mailing list ZOO Project:
  zoo-discuss@lists.osgeo.org
