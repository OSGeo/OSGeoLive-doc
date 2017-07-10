:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live8.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-otb.png
  :alt: project logo
  :align: right
  :target: http://www.orfeo-toolbox.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

OTB
================================================================================

Image Processing
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

ORFEO Toolbox Library (OTB) è una libreria ad alte prestazioni per l'elaborazione
delle immagini. È prevalentemente utilizzata per l'elaborazione di grandi immagini
telerilevate come quelle raccolte da radar, satelliti e fotografie aeree. OTB
fornisce strumenti per immagini ottiche e radar (aspetti tridimensionali,
segmentazione, classificazione, rilevamento dei cambiamenti, analisi delle tessiture,
pattern matching, optic/radar complementarities,).

OTB è fornito con un'interfaccia utente completamente integrata chiamata Monteverdi
che consente agli utenti di selezionare le catene di elaborazione OTB da una serie di menu.

OTB è stato fondato dall'Agenzia Spaziale Francese (CNES) nel riquadro della
Parte metodologica del Programma Accompaniement ORFEO/Pleiades ed è stato
attivamente sviluppato dal 2006. Si basa sulla libreria di elaborazione di immagini
ITK e viene distribuito come sorgente aperto.

Caratteristiche principali
--------------------------------------------------------------------------------

.. image:: /images/screenshots/1024x768/otb-monteverdi2-screenshot.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

* accesso alle immagini: accesso ottimizzato in lettura/scrittura per la maggior parte dei
  formati di immagini telerilevate (incluso Jpeg2000 attraverso OpenJPEG), accesso e visualizzazione dei metadata
* ortorettificazione utilizzando DEM, riproizione di mappe e miglioramento dei modelli dei sensori
* calibrazione
* fusione di immagini
* filtraggio: blurring, denoising, enhancement...
* estrazione di elementi: punti d'interesse, allineamenti, linee...
* rilevamento oggetti
* segmentazione d'immagine a larga scala: region growing, mean-shift, watershed, level sets...
* classificazione: K-means, SVM, Markov random fields, accesso ad algoritmi di machine learning da OpenCV
* analisi di immagini basato sugli oggetti
* analisi geospaziali
* ricostruzione stereografica per immagini
* analisi dati SAR
* rilevamento dei cambiamenti

Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://www.orfeo-toolbox.org/

**Licenza:** CeCILL (CeCILL è compatibile con GPL e indirizzato alla legge francese)

**Versione Software:** 4.2.1

**Piattaforme Supportate:** Linux, Mac, Windows

**Interfacce API:** C++

**Supporto Commerciale:** http://www.osgeo.org/search_profile


Guida Rapida
--------------------------------------------------------------------------------

* :doc:`Documentazione introduttiva <../quickstart/otb_quickstart>`

