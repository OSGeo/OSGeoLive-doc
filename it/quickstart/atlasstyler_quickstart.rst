:Author: Stefan Tzeggai
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: ../../images/project_logos/logo-AtlasStyler.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://en.geopublishing.org/AtlasStyler

********************************************************************************
Guida rapida su AtlasStyler
********************************************************************************

Manuali
================================================================================
* `Manuale AtlasStyler, Tedesco, creato per la versione 1.2 <../../geopublishing/AtlasStyler_v1.2_DE_Handbuch_090601.pdf>`_  

Tutorial
================================================================================

AtlasStyler (Styling layers with SLD)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* `Tutorial sull'etichettature in AtlasStyler, Inglese, Creato per la versione 1.3 <../../geopublishing/tutorial_AtlasStyler_Labelling/AtlasStyler_v1.3_EN_LabellingTutorial_091012.pdf>`_
* `Tutorial sull'etichettature in AtlasStyler, Francese, Creato per la versione 1.3 <../../geopublishing/tutorial_AtlasStyler_Labelling/AtlasStyler_v1.3_FR_Tutoriel_etiquetage_091012.pdf>`_

Ulteriori tutorial sono postati come interventi sul blog `http://en.geopublishing.org <http://en.geopublishing.org>`_ 
(bisogna essere online per visitare questa pagina).

Eseguire
================================================================================

Incominciare
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

AtlasStyler è una applicazione per l'utente finale, che vi permette di creare 
file .SLD per i vostri dati vettoriali.

0) Il DVD OSGeo-Live usa il sistema operativo Lubuntu che temporaneamente ha piccoli 
problemi con le applicazionit basate su Java: come soluzione cliccare col tasto destro
sulla barra degli strumenti (dove trovate 'Applicazioni' e 'Places') e selezionate 
'Customize Panel'. Quindi attivate l'opzione 'Autohide'. Ora la barra degli strumenti
è nascosta fino che il mouse non raggiunge il bordo alto del monitor. 

1) Andate :menuselection:`Geospatial --> Desktop GIS --> AtlasStyler` e avviate l'applicazione.
 
2) Usare i bottoni per l'importazione e aggiungente sorgenti di dati ESRI Shapefiles o/e PostGIS al vostro progetto. 

3) Per importare PostGIS, le impostazioni corrette del database sono già presenti nel dialogo. Basta solo inserire la password 'user' per aggiungere il layer 'ne_10m_land'.

4) Per importare uno Shapefile, scegliere '/home/user/data/natural_earth2/ne_10m_lakes.shp' per esempio. 

5) Cliccare sull'icona strumenti nella legenda dei layer e selezionate stile. La finestra principale di AtlasStyler sarà aperta. Mentre si cambia to stile, l'opzione 'preview automatica' in fondo vi permetterà di visualizzare i vostri cambiamenti al volo. Se i dati sono troppo grandi (o il sistema troppo lento) disattivate il checkbox 'preview automatica'.

6) Divertitevi e/o date riscontri a tzeggai@wikisquare.de
