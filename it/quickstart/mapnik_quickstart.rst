:Author: OSGeo-Live
:Author: Dane Springmeyer
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-mapnik.png
  :scale: 80 %
  :alt: project logo
  :align: right

Guida rapida su Mapnik
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Mapnik è una serie di strumenti per sviluppare applicazioni di mappe. Soprattutto
Mapnik è utile a creare belle mappe. È facilmente estensibile e adatto per sviluppi
desktop e web.


Mapnik & Python
--------------------------------------------------------------------------------

Mapnik e i suoi bindings in Python sono installati e pronti per essere usati per creare
script su questa macchina.

Creare mappe in Python è veramente semplice con Mapnik. Digita `python` sulla linea di
comando per entrare nell'interprete Python e provate questo::

    >>> import mapnik2, os
    >>> m = mapnik2.Map(600,400)
    >>> style = '/usr/local/share/mapnik/demo/population.xml'
    >>> mapnik2.load_map(m,style)
    >>> m.zoom_all()
    >>> mapnik2.render_to_file(m,'map.png')
    >>> os.system('xdg-open map.png')


.. note::

      Il codice sopra dipende nel avere una file di stile XML che Mapnik possa leggere,
      definendo i layers da leggere e gli stili da applicare a questi layers. È possibile
      crearne uno da dentro QGIS con il plugin Quantumnik: http://plugins.qgis.org/plugins/quantumnik/


Mapnik & OpenLayers
--------------------------------------------------------------------------------

Inoltre una applicazione demo basilare è disponibile, che evidenzia come fornire tiles
utilizzando Mapnik in una mappa web di OpenLayers con lo schema di tile OSM/Google.

La demo usa un tileserver realizzato per Mapnik che si chiama "TileLite"

  * Maggiori informazioni su TileLite: https://github.com/springmeyer/tilelite

Per eseguire la demo basta seguire questi passaggi:

  #. Cliccare su :menuselection:`Desktop --> Spatial Tools --> Start Mapnik & TileLite`

    * Il server dovrebbe avviarsi in una finestra del terminale (che rimane aperto e mostra alcune
      infomazioni basilari per il debug).

    * Se la finestra del terminale non si apre, provate a reinstallzare TileLite e avviare il
      server dalla linea di comando::

        $ sudo easy_install tilelite
        $ liteserv.py /usr/local/share/mapnik/demo/population.xml


  #. Controllate al fine di essere sicure che il server sia funzionante visitando la pagina
     iniziale di TileLite andando su http://localhost:8012

  #. Quindi visitate l'esempio alla pagina dell'applicazione demo TileLite OpenLayers "World Population":

    * Questa pagina è all'indirizzo `http://localhost/mapnik/local.html <../../mapnik/local.html>`_


E poi?
--------------------------------------------------------------------------------

* Tutorial Mapnik

  Segui i tutorials_ per imparare di più su Mapnik.

.. _tutorials: https://github.com/mapnik/mapnik/wiki/MapnikTutorials

* Esplora i files sul DVD

  Vedi anche i files_ inclusi in questo DVD.

.. _files: file:///usr/local/share/mapnik/
