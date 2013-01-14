:Author: OSGeo-Live
:Author: Tom Kralidis, Angelos Tzotsos
:Version: osgeo-live6.0
:License: Creative Commons

.. image:: ../../images/project_logos/logo-pycsw.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://pycsw.org/

********************************************************************************
Guida rapida pycsw
********************************************************************************

pycsw è un server OGC CSW scritto in `Python`_.

pycsw implementa 10 clausole (HTTP protocol binding (Catalogue Services for the Web,
CSW)) delle `specifiche di implementazione del OpenGIS Catalogue Service`_, versione
2.0.2. Sviluppo avviato nel 2010 (formalmente annunciato nel `2011`_).

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

pycsw richiede le seguenti librerie:

- `lxml`_ (version >= 2.2.3) per il supporto XML
- `SQLAlchemy`_ (version >= 0.0.5) per interfacciarsi con il database
- `Shapely`_ (version >= 1.2.8) per interrogazioni spaziali / supporto geometrico
- `pyproj`_ (version >= 1.8.9) per le trasformazioni di coordinate

Installazione dalla sorgente
--------------------------------

`Scaricate l'ultima versione pycsw`_ o prendete la versione di sviluppo dal svn:

.. code-block:: bash

  $ svn co https://pycsw.svn.sourceforge.net/svnroot/pycsw pycsw 

Assicurateiv che CGI sia abilitato per la vostra cartella d'installazione.
Per esempio, su Apache, se voi impostate pycsw in ``/srv/www/htdocs/pycsw`` (dove il
vostro URL sarà ``http://host/pycsw/csw.py``), aggiungete il seguente codice in ``httpd.conf``:

.. code-block:: none

  <Location /pycsw/>
   Options FollowSymLinks +ExecCGI
   Allow from all
   AddHandler cgi-script .py
  </Location>

Installare su Ubuntu/Xubuntu/Kubuntu
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

Al fine di installare il pacchetto OBS in openSUSE 12.1, potete eseguire i seguenti comandi
come utente ``root``:

.. code-block:: bash

  $ zypper -ar http://download.opensuse.org/repositories/Application:/Geo/openSUSE_12.1/ GEO
  $ zypper -ar http://download.opensuse.org/repositories/devel:/languages:/python/openSUSE_12.1/ python
  $ zypper refresh
  $ zypper install pycsw

Per le versioni precedenti di openSUSE cambiare ``12.1`` con ``11.4``. Per le versioni 
future di openSUSE usare ``Factory``. La versione Rolling ``Tumbleweed`` è anch'essa supportata.
pycsw è inclusa nel repository ufficiale Application::Geo del OpenSUSE Build Service.

Testare l'applicazione
==========================

Per testare pycsw, usare il launcher pycsw dal gruppo Web Services, o aprire Firefox e andate 
all'indirizzo ``http://localhost/pycsw/tester/index.html``:

.. image:: ../../images/screenshots/1024x768/pycsw_tester_startup.png
  :scale: 75 %

Selezionando la lista drop-down a sinistra, l'utente può vedere diverse richieste POST predefinite,
codificate come XML, che possono essere spedire a pycsw: 

.. image:: ../../images/screenshots/1024x768/pycsw_tester_selection.png
  :scale: 75 %

Per esempio, selezionando "apiso/DescribeRecord", e cliccando il pulsante "Send", una descrizione
del ISO Application Profile record è visualizzato nel pannello di destra:

.. image:: ../../images/screenshots/1024x768/pycsw_tester_describe_apiso_record.png
  :scale: 75 %

Selezionandog "GetCapabilities-SOAP" e cliccando il pulsante "Send", una richiesta SOAP è spedita al
server e ritorna le capacità del servizio web:

.. image:: ../../images/screenshots/1024x768/pycsw_tester_soap_capabillities.png
  :scale: 75 %

Inoltre, l'utente può cercare i dati, effettuando un'interrogazione spaziale attraverso
una bounding box, selezionando "GetRecords-filter-bbox" e modificando le coordinate nella
richiesta XML:

.. image:: ../../images/screenshots/1024x768/pycsw_tester_getrecords_bbox_filter.png
  :scale: 75 %

L'utente può andare attraverso tutte le richieste disponibili ed eseguire diverse richieste
per questa applicazione di test. Una via più robuste e grafica per eseguire queste richieste
è descritta in un capitolo seguente di questo tutorial.

Capabilities Document e configurazione
=======================================

Le capacità dell'installazione di pycsw può essere trovate all'indirizzo ``http://localhost/pycsw/csw.py?service=CSW&version=2.0.2&request=GetCapabilities``.

.. image:: ../../images/screenshots/1024x768/pycsw_getcapabilities_response.png
  :scale: 75 %

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

.. image:: ../../images/screenshots/1024x768/pycsw_euosme_homepage.png
  :scale: 75 %

L'utente compila i campi dei metadati obbligatori, attraverso le tabelle dell'applicazione, 
aggiungendo informazioni come il nome del proprietario dei dati, parole chiavi, la posizione
della risorsa del web, la posizione geografica (usando una bounding box o il nome di uno stato) etc. 

.. image:: ../../images/screenshots/1024x768/pycsw_euosme_metadata_input.png
  :scale: 75 % 

.. image:: ../../images/screenshots/1024x768/pycsw_euosme_metadata_bbox.png
  :scale: 75 %

Dopo che l'utente ha aggiunto tutte le informazioni disponibili, bisogna spingere il pulsante di
validazione in alto della pagina, questo controllo può essere eseguito per consistenza con la
direttiva INSPIRE.

.. image:: ../../images/screenshots/1024x768/pycsw_euosme_save_metadata.png
  :scale: 75 %

Dopo una validazione andata a buon fine, il file XML può essere salvato nel disco locale e visto attraverso une editor testuale o un browser.

.. image:: ../../images/screenshots/1024x768/pycsw_euosme_xml.png
  :scale: 75 %

Usando GIMED
---------------

`GIMED`_ è un Software Libero per creare e gestire file XML per metadati compatibili con INSPIRE.
Per installare l'applicazione, usare i seguenti comandi da un terminale:

.. code-block:: bash

  $ wget http://downloads.sourceforge.net/project/gimed/GIMED_v1.3.0.tar.gz
  $ tar zxvf GIMED_v1.3.0.tar.gz
  $ mono ./GIMED_v1.3.0/bin/GIMED.exe

L'utente può seguire la stessa procedura come per EUOSME per agiungere o modificate metadata, senza il bisogna di una connessione internet.

.. image:: ../../images/screenshots/1024x768/pycsw_gimed.png
  :scale: 75 %


Caricare Metadata
====================

Impostare il repository dei Metadata
---------------------------------------

pycsw supporta i seguenti database:

- SQLite3
- PostgreSQL
- MySQL

Nel OSGeo-Live, un semplice SQLite è stato utilizzato. Il database può essere trovato in ``/var/www/pycsw/data/cite``

In caso di un nuovo database il processo di installazione è:

.. code-block:: bash

  $ cd /path/to/pycsw
  $ export PYTHONPATH=`pwd`
  $ python ./sbin/setup_db.py sqlite:////path/to/records.db

Importare Metadata
---------------------

.. code-block:: bash

  $ cd /path/to/pycsw
  $ export PYTHONPATH=`pwd`
  $ python ./sbin/load_records.py /path/to/records sqlite:////path/to/records.db

Questo importerà tutti i file ``*.xml`` da ``/path/to/records`` in ``records.db`` e configura il repository per essere interrogabile come per Table 53 di OGC:CSW.

.. image:: ../../images/screenshots/1024x768/pycsw_import_metadata.png
  :scale: 75 %

Installazione del client CSW di QGIS
======================================

The HTTP request/response mechanism is not friendly enough to the end user in order to perform queries to the Catalogue Service.
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

.. image:: ../../images/screenshots/1024x768/pycsw_qgis_plugin.png
  :scale: 75 %

Attivate il plugin CSW dalla lista

.. image:: ../../images/screenshots/1024x768/pycsw_qgis_plugin_enable.png
  :scale: 75 %

Quindi selezionate il bottone CSW dalla barra degli strumenti e lanciate CSW Client

.. image:: ../../images/screenshots/1024x768/pycsw_qgis_csw_plugin_open.png
  :scale: 75 %

Aggiungetr il server pycsw premendo il bottone "New" e digitate ``http://localhost/pycsw/csw.py``

.. image:: ../../images/screenshots/1024x768/pycsw_qgis_csw_plugin_add_server.png
  :scale: 75 %

L'utente può aggiungere alcuni server di default usando il bottone "Add default servers" e anche ottenere
le capabilities del server usando il bottone "Server info"

.. image:: ../../images/screenshots/1024x768/pycsw_qgis_csw_plugin_server_info.png
  :scale: 75 %

Eseguire la ricerca utilizzando il catalogo, o tramite valore stringa o con un rettangolo di selezione

.. image:: ../../images/screenshots/1024x768/pycsw_qgis_csw_plugin_search.png
  :scale: 75 %

Test dell'applicazione
------------------------

Per scoprire i dati può essere anche eseguita tramite l'applicazione Tester impostando le appropriate richieste per esempio qualsiasi ricerca di testo con la stringa "imagery" scoprendo i dati XML creato in precedenza dal EUOSME

.. image:: ../../images/screenshots/1024x768/pycsw_tester_discovery.png
  :scale: 75 %

Per maggiori informazioni su pycsw, guardare la `documentazione`_ sul sito di pycsw.

.. _`Python`: http://www.python.org/
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

