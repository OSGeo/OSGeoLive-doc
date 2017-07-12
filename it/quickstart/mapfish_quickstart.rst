:Author: Eric Lemoine, Bruno Binet
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-mapfish.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.mapfish.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


********************************************************************************
Guida rapida su MapFish
********************************************************************************

MapFish è un ambiente flessibile e completo per sviluppare applicazioni webgis
complesse. It emphasizes high productivity, and high-quality development.

Questa guida rapida descrive come

* eseguire l'applicazione di esempio di MapFish installata su questo live DVD
* installare MapFish, e
* creare applicazioni MapFish.

Eseguire l'applicazione di esempio
================================================================================

Per eseguire l'applicazione di esempio cliccare su :menuselection:`Browser Clients --> MapFish --> MapFish Start`.
Questo aprirà una pagina FireFox puntando all'applicazione distribuita da mod_wsgi in
Apache (http://localhost/mapfishsample/osgeolive/wsgi/).

Questa applicazione demo ha le seguenti caratteristiche: Interrogazione, Modifica,
Ricerca, Stampa.
Per vedere il protoccol REST di MapFish in azione potete aprire il debugger Firebug
e visualizzare le richieste/risponste scambiate tra il browser e i servizi web
di MapFish.
:menuselection:`Tools --> Web Developer --> Toggle Tools`

Installare MapFish
================================================================================

Per installare MapFish, scaricare lo script di installazione, ed eseguirlo da un
terminale::

    $ wget http://www.mapfish.org/downloads/go-mapfish-framework-2.2.py

    $ python go-mapfish-framework-2.2.py --no-site-packages venv

Il comando sopra crea l'ambiente virtuale di Python nella directory ``venv``,
recupera MapFish e le sue dipendenze e installa tutti nell'ambiente virtuale.

È possibile  attivare l'ambiente virtuale Python e controllare che MapFish
sia stato installato correttamente::

    $ source venv/bin/activate

    (venv) $ paster create --list-templates

Il precedente comando dovrebbe produrre il seguente output::

    Available templates:
    basic_package:   A basic setuptools-enabled package
    mapfish:         MapFish application template
    mapfish_client:  MapFish client plugin template
    paste_deploy:    A web application deployed through paste.deploy
    pylons:          Pylons application template
    pylons_minimal:  Pylons minimal application template

Ok, l'ambiente è installato correttamente. Potete ora seguire la sezione successiva
per creare una applicazione MapFish usando questa installazione.

Creare una applicazione MapFish
================================================================================

Dopo aver attivato l'ambiente virtuale Python, è possibile generare la vostra
prima applicazione MapFish denominata per esempio MyMapFishApp::

    (venv) $ paster create -t mapfish MyMapFishApp sqlalchemy=true

Quindi potete anche installare le librerie JavaScript nell'applicazione::

    (venv) $ paster create --no-interactive -t mapfish_client MyMapFishApp

Il comando sopra dovrebbe aver creato l'applicazione MapFish application nella
directory ``MyMapFishApp``.

A questo punto dovreste essere in grado di eseguire l'applicazione con::

    (venv) $ cd MyMapFishApp
    (venv) $ paster serve development.ini

Aprite http://localhost:5000 nel vostro browser. Dovreste vedere un'applicazione
minimale che include una mappa con due `OSM layers
<http://www.openstreetmap.org/>`_, una barra degli strumenti sopra la mappa e
un layer tree.

L'ambiente MapFish offre più che questo. In particolare permette facilmente di
creare servizi web RESTful per creare, leggere, aggiornare ed eliminare elementi
geometrici. Visitare http://mapfish.org/doc/2.2/quickstart.html per imparare di più
su come creare questi servizi web RESTful e http://mapfish.org per sapere di più
su MapFish.
