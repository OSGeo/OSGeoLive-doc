:Author: OSGeo-Live
:Author: Manuel Grizonnet
:Translator: Margherita Di Leo
:Version: osgeo-live8.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-otb.png
  :scale: 80 %
  :alt: project logo
  :align: right

********************************************************************************
Guida rapida su OTB
********************************************************************************

ORFEO Toolbox library (OTB) e` una libreria ad alte prestazioni per il processamento
di immagini per il telerilevamento.

Questa guida rapida illustra come:

  * Ottenere i metadati di un'immagine
  * Eseguire operazioni matematiche tra le bande dell'immagine
  * Aprire immagini raster con l'applicazione Monteverdi, effettuare la segmentazione
    (mean-shift clustering) e visualizzare il risultato
  * Eseguire la classificazione assistita (supervised) basata sull'algoritmo Support
    Vector Machine

Le applicazioni OTB offrono molteplici strumenti interessanti che facilitano la manipolazione
delle immagini. Questi strumenti sono disponibili attraverso:

  * CLI : linea di comando (command line interface)
  * GUI : interfaccia grafica (graphical user interface) (in Qt)
  * QGIS plugin : disponibile attraverso Sextante

I dati utilizzati in questa guida rapida possono essere scaricati da:
  * http://www.orfeo-toolbox.org/packages/OTB-Data-Examples.tgz

Scarica i dati e decomprimili nella cartella `/home/user/otb/`.


Mostrare i metadati di un'immagine
================================================================================

Puoi ottenere tutti i metadati contenuti in un'immagine con il comando : `otbcli_ReadImageInfo`
L'unico parametro e` il nome dell'immagine in input, per esempio :
`otbcli_ReadImageInfo -in qb_RoadExtract.tif`

Calcolatore di bande
================================================================================

Il comando `otbcli_otbBandMath` offre un modo efficiente per eseguire operazioni matematiche
su immagini monobanda.
La sintassi e` piuttosto semplice, per esempio per sottrarre due bande per analizzare la
differenza fra le immagini SpotBefore.tif e SpotAfter.tif, usa il comando :
`otbcli_BandMath -il SpotBefore.tif SpotAfter.tif -out difference.tif -exp "im1b1-im2b1"`
L'applicazione consente di effettuare operazioni matematiche complesse sulle immagini
(soglia, scalatura logaritmica...).
Questo calcolatore digitale e` accompagnato da funzioni personalizzate che permettono di
calcolare intere espressioni. Ad esempio, poiche` le immagini telerilevate misurano valori
fisici, e` possibile estrarre diversi indici con significato fisico come l'NDVI (Normalized
Difference Vegetation Index) per la vegetazione. Con il calcolatore sei in grado di
calcolare l'NDVI su un'immagine multispettrale con il comando :
`otbcli_BandMath -il qb_RoadExtract.tif -out ndvi.tif -exp "ndvi(im1b3,im1b4)"`

Classificazione dei pixel
================================================================================
La classificazione nel framework dell'applicazione offre la catena di classificazione
assistita del pixel (supervised pixel-wise classification chain) basata sull'apprendimento
da immagini multiple, e utilizza un metodo di machine learning scelto tra:
SVM, Bayes, KNN, Random Forests, Artificial Neural Network, e altri..
(vedi l'help dell'applicazione `TrainImagesClassifier` per
ulteriori dettagli circa i classificatori disponibili).
Supporta immagini molto grandi attraverso lo streaming e il threading multiplo.
La catena di classificazione effettua un addestramento (training) basato sulle intensita`
di ciascun pixel come caratteristica. Tutte le immagini in input devono avere lo stesso
numero di bande per essere confrontabili.

Effettuare la segmentazione con Monteverdi
================================================================================

* Avvia Monteverdi dalla sua icona dalla cartella Spatial Tools sul desktop
* Seleziona un'immagine raster usando :menuselection:`File --> Open Dataset --> /home/user/otb/qb_RoadExtract.tif`
* Vai a :menuselection:`Filtering --> Mean Shift clustering`
* Seleziona l'immagine raster in input (Reader0) dalla finestra di selezione dell'input
* Verifica di poter regolare i parametri della segmentazione e vedere i risultati sulla
  regione di interesse cliccando "Run"
* Seleziona "Close" quando sei soddisfatto del risultato.
* Nella finestra principale, clicca il tasto destro su "Clustered Image" nel dataset risultante
  "MeanShift0" e seleziona "Display in viewer"

  .. image:: /images/screenshots/800x600/otb-mean_shift.jpg
     :scale: 100 %

Effettuare la classificazione assistita basata su SVM con Monteverdi
================================================================================

* Avvia Monteverdi dalla sua icona dalla cartella Spatial Tools sul desktop
* Seleziona un'immagine raster, usando :menuselection:`File --> Open Dataset --> /home/user/otb/qb_RoadExtract.tif`
* Vai a :menuselection:`Learning --> SVM classification`
* Seleziona l'immagine raster in input (Reader0) dalla finestra di selezione dell'input
* Puoi aggiungere delle classi (bottone `Add Class`), scegli i campioni di esempio disegnando i poligoni
* Vai a :menuselection:`Setup --> SVM` per impostare i parametri dell'algoritmo di classificazione
* Clicca sul bottone `Learn` per creare un modello di classificazione dalle classi del campione in input
* Clicca sul bottone `Display` per mostrare il risultato della classificazione assistita sull'intera immagine

  .. image:: /images/screenshots/800x600/otb-svm.jpg
     :scale: 100 %

Per il tutorial completo vedi l'  `articolo`_.

.. _articolo: http://www.orfeo-toolbox.org/otb/monteverdi.html


E poi?
================================================================================

* Guida al Software OTB

  La principale fonte di informazione e` la guida al software OTB. Si tratta di
  una guida completa che comprende circa 600 pagine, che descrivono i passi dall'
  installazione all'uso del software. La maggior parte delle lezioni disponibili
  sono ampiamente illustrate con risultati di processamento di immagini telerilevate
  reali.

  * `OTBSoftwareGuide.pdf <http://orfeo-toolbox.org/packages/OTBSoftwareGuide.pdf>`_
  * `Online html version <http://orfeo-toolbox.org/SoftwareGuide/>`_

* CookBook OTB

  E` anche disponibile una guida alle applicazioni OTB e Monteverdi dedicata
  ai non-sviluppatori. Questa quida e` composta da una breve panoramica delle
  applicazioni OTB e Monteverdi, seguita da una serie di ricette per effettuare
  normali processi di telerilevamento con entrambi gli strumenti.

  * `OTBCookBook.pdf <http://orfeo-toolbox.org/packages/OTBCookBook.pdf>`_

* Tutorial OTB

  Segui i tutorial_ per imparare di piu` su OTB.

.. _tutorial: http://www.orfeo-toolbox.org/SoftwareGuide/SoftwareGuidepa2.html#x17-49000II

* Documentazione delle applicazioni OTB

  Vedi anche la documentazione dettagliata delle applicazioni_ OTB

.. _applicazioni: http://orfeo-toolbox.org/Applications/

* Corsi OTB con immagini Pleiades

  Segui i corsi_ per saperne di piu` su OTB.

.. _corsi: http://blog.orfeo-toolbox.org/news/new-courses-on-pleiades-images-analysis-with-the-orfeo-toolbox

