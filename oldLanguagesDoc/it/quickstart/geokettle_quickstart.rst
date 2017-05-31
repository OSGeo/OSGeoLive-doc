:Author: Jean Mathieu
:Author: Thierry Badard
:Reviewer: Sergio Baños Calvo
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live7.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-geokettle.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://www.geokettle.org/

********************************************************************************
Guida rapida GeoKettle
********************************************************************************

GeoKettle è un versione di Pentaho Data Integration (meglio conosciuto come Kettle)
con il supporto “spaziale”. È uno strumento potente, metadata-driven spaziale ETL
(Extract, Transform and Load) dedicato all'integrazione di differenti sorgenti di dati
per costruire e aggiornare database geospaziali, data warehouses e servizi web.

GeoKettle abilita l'Estrazione di dati da sorgenti, la Trasformazione di dati al fine
di correggere errori, pulire dati, cambiare la struttura dei dati, rendere i dati
compatibili con gli standard, e Caricare i dati trasformati in un DataBase Management
System (DBMS), file GIS, o servizio web geospaziale. GeoKettle è particolarmente
utile per processamenti automatici complessi e ripetitivi di dati senza produrre
codice specifico, convertendo formati di dati, migrazione tra database, inserimento
di dati in database, ecc.

Questa guida rapida descrive come:

  * Caricare una trasformazione esistente di dati
  * Creare una trasformazione di dati

.. contents:: Contenuti

Avviare GeoKettle
================================================================================

#. Scegliere :menuselection:`Spatial Tools --> GeoKettle` dal menu di avvio Geospatial
#. Aspettare, l'applicazione impiegherà alcuni momenti per avviarsi
#. Si visualizzerà la seguente finestra. Riempire le informazione sul repository o
semplicemente cliccare il bottone "No repository" per entrare ter the GeoKettle's workbench

  .. image:: ../../images/screenshots/800x600/geokettle_welcome.png
    :scale: 80 %

Workbench
================================================================================

Come illustrato nel seguente screenshot, the Workbench window è composta di
diversi pannelli.

  .. image:: ../../images/screenshots/1024x768/geokettle_workbench.png
    :scale: 80 %

La parte sinistra funziona come catalogo contenente tutti i passaggi che possono
comporre una trasformazione di dati. La parte destra del workbench è l'area dove
la trasformazione stessa sarà disegnata ed eseguita/testata.

I contenuti di questi pannelli saranno descritti dopo insieme alla dimostrazione del
loro uso.

Caricare un trasformazione esistente
================================================================================

Per caricare una trasformazione esistente, selezionare :menuselection:`File --> Open`.
Naviga fino alla sottodirectory degli esempi di trasformazione
:file:`/opt/geokettle/samples/transformations/geokettle`, quindi selezionare uno degli
esempi di trasformazione disponibili e cliccare :guilabel:`OK`. Le trasformazioni in
GeoKettle sono salvate in file con l'estensione `*.ktr`.

La seguente figura mostra la trasformazione di esempio « intersezione ».

  .. image:: ../../images/screenshots/1024x768/geokettle_intersection_transformation.png
    :scale: 80 %

Una descrizione della trasformazione e direttive opzionali possone essere
viste in gianno nell'area dei suggerimenti.

Prima di iniziare la trasformazione, si dovrà specificare quale shapefile usare.
Per fare ciò, doppio click su ogni passaggio del « GIS file input » per far
apparire la seguenti finestra.

  .. image:: ../../images/screenshots/800x600/geokettle_shapefile_input_step.png

.. note:
   You may also customize any steps of any transformation by double clicking on it.

Inserire il nome dello shapefile includendo l'estensione `*.shp` o lasciare così
com'è per utilizzare i dati di esempio e cliccare :guilabel:`OK`.

Ora si è pronti per avviare la trasformazione. Per fare ciò, cliccare semplicemente
il pulsante esegui nella barra degli strumenti sopra la trasformazione.

Creare una nuova trasformazione dei dati
================================================================================

Avviare GeoKettle e accedere the workbench nello stesso modo avete fatto quando
avete caricato la trasformazione esistente (vedere la sezione precedente).

Per creare una nupva trasformazione, selezionare :menuselection:`File --> New --> Transformation`.
Si può specificare il nome della trasformazione salvandolo con un nome diverso
(selezionare :menuselection:`File --> Save as...`).

Come mostrato nella figura seguente, tutti i passaggi disponibili sono elencate
per categoria nell'area a sinistra del workbench. Espandi una categoria per
vedere i passaggi disponibili.

  .. image:: ../../images/screenshots/800x600/geokettle_your_transformation.png
    :scale: 80 %

Per aggiungere un nuovo passaggio alla trasformazione, trascinarla dal pannello
**Steps** a quello **transformation**. A questo punto personalizzare questo
nuovo passaggio aggiunto alla trasformazione facendo un doppio click.


**Hops**

Un hop, rappresentate una freccia tra 2 passaggi, definisce il dataflow tra questi
passaggi. Come mostrato nella figura seguente, aggiungendo un hop da **Table Input**
a **Add sequence** significa che l'output ottenuto di **Table Input** sarò spedito al
passaggio **Add sequence** per ulteriori analisi e ecc.

  .. image:: ../../images/screenshots/800x600/geokettle_hop.png
    :scale: 60 %

Per creare un nuovo hop, selezionare 2 passaggi, tasto destro su uno di loro
e selezionare :menuselection:`New hop`. Un'altra via di fare ciò è di premere
e tenere :kbd:`Ctrl` mentre si selezionano i 2 passaggi.

Qualsiasi hop può essere editato in qualsiasi tempo facendo doppio click su
di esso o cliccando col destro su esso e selezionare :menuselection:`Edit hop`
nel menu del popup.


**Impostare la trasformazione**

La maggiore parte dei passaggi in una trasformazione richiederà parametrizzazione
personalizzata prima di essere usabile. Doppio click su ogni passaggio per
visualizzare una finestra nel quale si potrà vedere e specificare ogni
valore richiesto dal parametro.


**Eseguire una trasformazione**

Quando eseguendo una trasformazione, un nuovo pannello apparirà sotto quello
dove la trasformazione è disegnata. Questo pannello (anche chiamato pannello
**Execution Results**) contiene informazioni sul ation about data flow
attraverso tutti i passaggi che compongono la trasformazione.

Il pannello **Step Metrics** (mostrato nella prossima figura) sarà visualizzato
inizialmente. In questo pannello è possibile vedere informazioni generali
riguardo il dataflow della trasformazione così come il numero di righe lette,
scritte, in input e in output per ogni passaggio. La colonna **Active** informa
gli utenti se il passaggio è iniziato, si sta eseguendo, finito, stoppato, ecc.
Il tempo passato dall'inizio dello passaggio è mostrato nella colonna **Time**,
così come la velocità media (colonna **Speed**) del passaggio (righe/secondi).

  .. image:: ../../images/screenshots/1024x768/geokettle_running_transformation.png
    :scale: 70 %


**Anteprima di una trasformazione**

Provando ad eseguire una trasformazione potrebbe ritornare errors nel pannello
**Execution Results** (vedere la prossima figura). Quindi controllare il contenuto
del pannello **Logging**. C'è sempre molte informazioni utili che informano con la
sorgente e la motivazione dell'errore. Modificare i parametri del passaggio con
errori e riavviare la trasformazione.

  .. image:: ../../images/screenshots/1024x768/geokettle_transformation_fail.png
    :scale: 70 %

Ad aiutare a trovare la sorgente di un errore, si può anche vedere in anteprima
i risultati di una trasformazione da un passaggio precedente nel flusso di lavoro.
Per fare ciò, tasto destro sul passaggio, e selezionare :menuselection:`Preview`
nel menu del popup che appare. Questo, mostra in via di tabella e cartografica che
mostra i dati a questo punto senza dover eseguire la trasformazione intera.

Cose da provare
================================================================================

Di seguito alcune ulteriori sfide per voi da provare:

#. Esplorare la diversità di tutti i passaggi che GeoKettle fornisce
#. Provare il debugger GeoKettle al fine ti analizzare una trasformazione con errori
#. Provare a costruire una trasformazione con i vostri dati

Ed ora?
================================================================================

Visionate la documentazione disponibile sulla `sito <http://docs.spatialytics.com/doku.php?id=en:spatialytics_etl>`_ di Spatialytics.
Non esistare a chiedere aiuto sul `forum <http://forum.spatialytics.com>`_ di Spatialytics.
