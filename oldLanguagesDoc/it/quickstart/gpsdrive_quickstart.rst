:Author: Hamish Bowman
:Version: osgeo-live7.9
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation
:Translator: Luca Delucchi

.. image:: ../../images/project_logos/logo-gpsdrive.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.gpsdrive.de

********************************************************************************
Guida rapida su GpsDrive
********************************************************************************

Eseguire
================================================================================

Probabilmente avrete intenzione di installare il pacchetto
 `gpsd <http://savannah.nongnu.org/projects/gpsd>`_ in modo tale da potersi
interfacciare con il vostro GPS; senza questo GpsDrive è solo un visualizzatore
di mappe.

Le tile di OpenStreetMap saranno generate automaticamente usando la libreria
:doc:`Mapnik <../overview/mapnik_overview>` per renderizzare i dati di
:doc:`OpenStreetMap <../overview/osm_dataset_overview>` archiviati in un
database :doc:`PostGIS <../overview/postgis_overview>` già caricato.
Tile statiche possono essere anchr scaricate da internet senza nessuna ulteriore
installazione.
L'output vocale è supportato se il software "espeak" è installato.


Impostare il GPS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Se si ha un GPS connesso dovrete avviare il servizio gpsd.
Per fare ciò:

::

  sudo dpkg-reconfigure gpsd

e

::

  sudo /etc/init.d/gpsd start

Gli utenti con GPS BlueTooth devono fare maggior attenzione a leggere circa
l'opzione no-probe (per questa ragione gpsd non si avvia automaticamente).

* 'xgps' è un buon programma per controllare che Gpsd possa vedere il vostro GPS.


Utilizzare senza GPS come un mapbook
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Se non si ha un GPS connesso si può passare alla modalità Explore con il
tasto 'e' e quinfi usare le frecce per muoversi intorno.
tasto destro per impostare la destionazione.


Supporto veloce
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Per il supporto digitare '**man gpsdrive**' e '**gpsdrive --help**' dal
Terminale. Questo mostrerà come cambiare modalità da Car o PDA che
dovrebbe essere il più utile se si sta lavorando con un schermo piccolo
tipo quello di un notebook


Personalizzare il display
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Oltre alle opzioni date nel menu Preferences e le diverse modalità
car/PDA/desktop offerte dalla linea di comando, è possibile cambiare i metri
visualizzati nella dashboard. Basta solamente cliccare su uno delle tre
posizione dashboard e selezionare un elemento. È possibile attivare o disattivare
il dashboard e i controlli della mappa con i tasti '**d**' e '**m**'.


Rendering dei dati OpenStreetMap tramite Mapnik
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Se si ha un database PostGIS in esecuzione (per esempio quello che è distribuito
con questo Live DVD) è possibile impostare GpsDrive per renderizzare belle mappe
stradali al volo dai dati di OpenStreetMap.org usando la libreria Mapnik.
Il database PostgreSQL cerca nel disco un database chiamato "osm_local".
Siccome l'estratto di OpenStreetMap ha precaricato solo la città che ospita
la conferenza FOSS4G, potrebbe essere vostro desiderio aggiungere il vostro
Planet.osm con il programma `osm2pgsql` o disabilitare il *Mapnik Mode* dalla
finestra *Map Control* e usare quella fornata or scaricare mappe tile statiche.


Trovare punti interesse
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Con lo strumento *Trova POI* è possibile cercare per il punto di interesse
più vicino caricato nel database di punti in SQLite. I dati di
partenza di OpenStreetMap per la città caratterizzata sono già stati caricati
e si possono ottenere per esempio *Tutti i pubs a 2 km dalla sala della conferenza*.
Se non si vede il bottone *Trova POI* in basso a sinistra della barra degli
strumenti provare a massimizzare la finestra o premere il bottone freccia "more"
appena sopra il t above the compass. Impostare "max. Distance" a 2.0 km dalla
posizione attuale, e Tipologia dei POI a :menuselection:`Food --> Pub`. Quindi cliccare
il bottone *Trova* in alto a destra della finestra. Controllare la lista dei pub,
selezionarne uno che sembra essere interessante, e cliccare sul bottone
*Select destinazione*.


Scaricare mappe
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Usare lo strumento :menuselection:`Options --> Maps --> Download` per l'anteprima
e scaricare le nuove tile. Attualmente le tile web di OpenStreetMap e il
server NASA OnEarth T-WMS sono disponibili come sorgenti. Ci sonno alcuni programmi
da linea di comando che sono distribuiti con GpsDrive che permetto di scaricare
un set di tiles che coprono la vostra area. Dovrete disabilitare la modalità Mapnik
nella finestra *Map Control* in modo di vedere queste mappe statiche.


Tenersi in contatto con i vostri amici
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Nel menu Preferences si può attivare il servizio Friendsd. Questo trasmette
la vostra posizione ad un server centrale e permetterà ai vostri amici di
sapere dove siete. Viene fornito con un programma per eseguire un server
privato se non si vuole che il mondo intero possa vedere dove siete.
Per abilitare questo servizio andere nel menu Preferenze e selezionare
il pannello Friends. Digitare un nome per voi stessi e cliccare sul bottone
[Lookup] per ottenere l'indirizzo IP di default del server di friendsd.
Alla fine selezionare il checkbox Enable friends service e premere [Close].
Le icone mostrano dove sono i tuoi amici e dove sono diretti, saranno
visualizzati ad una scala minore di 1:10 million. Sembra esserci un sacco
di persone amichevoli in Europe.


Istruzioni verbali
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
GpsDrive può fornire istruzioni verbali quando vi state avvicinando alla vostra
destinazione, ecc. Per provare bisogna avviare il software eSpeak che è stato
disabilitato di default su questa Live al fine di salvare memoria.
Per attivarlo bisogna modificare (come root) il file
**/etc/default/speech-dispatcher** e impostare **RUN=yes**.
Quinfi lanciare il servizio con "`sudo service speech-dispatcher start`".
GpsDrive lo troverà automaticamente all'esecuzione se è attivato. Nel pannello
Speech del menu Preferenze si può abilitare/disabilitare, cambiare la voce,
e il livello di verbosità.


Ulteriori letture
================================================================================

* *GpsDrive*: http://www.gpsdrive.de
* Aiuto e pagine di supporto: http://gpsdrive.sf.net
