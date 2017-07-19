:Author: Hamish Bowman
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
:Translator: Elena Mezzini, Luca Delucchi
:Copyright: 2011 by The OSGeo Foundation

.. image:: /images/project_logos/logo-GRASS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://grass.osgeo.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


********************************************************************************
Guida veloce a GRASS GIS 7
********************************************************************************

GRASS GIS è un potente software GIS che permette di visualizzare, gestire
analizzare e modificare dati geografici.

Veloce introduzione
================================================================================

.. Nota dell'autore: aggiornato in 8.5: la Location NC ridotta è inclusa,
   tutorial riscritto.

Per avviare GRASS nel Live DVD, fare click sul link di GRASS tramite il menù
:menuselection:`Geospatial --> Desktop GIS`.
Dalla finestra "Benvenuto in GRASS" selezionare il dataset North Carolina come
location, e "user1" come mapset, poi fare click su [*Start Grass*].

.. image:: /images/screenshots/800x600/grass-startup.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Questo avvierà GRASS con `l'interfaccia grafica utente (scritta in wxPython) <../../grass/wxGUI.html>`_.

.. tip::  Se stai lavorando in un netbook con un display molto piccolo
 (risoluzione 800x600) la schermata di avvio potrebbe essere un po' deformata
 e il bottone [*Start GRASS*] potrebbe essere nascosto deitro alla lista delle
 location e dei mapset. Se ti succede la soluzione è di trascinare l'angolo
 della finestra per renderla un po' più grande. Potresti dover muovere la finesta
 verso l'alto oltrepassando un po' il confine dello schermo per avere spazio
 (tieni premuto il tasto Alt e trascina con il tasto sinistro la finestra per
 muoverla).

.. indipendentemente dal dataset scelto è raccomandato che si utilizzi sempre
   un mapset `user` per il lavoro di tutti i giorni invece del mapset speciale PERMANENT
   che contiene i metadati sulla proiezione e la cartografia di base.

Visualizzare le mappe
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/screenshots/800x600/grass-layerman.png
  :scale: 50 %
  :alt: screenshot
  :align: left

Una volta dentro, selezionare per la visualizzazione un layer raster come
"`elevation`" dal mapset PERMANENT. Per fare questo andare nella finestra GIS
Layer Manager e cliccare sull'icona con una scacchiera e un "+" nella toolbar.
Poi selezionare il nome della mappa che desideri dal menù a tendina
"*map to be displayed*", e cliccare [Ok].

Allo stesso modo aggiungere il layer vettoriale "`roadsmajor`" dal mapset PERMANENT
cliccando sull'icona nella toolbar con un "+" e una polilinea che sembra un po'
una "V".

Le descrizioni delle icone (mostrate quando si passa sopra il mouse) vi
guideranno facilmente.

Se necessario, cliccare con il tasto destro sul layer raster e scegliere "Zoom
to selected map(s)".

Ora si dovrebbero vedere le mappe visualizzate nel display.

Rappresentare un profilo altitudinale
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/screenshots/800x600/grass-profile.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Tornando nella finestra GIS Layer Manager clicca sul nome della tua mappa raster
`elevation` per selezionarla. Poi nella finestra Map Display, nella toolbar
a destra delle icone zoom c'è un'icona con un grafico lineare e una scacchiera.
Cliccarla e selezionare **Profile surface map**. Viene automaticamente ricercata
all'interno del mapset `@PERMANENT`.
Se non viene automaticamente elencata, prendere nuovamente la mappa
`elevation` come raster layer e premere [*Ok*]. Il secondo bottone da
sinistra permette di settare la linea lungo la quale calcolare il profilo,
cliccarla e marcare alcuni punti nel foglio del `Map Display`. Una volta fatto,
tornare alla finestra Profile e cliccare sull'icona a occhio per creare il
grafico. Cliccare sul bottone I/O all'estrema destra per chiudere la finestra
del profilo.

Creare una superficie random
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Ora andiamo a creare una nuova mappa. Per prima cosa settare la *regione
computazionale* come i confini di default mediante :menuselection:`Settings -->
Region --> Set region`, selezionando "*Set from default region*", e cliccando
[*Run*]. Poi selezionare :menuselection:`Raster --> Generate surfaces --> Fractal
surface` dal menù (è quasi in fondo); dare un nome alla nuova mappa; e
riaggiustare le opzioni desiderate nella tab "Optional" (quelle di default
vanno bene); e cliccare [*Run*]. Poi si può chiudere [*Close*] la finestra
di dialogo del modulo *r.surf.fractal*.

.. image:: /images/screenshots/800x600/grass-fractal.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Regolare i colori della mappa
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Ora si vedrà il nuovo raster aggiunto alla lista subito dopo la mapa raster
dell'altimetria, ad eccezione che sarà nel mapset di lavoro "user1".
Ora si può deselezionare la check-box della visibilità del layer `elevation`
in modo tale che i due raster non si coprano l'un l'altro. Cliccare sull'occhio
per vedere la nuova mappa se non viene visualizzata automaticamente.
I colori potrebbero non essere come desiderati, quindi si vanno a cambiare.
Con il DEM frattale selezionato nella lista dei layer, cliccare col bottone
destro del mouse su questo raster e scegliere "Set color table". Come alternativa,
potete gestire le tabelle dei colori nel menù
`Raster` :menuselection:`Manage colors --> Color tables`.
Nel pannello 'Define' cliccare nel menù a tendina per l'opzione "Nome of color
table", e selezionarne una dalla lista. "terrain" o "srtm" sono una buona scelta.
Una volta fatto, cliccare sul bottone [*Run*] e chiudere la finestra di dialogo
*r.colors*. A questo punto i colori dovrebbero aggiornarsi automaticamente.

Creare una mappa del rilievo ombreggiato
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/screenshots/800x600/grass-shadedrelief.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Come prossimo passo si realizzerà una mappa di rilievo ombreggiato a partire dal
layer "elevation" visto prima. Si inizia verificando che la *regione
computazionale* settata corrisponda alla mappa raster di interesse,
"`elevation`" nel mapset PERMANENT. Per fare questo, assicurarsi che sia
caricata nella lista dei layer nella finestra principale del `GIS Layer Manager`,
cliccare sul suo nome e selezionare "Imposta la regione computazionale dalla/e
mappa/e selezionata/e". Si noterà che il tab Layer Manager cambierà in una
console di testo per visualizzare le nuove impostazioni. Cliccare sul tab "*Map
layers*" in basso per tornare alla lista dei layer.

Nel menù `Raster` selezionare :menuselection:`Terrain analysis --> Compute shaded relief`
(Terrain analysis è circa a metà del menù `Raster`), e apparità la finestra
di dialogo di controllo del modulo. Selezionare il nome della mappa di input
"elevation" *@PERMANENT* e come mappa di output bisogna specificare "shade_relief".
Una volta fatto cliccare [*Run*]. Ora aggiungere la nuova mappa `shade_relief`
*@user1* nella lista dei layer. Deselezionare gli altri strati raster per
visualizzare solo il nuovo layer delle ombreggiature appena creata.

Bacini idrografici e fiumi
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Ancora una volta selezionare la mappa `elevation` *@PERMANENT*. Se avete cambiato
la regione dall'ultimo passaggio, cliccate col tasto destro del mouse di nuovo sul
nome del layer e cliccate su :menuselection:`Set computational region from selected map(s)`
dal menu al fine di considerare l'intera mappa per il calcolo dei bacini.

.. note:: La visualizzazione e lo zoom del map display nella WxGUI sono indipendenti
          e non interessano i processi di calcolo. Controllare la regione computazionale
          con :menuselection:`Settings --> Region --> Display Region`; questo è di
          fondamentale importanza per ogni operazione sui raster. La mappe raster di
          diversa estensione e risoluzione saranno risemplificate all'attuale regione
          computazionale al volo.

Dopo, nel menù `Raster` scegliere :menuselection:`Hydrologic modeling --> Watershed analysis`.
Questo aprirà il modulo ``r.watershed``. Impostare il layer `elevation` come
mappa di input, nel tab 'Input options' impostare come "dimensione minima del
bacino idrografico esterno" *threshold* 10000 celle, poi nel pannello 'Outputs'
inserire "elev.basins" come opzione del bacino idrografico e "elev.streams" come
opzione per il nome della rete idrografica, subito sotto. Poi cliccare [*Run*].

Tornando nella finestra `GIS Layer Manager` verificare che queste due nuove mappe
raster siano nella lista dei layer e assicurarsi che la mappa dei bacini abbia il
tick nel quadrato a sinistra del nome del layer. Per ora bisogna deselezionare la
mappa dei fiumi. Poi, cliccare con il destro sul nome della mappa raster
"`elev.basins`" e selezionare "`Change opacity level`". Impostarlo a circa 50%,
ciò farà aggiornare il Map Display. Nella lista dei layer trascinare verso il
basso una mappa (come ad esempio la mappa del rilievo ombreggiato
creata prima) se si desidera che venga disegnata dietro agli altri strati, e
assicurarsi di selezionare il box per la visibilità per vederla come sfondo.

.. image:: /images/screenshots/800x600/grass-watersheds.png
  :scale: 50 %
  :alt: screenshot
  :align: left

Nella finestra `GIS Layer Manager` cliccare sul bottone `Add various overlay`
e `Add a grid layer`. Come dimensione della griglia inserire 5000 (nelle unità
di mappa, qui in metri).

.. MN comment: UNUSED mettere 0:03 0 per i gradi e 3 per i minuti (il formato è
   D:M:S), poi nel tab "Optional" selezionare Disegna una griglia geografica.

Una volta fatto premere :guilabel:`Ok`. Opzionalmente si potrebbe cambiare i colori
per le linee della griglia e il testo delle etichette.

Per aggiungere una barra della scala andare nella finestra `Map Display` e premere il
bottone "Add map elements" a destra di dove precedentemente è stato
selezionato lo strumento per il Profilo e selezionare "Show/hide scalebar" e :guilabel:`Ok`.
Uno barra della scala apparirà in alto a sinistra del foglio.
Trascinarlo in basso a a destra.

.. MN comment: UNUSED TOO MANY BASINS
   Dallo stesso menù della barra degli strumenti selezionare "Add legend"
   e nella finestra delle istruzioni cliccare il pulsante `Set Options` per
   impostare il nome della mappa raster per cui si desidera creare la legenda.
   Se si prende la mappa `elev.basins` si dovrà impostare il *Thinning factor*
   a 10 nel tab `Advanced`, e la posizione *Placement* come `5,95,2,5` nel tab
   `Optional`. Una volta fatto cliccare [*Ok*] e di nuovo [*Ok*]. Trascinare
   la nuova legenda in alto nella porzione destra del foglio.

Ora si potrebbe pensare che questo font è un po' brutto.
A ciò si può facilmente porre rimedio andando nel menù del `GIS Layer Manager`
e aprendo :menuselection:`Settings --> Preferences` e cliccando nel tab Map
Display  il bottone [*Set font*] e scegliendone uno (per esempio DroidSans), e
poi [*Apply*] nella finestra delle Preferenze. Si dovrà fare un aggiornamento
completo per vedere il cambiamento, per fare ciò, cliccare il bottone aggiorna
vicino all'occhio nella finestra `Map Display`. Ora le scritte saranno molto
più carine.

Gli argomenti trattati in precedenza hanno trattato solo alcuni moduli raster.
Non bisogna lasciare che questo faccia pensare che GRASS GIS sia solo per mappe
raster -- il meccanismo vettoriale e i moduli sono completi e sviluppati
come i raster in ogni bit. GRASS GIS conserva un meccanismo vettoriale completamente
topologico che permette ogni genere di analisi molto potente.

.. image:: /images/screenshots/1024x768/grass-vectattrib.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Continuando con i bacini idrografici creati in precedenza, come prossimo passo
verranno convertiti in poligoni vettoriali. Nel menù `Raster` selezionare
:menuselection:`Map type conversions --> Raster to vector`.
Nella finestra di dialogo che si apre `r.to.vect` assicurarsi che
``elev.basins @user1`` sia selezionata come mappa di input, inserire un nome per
la mappa di output come ``basins_areas`` (i nomi delle mappe vettoriali devono
essere SQL compatibili, poichè non tutti i caratteri sono permessi),
e cambiare il tipo di elemento in `area`. Nel pannello `Attributes` selezionare
il box per usare i valori raster come valori di categoria (per esempio, IDs),
in modo tale che questi corrisponderanno ai valori nella mappa della
rete idrografica creata in precedenza. Poi cliccare su [*Run*]. Una volta che la
mappa vettoriale è visualizzata, ci si potrebbe cliccare sopra con il tasto
destro nella lista del `Layer Manager` e cambiare il suo livello di opacità a 50%

Gestire i colori dei vettoriali
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Come fatto precedentemente con i raster si cambierà la tabella dei colori del
nuovo vettoriale dei bacini idrografici. Con ``basins_areas`` selezionato nella
lista dei layer, cliccare sul bottone destro su questo vettoriale e scegliere
"Set color table". Nel pannello 'Define' cliccare sulla lista a scomparsa per
l'opzione "Name of color table", e selezionare dalla lista per esempio "bcyr"
(blu-cyan-yellow-red). Potrebbe essere necessario ridisegnare la mappa per
vedere il vettoriale colorato

.. image:: /images/screenshots/800x600/grass-vector-basins.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Gestire gli attributi
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Come prossimo passo aggiungeremo alcuni attributi a queste nuove aree, contenenti
l'altitudine media di ogni bacino. Nel menù Vector selezionare :menuselection:
`Update attributes --> Update area attributes from raster`.
Utilizzare ``basin_areas`` come mappa vettoriale di poligoni, e selezionare il
raster ``elevation`` da cui calcolare le statistiche, impostare "Column prefix for
new attribute columns" a ``elev``, e cliccare [*Run*]; poi chiudere la finestra di dialogo una
volta finito. Si possono interrogare i valori nella finestra `Map Display`
utilizzando la quinta icona da sinistra, dopo aver verificato che sia selezionata
la mappa vettoriale delle aree nella `Layer List`, e cliccando in un'area
vettoriale nel foglio del display.

Si possono ora ricolorare le aree basandosi sui valori di altitudine media utilizzando
il modulo ``v.colors``. Nel menù Vector selezionare
:menuselection:`Manage colors--> Color tables`. Selezionare ``basin_areas``
come mappa vettoriale di input, come "Source value" selezionare ``attr`` invece
di ``cat``. Quindi, nel pannello "Define" scegliere ``elev_average`` come colonna degli
attributi per la colonna contenente l'intervallo numerico. I colori si vogliono
copiare dal raster `elevation`, perciò si selezioni il nome per "Raster map
from which to copy color table". Dopo avere
e nel tab `Colors` mettere `elevation.10m` come mappa raster da cui
copiare la tavola dei colori. Dopo aver cliccato [*Run*], bisogna riaggiornare il map display
(seconda icona da sinistra) per vedere la mappa dei bacini aggiornata.

Ora si va a guardare più in dettaglio la tabella degli attributi e il generatore
SQL. Nel `Layer Manager` cliccare l'icona della tabella ("Show attribute data
for selected vector map"), è la seconda da sinistra nella riga di sotto.
Questo aprirà una vista della tabella database attaccata al vettoriale selezionato.
collegata. Per ora si farà solo una *Semplice* interrogazione del database per
cercare i bacini idrografici senza troppa variabilità al loro interno. Dove
dice ``SELECT * FROM basin_areas WHERE`` prendere ``elev_stddev`` dalla lista a
tendina come statistica della deviazione standard, poi nel box di testo alla sua
destra inserire ``< 50`` e cliccare [*Apply*]. Si noterà che il numero di righe
caricate nella barra di informazione in fondo alla finestra sarà compattato, e
che tutte le righe con un valore alto di dev. std. se ne sono andate dalla
tabella visualizzata. Cliccare con il tasto destro sui dati della tabella e
scegliere ``Select all``. Ri-cliccare con il tasto destro sui dati della tabella
e questa volta scegliere ``Highlight selected features``. Si dovrebbe vedere
per esempio i bacini alluvionali e le zone pianeggianti evidenziati nel
``Map Display``.

Visualizzazione 3D
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/screenshots/1024x768/grass-nviz.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Al fine di avviare il pacchetto di visualizzazione 3D, selezionare la mappa
`elevation` nella `Lista dei Layer` e dopo evidenziare la riga, quindi
selezionare nella finestra del `Map Display` la "visualizzazione 3D" (al bordo
destro della barra strumenti). Una volta che si è caricata l'interfaccia 3D,
vedrete diversi pannelli per il controllo della visualizzazione 3D.
Dopo selezione il pannello "Dati" e impostare la finezza della risoluzione a "1"
(più basso è il valore maggiore sarà la finezza), quindi muovere il puntatore
di posizione e lo slider dell'altezza per ottenere diverse viste.


Per sovrapporre le immagini satellitari o aeree al DEM, nel pannello "Dati"
selezionare per la mappa **Surface Attributes** l'overlay "`landuse`" nel
mapset PERMANENT è una buona scelta. La nuova visualizzazione è rappresentata
direttamente.
Fino che l'area è relativamente piatta, si può andare sul tabello "Vista" e
incrementare l'esagerazione Z ("z-Exag")

Per una navigazione facile nelle vista 3D, cambiate nel "Rotate 3D scene" nella
barra degli strumenti del map display, quindi usare il mouse per muovere la
vista.

Altre cose da provare
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Anche se non trattate qui, potrebbe fare piacere sperimentare il nuovo
Cartographic Composer e object-oriented Graphical Modelling Tool (può esportare in Python);
le icone per lanciarli si trovano nella riga più bassa delle icone nella finestra
`Layer Manager`. Ulteriori dettagli si possono trovare nelle pagine di aiuto
`wxGUI <../../grass/wxGUI.html>`_ help.

La wxGUI è scritta in Python, e se si è fan della programmazione in Python
sono disponibili diversi ottimi strumenti e un API. In fondo alla finestra `Layer
Manager` cliccare sul tab `Python shell` e digitare ``help(grass.core)``
per vedere un elenco delle tante funzioni disponibili nella libreria python del
core GIS. Oltre alle funzioni del GIS base sono disponibili anche librerie `array`
(NumPy), `db` (database), `raster`, e `vector`. Per utilizzi avanzati è
supportato `Pythons CTypes` permettendo al programmatore Python l'accesso diretto
alle librerie C complete di GRASS.
Guardate le pagine del manuale per una descrizioni approfondita delle
opzioni di programmazione

Chiusura e linea di comando
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Una volta finito, uscire dalla GUI di GRASS con :menuselection:`File --> Exit
GUI`. Prima di chiudere anche la sessione del terminal GRASS, provare un modulo
GRASS digitando "``g.manual --help``" che darà una lista delle opzioni del
modulo. La linea di comando GRASS è dove il vero potere del GIS prende piede.
GRASS è creato per permettere a tutti i comandi di essere concatenati in
scripts per lavori di anlaisi molto lunghi. I linguaggi più popolari per gli
script sono Bourne Shell e Python, e sono inclusi molti trucchi chiari per
rendere lo scripting più facile per entrambi i linguaggi. Con questi strumenti
si può creare un nuovo modulo GRASS con solo 5 minuti di coding, completo di
un potente parser, GUI, e pagine di aiuto con template.

"``g.manual -i``" lancerà un browser web con le pagine di aiuto dei moduli.
Quando si è finito chiudere il browser e digitare "exit" nel terminal di GRASS
per lasciare l'ambiente GIS.

Ulteriori letture
================================================================================
* Visita il sito di GRASS GIS `http://grass.osgeo.org <http://grass.osgeo.org>`_
* Visita il sito di aiuto nel GRASS GIS Wiki `http://grasswiki.osgeo.org/wiki/ <http://grasswiki.osgeo.org/wiki/>`_
* Ulteriori tutorials e riassunti possono essere trovati `here <http://grass.osgeo.org/wiki/GRASS_Help#Getting_Started>`_.
* Un'anteprima dei moduli GRASS GIS <http://grass.osgeo.org/gdp/grassmanuals/grass64_module_list.pdf>`_, compresa
  la posizione nei menù della GUI. (`HTML version <http://grass.osgeo.org/grass70/manuals/full_index.html>`_)
* Se i 400 moduli GIS  compresi in GRASS non sono abbastanza dai uno sguardo ai
  molti add-ons sviluppati `http://grass.osgeo.org/grass70/manuals/addons/ <http://grass.osgeo.org/grass70/manuals/addons/>`_
