:Author: OSGeo-Live
:Author: Alan Boudreault, Steve Lime
:Translator: Roberta Fagandini
:Version: osgeo-live5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-mapserver-new.png
  :scale: 65 %
  :alt: Project logo
  :align: right
  :target: http://mapserver.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

================================================================================
Guida rapida su MapServer
================================================================================

MapServer è un'applicazione server `Open Source <http://www.opensource.org>` che ti 
permette di pubblicare immagini di mappe geografiche e dati vettoriali attraverso 
internet utilizzando `standards OGC <http://www.opengeospatial.org/standards>`_ come `WMS <http://www.opengeospatial.org/standards/wms>`_ e `WFS <http://www.opengeospatial.org/standards/wfs>`_.

Questa guida rapida descrive come:

  * :ref:`mapserver-quickstart-configure-with-mapfile-it`
  * :ref:`mapserver-quickstart-wms-request-it`
  * :ref:`mapserver-quickstart-add-new-layer-it`
  * :ref:`mapserver-quickstart-styling-di-un-layer-it`
  
 .. _mapserver-quickstart-configure-with-mapfile-it:
 
Configura MapServer utilizzando il file di configurazione "mapfile"
================================================================================

.. note:: **Cosa imparerò?** In questa sezione imparerai cos'è un mapfile e come
   configurarlo per permettere a MapServer di restituire uno shapefile come immagine
   usando una richiesta WMS.

Cos'è un MapFile?
--------------------------------------------------------------------------------

Il `Mapfile <http://mapserver.org/mapfile/index.html>`_ è il file di configurazione
che MapServer usa per rappresentare dati geospaziali come immagini o dati vettoriali.
Il suo scopo principale è di definire quali layer possono essere rappresentati, come
leggere i dati necessari e come restituirli (es. color, symbol, label, etc...).

--------------------------------------------------------------------------------

#. Apri qualsiasi editor di testo (Mousepad è l'editor di testo di default sul dvd:
   :menuselection:`Applications --> Accessories --> Mousepad`).
#. Crea il file "mapserver_quickstart.map" nella tua directory home: :file:`/home/user/mapserver_quickstart.map`

Inseriscici il seguente contenuto::

  MAP
    NAME "MAPSERVER QUICKSTART"
    EXTENT -137 29 -53 88
    UNITS DD
    SHAPEPATH "/home/user/data/natural_earth2/"
    SIZE 800 600

    IMAGETYPE PNG24
  
    PROJECTION
      "init=epsg:4326" 
    END

    WEB
      METADATA
        ows_enable_request "*"
      END
    END

    LAYER
      NAME "Admin Countries"
      STATUS ON
      TYPE POLYGON
      DATA "ne_10m_admin_0_countries"
      CLASS 
        STYLE
          COLOR 246 241 223
          OUTLINECOLOR 0 0 0
        END
      END 
    END

  END

.. note::
    
   L'esempio utilizza il dataset natural earth, che è già installato nel dvd:
   :file:`~/data/natural_earth2` (percorso breve a :file:`/usr/local/share/data/natural_earth2`)

Ogni oggetto in un mapfile inizia con il suo nome (per esempio **MAP**) e termina con
un **END**. Un mapfile inizia sempre con l'oggetto **MAP** e dovrebbe contenere una
lista di oggetti **LAYER** che il mapfile può leggere e rappresentare. Nel nostro mapfile
abbiamo per il momento definito un solo layer.

Dai uno sguardo ad alcuni degli oggetti (e proprietà) definiti nel nostro mapfile: 
 * EXTENT : definisce la bounding box di default per questa configurazione
 * LAYER : definisce l'accesso e mostra le proprietà per un dataset spaziale. Aggiungeremo
   un altro layer in seguito.
 * SHAPEPATH : definisce un percorso di base per i dati basati sul file (es. shapefiles
   o immagini tiff). 

Se osserviamo più da vicino il **LAYER** nel nostro mapfile, noteremo che contiene una
serie di proprietà e oggetti. Tra questi: 

 * STATUS : se il layer può essere rappresentato (*ON*), non può essere rappresentato
   (*OFF*) o se deve essere sempre rappresentato (*DEFAULT*).
 * TYPE : il tipo di geometria che MapServer deve utilizzare  quando riproduce i dati
   come un immagine; nel nostro mapfile i dati saranno rappresentati come *polygons*.
 * DATA : il nome del file di dati spaziali che questo layer, in questo caso uno shapefile.
 * CLASS : determina come rappresentare un layer (styling).  Affronteremo questo oggetto 
   con maggior dettaglio più avanti.

.. note:: 

  Una lista completa degli oggetti e delle proprietà disponibili che può contenere
  il `Mapfile <http://mapserver.org/mapfile/index.html>`_ si trova nella
  documentazione di MapServer.

.. _mapserver-quickstart-richiesta wms:


Riprodurre una immagine di una mappa con MapServer usando la linea di comando
================================================================================

Nonostante MapServer sia orientato verso le applicazioni web, può anche produrre
immagini statiche tramite la linea di comando. Questo può essere utile se siete alla
ricerca di una mappatura ripetitiva o durante il debugging.

Apri un terminale (Applications/Accessories/Terminal Emulator) e digita

 shp2img -m mapserver_quickstart.map -o mymap.png

Se il comando viene eseguito con successo potrai vedere la tua mappa nel :file:`/home/user/mymap.png` .


.. _mapserver-quickstart-wms-request-it:

Riprodurre una mappa immagine con MapServer usando una richiesta WMS **GetMap** 
================================================================================

.. note:: 

  **Cosa imparerò?** Imparerai come riprodurre un immagine con layer dal mapfile
  con MapServer utilizzando una richiesta OGC WMS.

Apri un web browser e inserisci l'URL seguente::

 http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Admin%20Countries&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=PNG&WIDTH=800&HEIGHT=600

Cosa significa quanto sopra?  In parole semplici è un `Web Map Service (WMS) <http://www.opengeospatial.org/standards/wms>`_ La richiesta **GetMap** che dice a
MapServer di "*usare il mapfile seguente per riprodurre i layer specificat come un'immagine*
*png sulla base di alcuni parametri forniti dall'utente come la dimensione dell'immagine, *
*l'estensione geografica, proiezione, ecc.*" Tutti i layer specificati nella proprietà 
"*&LAYERS=...*" che hanno *STATUS ON* nel mapfile insieme a tutti i layer con *STATUS DEFAULT*
saranno riprodotti.  Il risultato dovrebbe assomigliare al seguente:

  .. image:: ../../images/screenshots/800x600/mapserver_map.png
    :scale: 70 %

.. note:: 

  tutti i parametri della richiesta sono specifici del WMS eccetto 
  "*?map=/home/user/mapserver_quickstart.map*", che è specifico di MapServer.  

.. _mapserver-quickstart-aggiungere un nuovo layer:


.. _mapserver-quickstart-add-new-layer-it:

Aggiungere un nuovo layer al mapfile per fornire uno shapefile locale
================================================================================

.. note:: **Cosa imparerò?** Imparerai ad aggiungere un nuovo oggetto layer al tuo mapfile.

Aggiungeremo un nuovo layer al mapfile. Dopo l'ultima dichiarazione *END* nel mapfile,
aggiungi la configurazione del layer seguente::

 LAYER
   NAME "Lakes"
   STATUS ON
   TYPE POLYGON
   DATA "ne_10m_lakes"
   CLASS 
     STYLE
       COLOR 153 179 204
     END
   END 
  END

Ora abbiamo definito due layer nel nostro mapfile. Si noti che questo nuovo layer che
abbiamo appena aggiunto ha la proprietà "STATUS ON". Ciò significa che se non viene
specificatamente richiesto, non sarà restituito.

Prendiamo la nostra precedente richiesta WMS **GetMap** e aggiungiamo il nostro nuovo
layer "Lakes" all'immagine riprodotta. Abbiamo semplicemente bisogno di aggiungere il
nome del nuovo layer alla lista della proprietà "LAYERS", in questo modo::

 http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Admin%20Countries,Lakes&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=PNG&WIDTH=800&HEIGHT=600

L'immagine restituita da MapServer assomiglia alla nostra mappa precedente ma con
l'aggiunta dei laghi del nostro nuovo layer:

  .. image:: ../../images/screenshots/800x600/mapserver_lakes.png
    :scale: 70 %

.. _mapserver-quickstart-styling-di-un-layer-it:

Definire lo stile di un layer usando la configurazione del mapfile
================================================================================

.. note:: 

  **Cosa imparerò?** vedrai un esempio di elementi di stile all'interno di un layer
  che dipendono da alcune sue proprietà dei dati.

In un MapFile, un layer può contenere un infinito numero di oggetti CLASS. Questi sono
utilizzati per definire lo stile degli elementi contenuti nel file di dati spaziali (DATA).
Ad esempio se guardiamo più da vicino il file di dati "ne_10m_lakes" usando uno strumento come
`ogrinfo <http://www.gdal.org/ogrinfo.html>`_, vedremo la definizione delle geometrie e degli
attributi che contiene. I valori di questi attributi possono essere utilizzati come un mezzo
per rappresentare diversamente gli elementi contenuti in dataset utilizzando diversi oggetti CLASS.

Nel nostro dataset "ne_10m_lakes", abbiamo un attributo *ScaleRank*, che sembra essere correlato
alle dimensioni del lago. Possiamo utilizzare i valori di questo attributo per rappresentare in
modo diverso i laghi. Nell'oggetto LAYER aggiungeremo un altro oggetto CLASS appena prima di
quello corrente, in questo modo::

  LAYER
   NAME "Lakes"
   STATUS DEFAULT
   TYPE POLYGON
   DATA "ne_10m_lakes"
   CLASSITEM "ScaleRank" 
   CLASS 
     EXPRESSION /0|1/  
     STYLE
       COLOR 153 179 204
       OUTLINECOLOR 0 0 0
     END
   END 
   CLASS 
     STYLE
       COLOR 153 179 204
     END
   END 
  END

Cosa fa il nostro nuovo oggetto CLASS?  Fondamentalmente dice a MapServer di rappresentare
gli elementi che hanno la proprietà "ScaleRank" uguale a 0 o a 1 con un una linea di contorno
nera. Gli oggetti Class sono sempre letti dall'alto al basso per ogni feature da rappresentare.
Quando una feature risponde all'"EXPRESSION" specificata in una class, questa class viene 
utilizzata per definire lo stile della feature stessa. Se la feature non risponde a una classe,
viene valutata quella sucessiva. Se una feature non risponde a nessuna class allora non viene
rappresentata e se l'ultima class in un layer non contiene alcun oggetto "EXPRESSION" allora
questa classe viene assunta come di default. La proprietà "CLASSITEM" dice a MapServer quale
attributo utilizzare per la valutazione dell'EXPRESSIONs definite nell'oggetto CLASS.

Il risultato di questa nuova aggiunta dovrebbe mostrare i laghi più grandi nella nostra mappa
con una linea di contorno nera, come nell'immagine di seguito:

  .. image:: ../../images/screenshots/800x600/mapserver_lakes_scalerank.png
    :scale: 70 %

.. note:: 

    Impara di più su `EXPRESSIONS <http://mapserver.org/mapfile/expressions.html>`_ in MapServer.

Che altro?
================================================================================

Questo è un esempio semplice ma puoi fare molto molto di più. Il sito web del progetto MapServer
contiene molte risorse per aiutarti ad iniziare. Qui ce ne sono alcune da considerare in seguito:

* Leggi `Introduzione a MapServer <http://mapserver.org/introduction.html#introduction>`_.
* Dai uno sguardo al `tutorial di MapServer <http://www.mapserver.org/tutorial/index.html>`_
  che contiene diversi esempi di mapfile.
* Guarda `OGC Support and Configuration <http://www.mapserver.org/ogc/index.html>`_ per sapere
  di più sugli standard OGC in MapServer (WMS, WFS, SLD, WFS Filter Encoding, WCS, SOS, etc.).
* Pronto a usare MapServer?  Allora aggiungiti alla comunity sulla 
  `Mailing Lists <http://www.mapserver.org/community/lists.html>`_ per scambiarsi idee, discutere
  potenziali miglioramenti del software e porre domande.
