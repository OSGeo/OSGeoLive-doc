.. Writing Tip:
  This Quick Start should describe how to run a simple example, which
    covers one of the application's primary functions.
  The Quick Start should be able to be executed in around 5 minutes.
  The Quick Start may optionally include a few more sections
    which describes how to run extra functions.
  This document should describe every detailed step to get the application
    to work, including every screen shot involved in the sequence.
  Finish off with "Things to Try" and "What Next?" sections.
  Assume the user has very little domain expertise, so spell everything out.

:Author: Friedjoff Trautwein (http://www.geops.de)
:Author: Augustus Kling (http://www.geops.de)
:Author: Patric Hafner (http://www.geops.de)
:Version: osgeo-live7.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-cartaro.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://cartaro.org

********************************************************************************
Guida rapida su Cartaro
********************************************************************************

Cartaro è un Content Management System (CMS) abilitato a dati geografici, per
gestire e pubblicare contenuti geospaziali e non-geospaziali. 

Questo tutorial vi guiderà attraverso i seguenti tasks:

#. Creare un nuovo contenuto di tipo spaziale
#. Configurare Cartaro per visualizzare il nuovo tipo di contenuto
#. Aggiungere un nuovo contenuto geospaziali

All tasks will be performed using the example of a touristic web portal with the goal to map lakes.

.. contents:: Contents
  
Avviare Cartaro
================================================================================

.. Writing Tip:
  Describe steps to start the application
  This should include a graphic of the pull-down list, with a green circle
  around the application menu option.
  #. A hash numbers instructions. There should be only one instruction per
     hash.

#. Avviare OSGeoLive DVD
#. Scegliere :menuselection:`Geospatial --> Browser Clients --> Start Cartaro` per avviare Cartaro
#. La pagine web Cartaro http://localhost/cartaro si aprirà automaticamente

.. Writing Tip:
  For images, use a scale of 50% from a 1024x768 display (preferred) or
  70% from a 800x600 display.
  Images should be stored here:
    https://github.com/OSGeo/OSGeoLive-doc/tree/master/images/projects/1024x768/


Front Page
================================================================================

Quando la pagina di Cartaro è aperta, si vedrà l'immagine seguente. La prima pagina contiene una mappa globale con le capitali come esempio.

.. image:: /images/projects/cartaro/cartaro_frontpage.png
    :scale: 60 %
    :align: center


* Fate **Log in** nell'angolo in alto a destra per accedere all'interfaccia di amministrazione con *admin* come nome utente e *geoserver* come password. Ora si vedrà la barra di amministrazione in alto.

.. image:: /images/projects/cartaro/cartaro_userpage.png
    :scale: 60 %
    :align: center
  
.. tip::  Si può ritornare alla pagina iniziale cliccando sull'icona dedicata nell'angolo in alto a sinistra.


Creare un nuovo tipo di Contenuto
================================================================================

I tipi del contenuto e i campi definiscono la struttura di un contenuto specifico (esempio il tipo di contenuto *Capital* contiene i campi "name" e "location" per generare gli elementi del contenuto per le rispettive capitali visualizzate sulla mappa).
Per creare un nuovo tipo di contenuto, seguire i punti di seguito.

* Scegliere :menuselection:`Structure --> Content types` nella barra del menu e cliccare **Add content type** 


.. image:: /images/projects/cartaro/cartaro_addcontenttype.png
    :scale: 80 %
    :align: center

* Digitare un nuome per il nuovo tipo di contenuto e descriverlo se si vuole

.. image:: /images/projects/cartaro/cartaro1.png
    :scale: 50 %
    :align: center

* Finire cliccando su **Save and add fields**


* Aggiungere un campo per il tipo di contenuto inserendo un nome descrittivo. Se si vuole creare un campo spaziale con il nome *Geometry*. Selezionare  *Geospatial data*  come tipo del campo e *OpenLayers Map* come widget.

.. image:: /images/projects/cartaro/cartaro2.png
    :scale: 70 %
    :align: center

* Finire cliccando su **Save**

* Scegliere le impostazione dei campi nella nuova finestra: Selezionare il tipo di geometria che descrive la tipologia di informazione spaziale che volete descrivere. Scegliere *Polygon* per seguire questo esempio.

.. image:: /images/projects/cartaro/cartaro3.png
    :scale: 70 % 
    :align: center

.. tip::  Leggere il testo sotto il campo a tendina *Geometry type* per trovare la tipologia di geometria che risponde alle proprie necessità.

* Finire cliccando su **Save field settings**

.. image:: /images/projects/cartaro/cartaro4.png
    :scale: 70 % 
    :align: center

* Premere *Save settings* per finire la creazione del campo

.. image:: /images/projects/cartaro/cartaro5.png
    :scale: 70 % 
    :align: center

* Sotto il pannello *Manage fields* si può creare ulteriore campi non spaziali. Non si vuole crearne di nuovi in questo esempio.


Configurare GeoServer
================================================================================

:doc:`GeoServer <../overview/geoserver_overview>` è usato per fornire layers attraverso :doc:`Web Feature Service (WFS) <../standards/wfs_overview>` e :doc:`Web Map Service (WMS) <../standards/wms_overview>` con il campo spaziale dal tipo di contenuto appena creato.

* Scegliere :menuselection:`Structure --> GeoServer` dalla barra del menu per visitare la pagina di configurazione di GeoServer

.. image:: /images/projects/cartaro/cartaro_geoserver_entry.png
    :scale: 70 %
    :align: center

Creare un nuovo layer in GeoServer
``````````````````````````````````
* Usare layers di GeoServer per pubblicare i dati spaziali. 
* Scegliere di nuovo :menuselection:`Structure --> GeoServer` dalla barra del menu per visitare la pagina di configurazione di GeoServer
* Selezionare :menuselection:`Layers` e cliccare **Add** per aggiugere un nuovo layer

.. image:: /images/projects/cartaro/cartaro_geoserver_addnewlayer.png
    :scale: 60 %
    :align: center

#. Digitare un adatto titolo al layer (esempio lakes). 
#. Selezionare il tipo di layer. Si seleziona *PostGIS Field* per operazioni spaziali avanzate e per archiviare i geodati.
#. Come sorgente selezionare i tipo di contenuto che sarà stato associato con il nuovo layer. 
#. Selezionare *Provide an OpenLayers WFS layer*  nella sezione OpenLayers.
#. Finire configurazione cliccando su **Save**

.. image:: /images/projects/cartaro/cartaro7.png
    :scale: 55 %
    :align: center


* Congratulazioni! Il nuovo layer GeoServer è stato aggiunto a GeoServer.

.. tip:: Ora si può accedere al campo spaziale del tipo di contenuto tramite WFS o WMS con altre applicazioni (esempio con :doc:`QGis <../overview/qgis_overview>`) 


Configurare OpenLayers per attivare il layer GeoServer in una mappa
================================================================================

:doc:`OpenLayers <../overview/openlayers_overview>` è usato per visualizzare il nuovo layer su una mappa. Si associera il layer di GeoServer con la mappa di OpenLayers. 

* Andare in :menuselection:`Structure --> OpenLayers --> Maps`  per vedere la pagine di configurazione di OpenLayers

* Cercare *frontmap* - una mappa pre-generata di default, e selezionare **Edit** nella parte destra.

.. image:: /images/projects/cartaro/cartaro_openl_maps_frontmapedit.png
    :scale: 70 %
    :align: center

* La pagina di configurazione della frontmap appare come visualizzato nello screenshot di seguito.

.. image:: /images/projects/cartaro/cartaro_openlayers_frontmapediting.png
    :scale: 70 %
    :align: center

* Selezionare :menuselection:`Layers & Styles` nella barra laterale di sinistra per aggiungere il layer creato alla frontmap. 

* Cercare il layer di GeoServer creato ('lakes' in questo esempio)
* Selezionare i bottoni per *Enabled*, *Activated* e *In Switcher* per attivare il nuovo layer *lakes* nella mappa

.. image:: /images/projects/cartaro/cartaro_openl_layersstylessettings.png
    :scale: 70 %
    :align: center

* Finire la configurazione cliccando su **Save** in fondo alla pagina

Aggiungere contenuto spaziale
================================================================================

Dopo aver creato il tipo di contenuto e configurato GeoServer e OpenLayers si può ora aggiungere molti elementi di questo tipo come si vuole.

* Scegliere :menuselection:`Content` dalla barra del menu per vedere tutti gli elementi del contenuto esistenti con l'installazione di Cartaro

.. image:: /images/projects/cartaro/cartaro_contentlist.png
    :scale: 70 %
    :align: center

* Selezionare **Add content** per aggiugere contenuto e scegliere il nuovo tipo di contenuto nella finestra che apparirà (non visualizzato). Nella pagina di configurazione del nuovo elemento del contenuto (chiamato nodo nel linguaggio di Drupal) seguite le seguenti impostazioni: 

#. Digitare un nome
#. Si può disegnare la geometria del elemento del contenuto. Scegliere il simbolo disegna nell'angolo in alto a destra della mappa. Notare che i suggerimenti sono mostrati quando si è sopra alle icone della barra degli strumenti. Cliccare sulla mappa per creare una nuova geometria. Finire di disegnare con un doppio click.
#. **Salvare** la geometria.

.. note:: Solo una geometria per elemento del contenuto può essere disegnato nella configurazione di esempio. Creare ulteriori elementi di contenuto per aggiugere più poligoni.

.. image:: /images/projects/cartaro/cartaro8.png
    :scale: 70 %
    :align: center

* Dovreste essere in grado di vedere il nuovo elemento

.. image:: /images/projects/cartaro/cartaro_addedcontent_lakefr.png
    :scale: 50 %
    :align: center

* Per vedere il nuovo elemento del contenuto nella frontmap, cliccare l'icona della home nell'angolo in alto a sinistra

.. image:: /images/projects/cartaro/cartaro_addedcontent_frontmap.png
    :scale: 50 %
    :align: center

Congratulazioni, si ha appena finito questa guida rapida. Il primo elemento del contenuto è ora pronto. Per aggiungere ulteriori elementi al contenuto basta semplicemente ripetere i passaggi di questa sessione di nuovo.



Cose da provare
================================================================================

* Usare il **Layer Assistant** per includere layer esterni :menuselection:`Structure --> Open Layers --> Layers --> Add using assistant`
* Cambiare il comportamento della mappa di default e create la vostra
* Provare differenti tipologie di geometrie e costruire tipo di contenuti più complessi


Ed ora ?
================================================================================

.. Writing tip
  The final heading should provide pointers to further tutorials,
  documentation or further things to try.
  Present a list of ideas for people to try out. Start off very specific
  with something most people can do based on the materials as presented.
  Continue on with a challenge that involves a small bit of research (it
  is recommended that research be limited to something that can be
  found in documentation packaged on OSGeo-Live, as users might not be
  connected to the Internet.


.. Writing tip
  Provide links to further tutorials and other documentation.

Il tutorial ha dato la prima impressione circa le possibilità di Cartaro. Ma c'è molto altro da scoprire.


Il prossimo passo potrebbe essere di installare Cartaro nel vostro server. Basta visitare http://cartaro.org/documentation/getting-started per imparare come fare.

Nel contesto di questo tutorial, controllare la documentazione su `Layer Assistant <http://cartaro.org/blog/21-layer-creation-assistant/>`_ o sullo `Styling <http://cartaro.org/blog/14-how-use-qgis-great-looking-symbols-cartaro/>`_


La nostra documentazione web può essere trovata qui http://cartaro.org/documentation


    Disponibile su http://cartaro.org
