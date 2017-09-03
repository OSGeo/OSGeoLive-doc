:Author: OSGeo-Live
:Author: Tom Kralidis, Angelos Tzotsos
:Version: osgeo-live7.0-draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-pycsw.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://pycsw.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
Guida rapida pycsw
********************************************************************************

pycsw è un server OGC CSW scritto in `Python <http://python.org>`_.

pycsw implementa 10 clausole (HTTP protocol binding (Catalogue Services for the Web,
CSW)) delle `specifiche di implementazione del OpenGIS Catalogue Service`_, versione
2.0.2. Sviluppo avviato nel 2010 (formalmente annunciato nel `2011`_). Il progetto è
certificato `OGC Compliant`_, ed è un `OGC Reference Implementation`_.

pycsw permette la pubblicazione e la ricerca di metadati geospaziali. Repository esistenti
di metadati geospaziali possono essere esposti attraverso lo standard OGC:CSW 2.0.2.

pycsw è `Open Source`_, rilasciato sotto un licenza MIT, e si può eseguire sulle
maggiori piattaforme (Windows, Linux, Mac OS X).

pycsw è installato di default su OSGeo-Live DVD. Questa guida rapida descriverà come:

* realizzare una nuova installazione di pycsw
* testare pycsw attraverso l'applicazione di test
* modificate il documento Capabilities di pycsw e di visualizzare queste informazioni
  in un browser
* creare file di metadati ISO 19139 XML (attraverso INSPIRE Metadata Editor o GIMED)
* caricare i file metadati XML create nel database di pycsw
* installare QGIS CSW Client plugin
* eseguire il rilevamento dei dati attraverso il Catalogue Service pycsw con QGIS

Installazione
==============

Requisiti di sistema
-----------------------

pycsw è scritto in `Python <http://python.org>`_, e funziona con le versioni (testate)
2.6 e 2.7

pycsw richiede le seguenti librerie:

- `lxml`_ (version >= 2.2.3) per il supporto XML
- `SQLAlchemy`_ (version >= 0.0.5) per interfacciarsi con il database
- `Shapely`_ (version >= 1.2.8) per interrogazioni spaziali / supporto geometrico
- `pyproj`_ (version >= 1.8.9) per le trasformazioni di coordinate

Installazione dalla sorgente
--------------------------------

`Scaricate l'ultima versione pycsw`_ o clonate da `GitHub`_:

.. code-block:: bash

  $ git clone https://github.com/geopython/pycsw.git pycsw

Assicuratevi che CGI sia abilitato per la vostra cartella d'installazione.
Per esempio, su Apache, se voi impostate pycsw in ``/srv/www/htdocs/pycsw`` (dove il
vostro URL sarà ``http://host/pycsw/csw.py``), aggiungete il seguente codice in ``httpd.conf``:

.. code-block:: none

  <Location /pycsw/>
   Options FollowSymLinks +ExecCGI
   Allow from all
   AddHandler cgi-script .py
  </Location>

Installare dal Python Package Index (PyPi)
-----------------------------------------------

.. code-block:: bash

  # easy_install or pip will do the trick
  $ easy_install pycsw
  # or
  $ pip install pycsw

Installare su Ubuntu/Lubuntu/Kubuntu
--------------------------------------

Al fine di installare pycsw su una distribuzione basata su Ubuntu, potete usare lo script
d'installazione di OSGeo-Live situato in ``pycsw/etc/dist``:

.. code-block:: bash

  $ cd pycsw/etc/dist
  $ sudo ./install_pycsw.sh

Lo script installa le dipendenze (Apache, lxml, sqlalchemy, shapely, pyproj) e poi pycsw
in ``/var/www``.

Installare su openSUSE
-------------------------

Al fine di installare il pacchetto OBS in openSUSE 12.3, potete eseguire i seguenti comandi
come utente ``root``:

.. code-block:: bash

  $ zypper -ar http://download.opensuse.org/repositories/Application:/Geo/openSUSE_12.1/ GEO
  $ zypper -ar http://download.opensuse.org/repositories/devel:/languages:/python/openSUSE_12.1/ python
  $ zypper refresh
  $ zypper install pycsw

Per le versioni precedenti di openSUSE cambiare ``12.3`` con ``12.2``. Per le versioni
future di openSUSE usare ``Factory``. La versione Rolling ``Tumbleweed`` è anch'essa supportata.
pycsw è inclusa nel repository ufficiale Application::Geo del OpenSUSE Build Service.

Testare l'applicazione
==========================

Per testare pycsw, usare il launcher pycsw dal gruppo Web Services, o aprire Firefox e andate
all'indirizzo ``http://localhost/pycsw/tester/index.html``:

.. image:: /images/screenshots/pycsw/pycsw_tester_startup.png
  :scale: 75 %

Selezionando la lista drop-down a sinistra, l'utente può vedere diverse richieste POST predefinite,
codificate come XML, che possono essere spedire a pycsw:

.. image:: /images/screenshots/pycsw/pycsw_tester_selection.png
  :scale: 75 %

Per esempio, selezionando "apiso/DescribeRecord", e cliccando il pulsante "Send", una descrizione
del ISO Application Profile record è visualizzato nel pannello di destra:

.. image:: /images/screenshots/pycsw/pycsw_tester_describe_apiso_record.png
  :scale: 75 %

Selezionandog "GetCapabilities-SOAP" e cliccando il pulsante "Send", una richiesta SOAP è spedita al
server e ritorna le capacità del servizio web:

.. image:: /images/screenshots/pycsw/pycsw_tester_soap_capabillities.png
  :scale: 75 %

Inoltre, l'utente può cercare i dati, effettuando un'interrogazione spaziale attraverso
una bounding box, selezionando "GetRecords-filter-bbox" e modificando le coordinate nella
richiesta XML:

.. image:: /images/screenshots/pycsw/pycsw_tester_getrecords_bbox_filter.png
  :scale: 75 %

L'utente può andare attraverso tutte le richieste disponibili ed eseguire diverse richieste
per questa applicazione di test. Una via più robuste e grafica per eseguire queste richieste
è descritta in un capitolo seguente di questo tutorial.

Funzionalità Document e Configurazione
=======================================

Le funzionalità dell'installazione di pycsw può essere trovate all'indirizzo ``http://localhost/pycsw/csw.py?service=CSW&version=2.0.2&request=GetCapabilities``.

Per modificare il servizio web dei metadati, inclusi nel documento delle capabilities,
l'utente può modificare il file ``/var/www/pycsw/default.cfg`` sotto il tag ``[metadata:main]``.

Se l'utente vuole abilitare il supporto INSPIRE Discovery Service, i metadati sotto il tag
``[metadata:inspire]`` dev'essere riempito con la proprietà ``enabled`` dev'essere impostata a
``true``.

Per le piene funzionalità e le opzioni di configurazione, per favore consultate `documentazione`_
nel sito internet pycsw.

Creazione dei metadati
========================

Utilizzando European Open Source Metadata Editor (EUOSME)
-------------------------------------------------------------

I file dei Metadati per un set di dati spaziali o un servizio we spaziale può essere creato
attraverso le implementazioni open source della direttiva INSPIRE per i metadati, European Open
Source Metadata Editor (EUOSME). Questo software può essere trovato ``http://inspire-geoportal.ec.europa.eu/editor/``.
Il codice sorgente è disponibile ``https://joinup.ec.europa.eu/svn/euosme/trunk``

L'utente compila i campi dei metadati obbligatori, attraverso le tabelle dell'applicazione,
aggiungendo informazioni come il nome del proprietario dei dati, parole chiavi, la posizione
della risorsa del web, la posizione geografica (usando una bounding box o il nome di uno stato) etc.

.. image:: /images/screenshots/pycsw/pycsw_euosme_metadata_input.png
  :scale: 75 %

Dopo che l'utente ha aggiunto tutte le informazioni disponibili, bisogna spingere il pulsante di
validazione in alto della pagina, questo controllo può essere eseguito per consistenza con la
direttiva INSPIRE.

.. image:: /images/screenshots/pycsw/pycsw_euosme_save_metadata.png
  :scale: 75 %

Dopo una validazione andata a buon fine, il file XML può essere salvato nel disco locale e visto attraverso une editor testuale o un browser.


Usando GIMED
---------------

`GIMED`_ è un Software Libero per creare e gestire file XML per metadati compatibili con INSPIRE.
Per installare l'applicazione, usare i seguenti comandi da un terminale:

.. code-block:: bash

  $ wget http://downloads.sourceforge.net/project/gimed/GIMED_v1.3.0.tar.gz
  $ tar zxvf GIMED_v1.3.0.tar.gz
  $ mono ./GIMED_v1.3.0/bin/GIMED.exe

L'utente può seguire la stessa procedura come per EUOSME per agiungere o modificate metadata, senza il bisogna di una connessione internet.

.. image:: /images/screenshots/pycsw/pycsw_gimed.png
  :scale: 75 %


Caricare Metadata
====================

Impostare il repository dei Metadata
---------------------------------------

pycsw supporta i seguenti database:

- SQLite3
- PostgreSQL
- MySQL

Nel OSGeo-Live, un semplice SQLite è stato utilizzato. Il database può essere trovato in ``/var/www/pycsw/tests/suites/cite/data/records.db``

Creare un nuovo database
--------------------------

Al fine di creare un nuovo database SQLite dovrete:

1. Editare ``default.cfg``:

**[repository]**

- **database**: il percorso completo al database dei metadati, nel formato URL del database (vedere http://docs.sqlalchemy.org/en/latest/core/engines.html#database-urls)
- **table**: il nome della tabella per i records dei metadati (default è ``records``)

2. Impostare il database:

.. code-block:: bash

  $ cd /var/www/pycsw
  $ export PYTHONPATH=`pwd`
  $ sudo python ./sbin/pycsw-admin.py -c setup_db -f default.cfg

Questo creerà le tabelle necessarie e i valori per il repository.

Il database creato è conforme a `OGC SFSQL`_, e può essere usato con qualsiasi altro
software implementi lo stesso standard. Per esempio lo potete usare con `OGR`_:

.. code-block:: bash

  $ ogrinfo /path/to/records.db
  INFO: Open of 'records.db'
  using driver 'SQLite' successful.
  1: records (Polygon)
  $ ogrinfo -al /path/to/records.db
  # lots of output

Importare Metadata
---------------------

.. code-block:: bash

  $ cd /path/to/pycsw
  $ export PYTHONPATH=`pwd`
  $ python ./sbin/pycsw-admin.py -c load_records -f default.cfg -p /path/to/records -r

Questo importerà tutti i file ``*.xml`` da ``/path/to/records`` nel nuovo database e
configura il repository per essere interrogabile come per Table 53 di OGC:CSW.


Installazione del client CSW di QGIS
======================================

Il meccanismo di richiesta/risposta HTTP non è abbastanza amichevole per l'utente finale
al fine di eseguire le interrogazioni al Catalogue Service.
Per questa ragione, ci sono molti Clients CSW nel form di applicazioni web come `INSPIRE Geoportal <http://inspire-geoportal.ec.europa.eu/discovery/discovery/>`_ o :doc:`GeoNetwork <../overview/geonetwork_overview>`.
Per questo tutorial, noi useremo il plugin per :doc:`QGIS <../overview/qgis_overview>` `OGC Catalogue Service Client <https://sourceforge.net/apps/trac/qgiscommunitypl/wiki/qgcsw>`_.

Per installare il plugin:

.. code-block:: bash

  $ cd ~
  $ cd .qgis/python/plugins
  $ svn co https://qgiscommunitypl.svn.sourceforge.net/svnroot/qgiscommunitypl/python/plugins/qgcsw/trunk qgcsw

Scoprire dati
===============

QGIS CSW Plugin
-----------------

Avviate QGIS dal gruppo Desktop GIS e andate in "Manage Plugins"

.. image:: /images/screenshots/pycsw/pycsw_qgis_plugin.png
  :scale: 75 %

Attivate il plugin CSW dalla lista

.. image:: /images/screenshots/pycsw/pycsw_qgis_plugin_enable.png
  :scale: 75 %

Quindi selezionate il bottone CSW dalla barra degli strumenti e lanciate CSW Client

.. image:: /images/screenshots/pycsw/pycsw_qgis_csw_plugin_open.png
  :scale: 75 %

Aggiungetr il server pycsw premendo il bottone "New" e digitate ``http://localhost/pycsw/csw.py``

.. image:: /images/screenshots/pycsw/pycsw_qgis_csw_plugin_add_server.png
  :scale: 75 %

L'utente può aggiungere alcuni server di default usando il bottone "Add default servers" e anche ottenere
le capabilities del server usando il bottone "Server info"

.. image:: /images/screenshots/pycsw/pycsw_qgis_csw_plugin_server_info.png
  :scale: 75 %

Eseguire la ricerca utilizzando il catalogo, o tramite valore stringa o con un rettangolo di selezione

.. image:: /images/screenshots/pycsw/pycsw_qgis_csw_plugin_search.png
  :scale: 75 %

Scoperta dati attraverso GeoExt
--------------------------------

Un'altra possibilità di usare il server pycsw è attraverso un'applicazione web, agendo come clientCSW.
Questa funzionalità è disponibile attraverso le librerie Javascript `OpenLayers <http://openlayers.org>`_
e `GeoExt <http://www.geoext.org/>`_.

Per questo tutorial abbiamo creato una piccola dimostrazione in GeoExt (grazie `Bart van den Eijnden <https://github.com/bartvde>`_)
usando un'installazione demo di pycsw in http://demo.pycsw.org/services/csw:

- Andare http://demo.pycsw.org/viewer/index2.html
- Cliccare l'icona "find layers"
- Inserire "airports" (senza doppie virgolette)
- Cliccare "search" o premente Enter
- Vedere i risultati
- Cliccare l'icona "add to map" vicino l'ultimo risultato in quel set di risultati ("1 Million Scale - Airports")
- Vedere il layer aggiunto alla mappa

.. image:: /images/screenshots/pycsw/pycsw_client_gxp.png
  :scale: 60 %

Test dell'applicazione
------------------------

Per scoprire i dati può essere anche eseguita tramite l'applicazione Tester impostando le appropriate richieste per esempio qualsiasi ricerca di testo con la stringa "imagery" scoprendo i dati XML creato in precedenza dal EUOSME

.. image:: /images/screenshots/pycsw/pycsw_tester_discovery.png
  :scale: 75 %

Per maggiori informazioni su pycsw, guardare la `documentazione`_ sul sito di pycsw.

.. _`specifiche di implementazione del OpenGIS Catalogue Service`: http://www.opengeospatial.org/standards/cat
.. _`2011`: http://www.kralidis.ca/blog/2011/02/04/help-wanted-baking-a-csw-server-in-python/
.. _`Open Source`: http://www.opensource.org/
.. _`documentazione`: http://pycsw.org/docs/documentation.html
.. _`lxml`: http://lxml.de/
.. _`SQLAlchemy`: http://www.sqlalchemy.org/
.. _`Shapely`: http://trac.gispython.org/lab/wiki/Shapely
.. _`pyproj`: http://code.google.com/p/pyproj/
.. _`Scaricate l'ultima versione pycsw`: http://pycsw.org/download.html
.. _`GIMED`: http://sourceforge.net/projects/gimed/
.. _`OGC Compliant`: http://www.opengeospatial.org/resource/products/details/?pid=1104
.. _`OGC Reference Implementation`: http://demo.pycsw.org/
.. _`GitHub`: https://github.com/geopython/pycsw
.. _`OGR`: http://www.gdal.org/ogr
.. _`OGC SFSQL`: http://www.opengeospatial.org/standards/sfs
