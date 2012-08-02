:Author: Simon Cropper
:Translator: Antonio Falciano
:Version: osgeo-live6
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-gvSIG.png
   :scale: 50 
   :align: right

********************************************************************************
gvSIG Quickstart 
********************************************************************************

Descrizione del progetto
================================================================================

"gvSIG è un'applicazione desktop GIS (Sistema Informativo Geografico) progettata 
per acquisire, immagazinare, manipolare, analizzare e implementare qualsiasi 
tipo di informazione geografica georeferenziata al fine di risolvere problemi 
di pianificazione e gestione complessi. gvSIG è noto per la sua interfaccia 
user-friendly e la capacità di accesso ai formati vettoriali e raster più comuni. 
Comprende un'ampia serie di strumenti per lavorare con l'informazione geografica 
(query, creazione di layout, geoprocessi, reti, ecc.), che rende gvSIG uno strumento 
ideale per gli utenti che lavorano in ambito geografico." 
`gvSIG <http://www.gvsig.org/web/projects/gvsig-desktop/description2/view?set_language=en>`_ 2011

Il quickstart descrive come...
=================================== 

* avviare gvSIG e creare una vista;
* definire la proiezione di una vista;
* aggiungere dati vettoriali e raster ad una vista;
* navigare in una vista;
* modificare la modalità di presentazione dei layer in una vista;
* selezionare le città che ricadono in una particolare regione e esportarle 
  in un nuovo file;
* creare una mappa con reticolato geografico e
* salvare il progetto corrente ed uscire da gvSIG. 

Avviare gvSIG e creare una vista
================================================================================

Selezionare gvSIG dal menù delle applicazioni. L'applicazione di solito impiega alcuni
secondi per l'avvio.

#. Per impostazione predefinita, gvSIG si apre con un file di progetto vuoto con il 
   tipo di documento 'Vista' selezionato. 
#. Cliccare sul pulsante [Nuovo] per creare una vista.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_001.png
   :scale: 55 

Definire la proiezione di una vista
================================================================================

Aprire la finestra delle proprietà della vista
--------------------------------------------------------------------------------

#. Selezionare la nuova vista appena creata. Per impostazione predefinita è 
   intitolata ``Senza titolo - 0`` oppure ``Senza titolo - 1`` se è stata già 
   creata e poi cancellata una vista. 
#. Cliccare sul pulsante [Proprietà] per aprire la finestra **Proprietà della vista**.
#. Cliccare sul pulsante [...] accanto a 'Proiezione attuale'. 
   Questa azione apre la finestra **Nuovo CRS**.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_002.png
   :scale: 55 

Definire un sistema di coordinate (CRS)
--------------------------------------------------------------------------------

#. Usando la casella a discesa 'Tipo', selezionare EPSG.
#. Digitare il codice EPSG per il sistema di coordinate (CRS). Ad esempio, 
   si scelga 4326, essendo EPSG:4326 il sistema geografico WGS84 2D. Successivamente
   cliccare sul pulsante [Cerca]. Comparirà la lista del CRS ricercato nella tabella 
   sottostante la casella di testo di ricerca.
#. Cliccare sul pulsante [Accetta] per tornare alla finestra **Proprietà della vista**.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_003.png
   :scale: 55 

Salvare le proprietà della vista
--------------------------------------------------------------------------------

#. Si noti che ora il codice EPSG è 4326 e le unità di mappa sono espresse in gradi.
#. Cliccare sul pulsante [Accetta] per tornare alla finestra **Gestore di progetto**.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_004.png
   :scale: 55 

Aprire la vista
--------------------------------------------------------------------------------
   
#. Selezionare la vista appena creata.
#. Cliccare sul pulsante [Apri] per aprire la *Vista*.
#. La finestra di una vista consiste in tre zone.
#. La zona in alto a sinistra contiene la lista dei layer vettoriali e raster che 
   sono usati nella vista (Tabella dei Contenuti, ToC in breve).
#. La zona in basso a sinistra contiene il *Localizzatore*, in cui è mostrata 
   l'estensione attuale della vista rispetto a uno (o più) layer di riferimento.
#. La zona a destra è l'area di visualizzazione, laddove sono rappresentati i layer 
   vettoriali e raster.
#. Selezionare l'icona 'Ripristina' per massimizzare l'area occupata dalla vista.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_005.png
   :scale: 55 

Aggiungere layer vettoriali e raster nella vista
================================================================================

Aprire la finestra Aggiungi layer
--------------------------------------------------------------------------------
   
#. Cliccare sull'icona 'Aggiungi layer' nella barra degli strumenti per aprire la 
   finestra **Aggiungi layer**.
#. Selezionare il pulsante [Aggiungi] nella finestra **Aggiungi layer**. Per 
   impostazione predefinita la prima scheda è *File*, pertanto comparirà la 
   finestra di dialogo **Apri** per l'apertura di file.
#. Esplorare la cartella ``/usr/local/share/data/natural_earth/HYP_50M_SR_W``.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_006.png
   :scale: 55 

Selezionare un file raster
--------------------------------------------------------------------------------
   
#. Selezionare *gvSIG Raster Driver* dalla lista a discesa dei tipi di file. 
   Per impostazione predefinita è selezionato il driver degli shapefile driver 
   in modo che la cartella non appaia vuota. 
#. Selezionare il file ``HYP_50M_SR_W.tif``.
#. Cliccare sul pulsante [Apri] per ritornare alla finestra **Aggiungi layer**.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_007.png
   :scale: 55 

Selezionare un file vettoriale
--------------------------------------------------------------------------------
  
#. La finestra **Aggiungi layer** ora elencherà il file raster selezionato in 
   precedenza.
#. Selezionare il pulsante [Aggiungi] per aggiungere alcuni layer vettoriali. 
   Comparirà la finestra di dialogo **Apri** per l'apertura di file.
#. Selezionare il pulsante [Cartella superiore] nel menù per cambiare la cartella 
   in ``/usr/local/share/data/natural_earth``.
#. Selezionare *gvSIG shp driver* dalla lista a discesa dei tipi di file.
#. Selezionare gli shapefile ``10m_admin_1_states_provinces.shp``, 
   ``10m_populated_places_simple.shp`` e ``10m_rivers_lake_centerlines.shp`` 
   dalla lista. Tenere premuto il tasto Ctrl per effettuare una selezione multipla.
#. Cliccare sul pulsante [Apri] per ritornare alla finestra **Aggiungi layer**.
#. Cliccare sul pulsante [Accetta] nella finestra **Aggiungi layer** per ritornare 
   alla vista.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_008.png
   :scale: 55 

Strumenti di base di navigazione della vista
================================================================================

Zoom su un'area di interesse
--------------------------------------------------------------------------------

Ritornando alla vista si osserva che i file vettoriali sono sovrapposti al file 
raster. I colori mostrati in questa schermata possono essere differenti a seconda 
delle preferenze dell'utente.
       
#. Per impostazione predefinita lo strumento *Aumenta zoom* è selezionato nella 
   barra degli strumenti. 
#. Usare il puntatore del mouse per tracciare un'area di selezione comprendente 
   il Sud-Est dell'Australia. A tal fine, selezionare l'angolo in alto a sinistra 
   dell'area di selezione e, tenendo premuto il tasto sinistro del mouse, 
   trascinare l'angolo in basso a destra fino a comprendere l'area da selezionare.
   Rilasciare il tasto sinistro del mouse una volta definita l'area di interesse. 

.. image:: ../../images/screenshots/1024x768/gvsig_qs_009.png
   :scale: 55 

Navigazione nella vista
--------------------------------------------------------------------------------
   
La vista cambierà automaticamente in modo da mostrare la zona compresa nell'area 
di selezione.

#. Le dimensioni della ToC possono essere modificate usando il 
   mouse in modo da poter vedere i nomi di layer lunghi.
#. Adattare il contenuto della vista utilizzando gli strumenti di navigazione 
   attivi nella barra degli strumenti in modo da mostrare la città di Vittoria 
   al centro della vista. 

.. image:: ../../images/screenshots/1024x768/gvsig_qs_010.png
   :scale: 55 

Cambiare la modalità di rappresentazione dei layer nella vista
================================================================================

Rendere un poligono trasparente
--------------------------------------------------------------------------------
   
#. Selezionare il layer ``10m_admin_1_states_provinces.shp`` usando il tasto 
   sinistro del mouse e cliccare nuovamente con il tasto destro del mouse.
#. Selezionare l'opzione *Proprietà* dal menù contestuale.
#. Apparirà la finestra **Proprietà del layer**.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_011.png
   :scale: 55 

Cambiare la simbologia di un layer vettoriale
--------------------------------------------------------------------------------
   
#. Selezionare la scheda *Simbologia* nella finestra **Proprietà del layer**.
#. Cliccare sul pulsante [Seleziona simbolo] in modo da far comparire la finestra 
   **Selettore dei simboli**.
#. Disattivare l'opzione *Colore di riempimento* in modo da rendere i poligoni 
   trasparenti.
#. Cliccare sul pulsante [Accetta] per ritornare alla finestra **Proprietà del layer**.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_012.png
   :scale: 55 

Cambiare l'etichettatura di un layer vettoriale
--------------------------------------------------------------------------------
   
#. Selezionare la scheda *Etichettatura* nella finestra **Proprietà del layer**.
#. Cambiare il *Campo da etichettare* con quello da mostrare nella vista, poi 
   cliccare sul pulsante [Accetta].

.. image:: ../../images/screenshots/1024x768/gvsig_qs_013.png
   :scale: 55 

Il risultato
--------------------------------------------------------------------------------
   
Si noti che nella vista sono mostrati un layer vettoriale di punti, uno di linee 
e un altro di poligoni sovrapposti ad un layer raster. E' facile utilizzare una 
foto aerea o un modello digitale del terreno (DTM) come sfondo ai dati vettoriali 
o per mostrare altri dati vettoriali memorizzati in altro formato.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_014.png
   :scale: 55 

Esercizio - cambiare la simbologia e l'etichettatura dei layer di punti e di linee
----------------------------------------------------------------------------------
   
Seguendo i passaggi precedenti, cambiare la simbologia, il colore e l'etichettatura 
dei fiumi e delle città in modo da ottenere un risultato simile a quello della 
seguente schermata.  

.. image:: ../../images/screenshots/1024x768/gvsig_qs_015.png
   :scale: 55 

Semplice analisi - selezione delle città in una regione
================================================================================

Selezionare la regione
--------------------------------------------------------------------------------
   
#. Selezionare il layer ``10m_admin_1_states_provinces.shp`` usando il tasto  
   sinistro del mouse.
#. Selezionare l'icona 'Seleziona con punto' nella barra degli strumenti.
#. Cliccare sul poligono che rappresenta lo Stato di Vittoria. Il poligono 
   diventerà di colore giallo o un altro in funzione delle proprie preferenze utente.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_016.png
   :scale: 55 

Selezionare le città contenute nella regione
--------------------------------------------------------------------------------
   
#. Selezionare il layer ``10m_populated_places_simple.shp`` usando il tasto  
   sinistro del mouse.
#. Selezionare l'opzione ``Vista > Selezione > Selezione con layer`` dal menù 
   principale per aprire la finestra **Selezione con layer**.
#. Cambiare i due criteri di selezione usando le caselle a discesa poste nel 
   lato sinistro della finestra **Selezione con layer**. Cliccare sul pulsante 
   [Nuovo insieme] per selezionare le città contenute nel poligono selezionato.
#. Cliccare sul pulsante [Cancella] nella finestra **Selezione con layer** per 
   ritornare alla vista.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_017.png
   :scale: 55 

Annullare la selezione del poligono in modo da vedere il risultato
--------------------------------------------------------------------------------
   
#. Selezionare il layer ``10m_admin_1_states_provinces.shp`` usando il tasto  
   sinistro del mouse.
#. Cliccare sull'icona 'Deseleziona' nella barra degli strumenti.
#. Si osserverà che solo le città contenute nello stato di vittoria sono state 
   selezionate.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_018.png
   :scale: 55 

Esportare le città selezionate in un nuovo shapefile
--------------------------------------------------------------------------------
   
#. Selezionare il layer ``10m_populated_places_simple.shp`` usando il tasto  
   sinistro del mouse.
#. Selezionare l'opzione ``Layer > Esporta... > SHP`` dal menù principale per 
   iniziare l'esportazione.
#. Comparirà la finestra **Esporta...**. gvSIG riconosce che solo 26 elementi 
   sono selezionati, quindi avverte l'utente che solo un sottoinsieme dello 
   shapefile sarà esportato. Cliccare sul pulsante [Si] per continuare.
#. Apparirà la finestra **Salva**, in cui occorrerà fornire il nome del file 
   e selezionare la cartella dove salvarlo. Cliccare sul pulsante [Salva] 
   per continuare. Occorre notare che se un file con lo stesso nome è già 
   presente comparirà un messaggio di informazione per l'utente.
#. Apparirà la finestra **Aggiungi layer**. Cliccare sul pulsante [Si] per 
   aggiungere il nuovo shapefile alla ToC.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_019.png
   :scale: 55 

Mostrare solo le città contenute in una regione
--------------------------------------------------------------------------------

#. Una volta ritornati alla vista, deselezionare ``10m_populated_places_simple.shp`` 
   nella ToC.
#. Cambiare la simbologia e l'etichettatura di ``test.shp`` come nella schermata 
   seguente. 
#. Ora la vista includerà solo le città contenute nello Stato di Vittoria.
#. Cliccare sull'icona 'Chiudi' per tornare al **Gestore di progetto** in modo 
   da poter creare una mappa con questa vista.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_020.png
   :scale: 55 
   
Come creare una mappa
================================================================================

Creare una nuova mappa e aprirla
--------------------------------------------------------------------------------

#. Selezionare il tipo di documento *Mappa* nel **Gestore di progetto**.
#. Cliccare sul pulsante [Nuovo] per creare una mappa.
#. Selezionare la mappa appena creata. Per impostazione predefinita è intitolata 
   ``Senza titolo - 0``.
#. Cliccare sul pulsante [Apri].
#. Apparirà una mappa vuota la cui finestra è intitolata ``Mappa : Senza titolo - 0``.
   E' possibile notare una serie di punti posizionati sulla mappa. Si chiama griglia 
   ed è utilizzata per agganciare gli oggetti durante la composizione di una mappa.
#. Cliccare sull'icona 'Ingrandisci' in modo che la mappa occupi l'intero schermo. 

.. image:: ../../images/screenshots/1024x768/gvsig_qs_021.png
   :scale: 55 

Inserire una vista con griglia/reticolato geografico
--------------------------------------------------------------------------------
   
#. Cliccare sull'icona 'Inserisci vista' nella barra degli strumenti della mappa.
#. Definire un'area di selezione che rappresenta l'estensione della vista 
   all'interno del documento mappa, cliccando sulla mappa vuota tenendo premuto 
   il tasto sinistro del mouse e trascinando quest'ultimo, per poi rilasciarlo una 
   volta che si è descritta l'area da usare. Questa operazione aprirà la finestra 
   **Proprietà della vista**. 
#. Selezionare la *vista* creata in precedenza nella finestra **Proprietà della 
   vista**.
#. Attivare l'opzione *Mostra griglia* al fine di creare il reticolato.
#. Cliccare sul pulsante [Configura] per aprire la finestra **Proprietà della 
   griglia**.
#. Nella finestra **Proprietà della griglia** impostare l'intervallo della griglia 
   pari a 1.0, in modo che la distanza tra le linee del reticolato geografico 
   sia pari a 1 grado.
#. Selezionare il formato della griglia (usare le linee piuttosto che i punti 
   per semplicità di visualizzazione).
#. Impostare la dimensione dei caratteri pari a 14.
#. Cliccare sul pulsante [Accetta] per ritornare alla finestra **Proprietà della 
   griglia**, poi cliccare sul pulsante [Accetta] per uscire e ritornare alla mappa.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_022.png
   :scale: 55 

Cos'altro è possibile fare con una mappa?
--------------------------------------------------------------------------------
   
#. Selezionare l'opzione ``Mappa > Proprietà`` dal menù principale per aprire  
   la finestra **Proprietà della mappa**. Disattivare l'opzione *Visualizza 
   griglia* e poi cliccare sul pulsante [Accetta]. La griglia di aggancio 
   usata durante la composizione della mappa è rimossa dal documento e 
   l'immagine dovrebbe essere simile a quella mostrata nel seguito. 
#. Ulteriori oggetti come la scala e il simbolo del Nord possono essere aggiunti 
   alla mappa usando le icone della barra degli strumenti della mappa o dei 
   sottomenù del menù ``Mappa``.
#. La mappa può essere stampata o esportata come PDF o Postscript (PS) per 
   utilizzarle in altri lavori.
#. Cliccare sull'icona 'Chiudi' per tornare al **Gestore di progetto**.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_023.png
   :scale: 55 

Salvare il progetto o uscire da gvSIG
================================================================================
   
#. I progetti possono essere salvati per usarli successivamente mediante 
   l'opzione di menù ``File > Salva come...``.
#. E' possibile chiudere i progetti usando l'opzione di menù ``File > Esci``.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_024.png
   :scale: 55 

Risorse utili
================================================================================

Del materiale didattico in italiano è disponibile sul sito di   
`gvSIG <https://gvsig.org/web/docusr/learning/cursos-gvsig#italiano>`_ . 


