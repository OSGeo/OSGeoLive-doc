:Author: Hamish Bowman
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation
:Translato: Elena Mezzini, Luca Delucchi

.. image:: ../../images/project_logos/logo-GRASS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://grass.osgeo.org


********************************************************************************
Guida veloce a GRASS GIS 
********************************************************************************

Avvio
================================================================================

.. Nota dell'autore: come Location ora si utilizza Spearfish dato che non c'era 
 abbastanza spazio sul disco per il database intero NC.

Per avviare GRASS nel Live DVD, fare click sul link di GRASS tramite il menù 
:menuselection:`Geospatial --> Desktop GIS`.
Dalla finestra "Benvenuto in GRASS" selezionare il dataset Spearfish come 
location, e "user1" come mapset, poi fare click su [*Start Grass*].

.. image:: ../../images/screenshots/800x600/grass-startup.png
  :scale: 60 %
  :alt: screenshot
  :align: right

Questo avvierà GRASS con la `updated GUI written in wxPython <../../grass/wxGUI.html>`_.

.. tip::  Se stai lavorando in un netbook con un display molto piccolo 
 (risoluzione 800x600) la schermata di avvio potrebbe essere un po' deformata 
 e il bottone [*Start GRASS*] potrebbe essere nascosto deitro alla lista delle 
 location e dei mapset. Se ti succede la soluzione è di trascinare l'angolo 
 della finestra per renderla un po' più grande. Potresti dover muovere la finesta 
 verso l'alto oltrepassando un po' il confine dello schermo per avere spazio 
 (tieni premuto il tasto Alt e trascina con il tasto sinistro la finestra per 
 muoverla).

Nel Disco è stata fornita anche una versione semplificata del dataset di esempio 
espanso North Carolina (nc_basic_spm), se si sceglie di utilizzarla si dovranno 
fare dei piccoli aggiustamenti dato che i nomi delle mappe utilizzati in questo 
rapido tutorial sono stati scritti per il dataset Spearfish. Indifferentemente 
dal dataset che si sceglierà si raccomanda di utilizzare sempre un mapset `user` 
per il lavoro di tutti i giorni e non il mapset speciale PERMANENT.

Visualizzare le mappe
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/screenshots/800x600/grass-layerman.png
  :scale: 50 %
  :alt: screenshot
  :align: left

Una volta dentro, aggiungere un layer raster come "`elevation.10m`" dal 
mapset PERMANENT. Per fare questo andare nella finestra GIS Layer Manager e 
cliccare sull'icona con una scacchiera e un "+" nella toolbar. Poi selezionare 
il nome della mappa che desideri dal menù a tendina "*map to be displayed*", 
e cliccare [Ok].

Allo stesso modo aggiungere il layer vettoriale "`roads`" dal mapset PERMANENT 
cliccando sull'icona nella toolbar con un "+" e una polilinea che sembra un po' 
una "V".

Se necessario, cliccare con il tasto destro sul layer raster e scegliere "Zoom 
to selected map(s)".

Ora si dovrebbero vedere le mappe visualizzate nel display.

Rappresentare un profilo altitudinale
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/screenshots/800x600/grass-profile.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Tornando nella finestra GIS Layer Manager clicca sul nome della tua mappa raster 
`elevation.10m` per selezionarla. Poi nella finestra Map Display, nella toolbar 
a destra delle icone zoom c'è un'icona con un grafico lineare e una scacchiera. 
Cliccarla e selezionare **Profile surface map**. Viene automaticamente ricercata
all'interno del mapset `@PERMANENT`, quindi si può rimuovere il qualificatore.
Se non viene automaticamente elencata, prendere nuovamente la mappa 
`elevation.10m` come raster layer e premere [*Ok*]. Il secondo bottone da 
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

.. image:: ../../images/screenshots/800x600/grass-fractal.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Regolare i colori
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Ora si vedrà il nuovo raster aggiunto alla lista subito dopo la mapa raster
dell'altimetria, ad eccezione che sarà nel mapset di lavoro "user1". 
Ora si può deselezionare la check-box della visibilità del layer `elevation.10m`
in modo tale che i due layer non si coprano l'un l'altro. Cliccare sull'occhio
per vedere la nuova mappa se non viene visualizzata automaticamente.
I colori potrebbero non essere come desiderati, quindi si vanno a cambiare.
Con il DEM frattale selezionato nella lista dei layer, selezionare nel menù
`Raster` :menuselection:`Manage colors --> Color tables`.
Nel tab "Colors" cliccare nel menù a tendina per l'opzione "Type of color
table", e prenderne una dalla lista. "srtm" è una buona scelta. Una volta
fatto, cliccare sul bottone [*Run*] e chiudere la finestra di dialogo 
*r.colors*. A questo punto i colori dovrebbero aggiornarsi automaticamente.
  
Creare una mappa del rilievo ombreggiato
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/screenshots/800x600/grass-shadedrelief.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Come prossimo passo si realizzerà una mappa di rilievo ombreggiato a partire dal 
layer dell'altimetria visto prima. Si inizia verificando che la *regione 
computazionale* settata corrisponda alla mappa raster di interesse, 
"`elevation.10m`" nel mapset PERMANENT. Per fare questo, assicurarsi che sia 
caricata nella lista dei layer nella finestra principale del `GIS Layer Manager`, 
cliccare sul suo nome e selezionare "Imposta la regione computazionale dalla/e 
mappa/e selezionata/e". Si noterà che il tab Layer Manager cambierà in una 
console di testo per visualizzare le nuove impostazioni. Cliccare sul tab "*Map 
layers*" in basso per tornare alla lista dei layer.

Nel menù `Raster` selezionare :menuselection:`Terrain analysis --> Shaded relief` 
(Terrain analysis è cica a metà del menù), apparità la finestra di dialogo di 
controllo del modulo. Con il nome della mappa di altimetria selezionato come 
mappa di input cliccare [*Run*]. Ora aggiungere la nuova mappa `elevation.shade` 
*@user1* nella lista dei layer come fatto in precedenza per la mappa 
`elevation.10m`, e deselezionare gli altri strati raster.

Bacini idrografici e fiumi
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Ancora una volta selezionare la mappa `elevation.10m` *@PERMANENT*. Se avete cambiato
la regione dall'ultimo passaggio, cliccate col tasto destro del mouse di nuovo sul
nome del layer e cliccate su :menuselection:`Set computational region from selected map(s)`
dal menu.

.. note:: La visualizzazione e lo zoom del map display nella WxGUI sono indipendenti
          e non interessano i processi di calcolo. Controllare la regione computazionale
          con :menuselection:`Settings --> Region --> Display Region`; questo è di
          fondamentale importanza per ogni operazione sui raster. La mappe raster di
          diversa estensione e risoluzione saranno risemplificate all'attuale regione
          computazionale al volo.

Dopo, nel menù `Raster` scegliere :menuselection:`Hydrologic modeling --> Watershed analysis`. 
Questo aprirà il modulo ``r.watershed``. Impostare il layer `elevation.10m` come 
mappa di input, nel tab 'Input options' impostare come dimensione minima del 
bacino idrografico esterno *threshold* 10000 celle, poi nelle 'Output options' 
inserire "elev.basins" come opzione del bacino idrografico e "elev.streams" come 
opzione della rete idrografica, subito sotto. Poi cliccare [*Run*].

Tornando nella finestra `GIS Layer Manager` verificare che queste due nuove mappe 
raster siano nella lista dei layer e assicurarsi che la mappa dei bacini abbia il 
tick nel quadrato a sinistra del nome del layer. Per ora bisogna deselezionare la 
mappa dei fiumi. Poi, cliccare con il destro sul nome della mappa raster 
"`elev.basins`" e selezionare "`Change opacity level`". Impostarlo a circa 50%, 
ciò farà aggiornare il Map Display. Nella lista dei layer trascinare verso il 
basso una mappa (come ad esempio la mappa del rilievo ombreggiato 
creata prima) se si desidera che venga disegnata dietro agli altri strati, e 
assicurarsi di selezionare il box per la visibilità per vederla come sfondo.

.. image:: ../../images/screenshots/800x600/grass-watersheds.png
  :scale: 50 %
  :alt: screenshot
  :align: left

Nella finestra `GIS Layer Manager` cliccare nel secondo pulsante partendo da 
destra nella riga in cima e `Add a grid layer`. Come dimensione della griglia 
mettere 0:03 0 per i gradi e 3 per i minuti (il formato è G:M:S), poi nel tab 
"Optional" selezionare Disegna una griglia geografica e premere [*Ok*] e 
aggiornare. Potrebbe essere necessario trascinare il layer di griglia più in 
alto nella lista dei layer per vederlo.

Per aggiungere uno scalimetro andare nella finestra Map Display e premere il 
bottone "Add map elements" a destra di dove precedentemente è stato 
selezionato lo strumento per il Profilo e selezionare "Add scalebar and north 
arrow" e cliccare [*Ok*]. Uno scalimetro apparirà in alto a sinistra del 
foglio. Trascinarlo in basso a sinistra. Dallo stesso menù della barra degli 
strumenti selezionare "Add legend" e nella finestra delle istruzioni cliccare 
il pulsante `Set Options` per impostare il nome della mappa raster per cui si 
desidera creare la legenda. Se si prende la mappa `elev.basins` si dovrà 
impostare il *Thinning factor* a 10 nel tab `Advanced`, e la posizione 
*Placement* come `5,95,2,5` nel tab `Optional`. Una volta fatto cliccare [*Ok*] 
e di nuovo [*Ok*]. Trascinare la nuova legenda in alto nella porzione destra 
del foglio.

Ora si potrebbe pensare che questo font è un po' brutto.
A ciò si può facilmente porre rimedio andando nel menù del `GIS Layer Manager` 
e aprendo :menuselection:`Settings --> Preferences` e cliccando nel tab Map 
Display  il bottone [*Set font*] e scegliendone uno (per esempio DroidSans), e 
poi [*Apply*] nella finestra delle Preferenze. Si dovrà fare un aggiornamento 
completo per vedere il cambiamento, per fare ciò, cliccare il bottone aggiorna 
vicino all'occhio nella finestra `Map Display`. Ora le scritte saranno molto 
più carine.

Moduli vettoriali
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
Gli argomenti trattati in precedenza hanno trattato solo alcuni moduli raster. 
Non bisogna lasciare che questo faccia pensare che GRASS sia solo per mappe 
raster -- il meccanismo vettoriale e i moduli sono completi e sviluppati 
come i raster in ogni bit. GRASS conserva un meccanismo vettoriale completamente 
topologico che permette ogni genere di analisi molto potente.

.. image:: ../../images/screenshots/1024x768/grass-vectattrib.png
  :scale: 30 %
  :alt: screenshot
  :align: right

Continuando con i bacini idrografici creati in precedenza, come prossimo passo 
verranno convertiti in poligoni vettoriali. Nel menù Raster selezionare 
:menuselection:`Map type conversions --> Raster to vector`.
Nella finestra di dialogo che si apre `r.to.vect` assicurarsi che 
``elev.basins @user1`` sia selezionata come mappa di input, inserire un nome per 
la mappa di output come ``basins_areas`` (i nomi delle mappe vettoriali devono 
essere SQL compatibili), e cambiare il tipo di elemento in `area`.
Nel tab `Attributes` selezionare il box per usare i valori raster come valori di 
categoria, in modo tale che questi corrisponderanno ai valori nella mappa della 
rete idrografica creata in precedenza. Poi cliccare su [*Run*]. Una volta che la 
mappa vettoriale è visualizzata, ci si potrebbe cliccare sopra con il tasto 
destro nella lista del `Layer Manager` e cambiare il suo livello di opacità. 
Anche se si clicca con il destro sulla mappa vettoriale ``basins_areas`` nella 
`Layer List` si può spegnere la visualizzazione dei centroidi delle aree andando 
in `Properties` e deselezionandoli nel tab `Selection`.

Come prossimo passo aggiungeremo alcuni attributi a queste nuove aree, contenenti 
l'altitudine media di ogni bacino. Nel menù Vector selezionare :menuselection:
`Update attributes --> Update area attributes from raster` per lanciare il modulo 
*v.rast.stats*. Utilizzare ``basin_areas`` come mappa vettoriale di poligoni, il 
raster ``elevation.10m`` da cui calcolare le statistiche, mettere come prefisso 
della colonna ``ele``, e cliccare [*Run*] poi chiudere la finestra di dialogo una 
volta finito. Si possono interrogare i valori nella finestra `Map Display` 
utilizzando la quinta icona da sinistra, dopo aver verificato che sia selezionata 
la mappa vettoriale delle aree nella `Layer List`, e cliccando in un'area 
vettoriale nel foglio del display.

Si possono colorare le aree basandosi sui valori di altitudine media utilizzando 
il modulo ``v.colors``. Nel menù Vector selezionare :menuselection:`Manage colors 
--> Color tables`. Selezionare ``basin_areas`` come mappa vettoriale di input, 
la colonna dell'attributo ``ele_mean`` come colonna contenente l'intervallo 
numerico, e nel tab `Colors` mettere `elevation.10m` come mappa raster da cui 
copiare la tavola dei colori. Dopo aver avviato il comando, fare click con il 
destro sulla mappa ``basin_areas`` nel `Layer List` e selezionare `Properties`.
Nel tab `Colors` selezionare il box per ottenere i colori da una colonna della 
tabella della mappa.
Una volta cliccato [*Apply*] si dovrebbe vedere il cambiamento di colori nella 
finestra `Map Display`.

Ora si va a guardare più in dettaglio la tabella degli attributi e il generatore 
SQL. Nel `Layer Manager` cliccare l'icona della tabella, è la seconda da 
sinistra nella riga di sotto. Questo aprirà una vista della tabella database 
collegata. Per ora si farà solo una *Semplice* interrogazione del database per 
cercare i bacini idrografici senza troppa variabilità al loro interno. Dove 
dice ``SELECT * FROM basin_areas WHERE`` prendere ``ele_stddev`` dalla lista a 
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

.. image:: ../../images/screenshots/1024x768/grass-nviz.png
  :scale: 30 %
  :alt: screenshot
  :align: right

Avviare il pacchetto di visualizzazione 3D dal comando nel menù :menuselection:
`File --> NVIZ`. Selezionare la mappa `elevation.10m` come raster di altitudine 
e cliccare [*Run*].
Una volta che si è caricata l'interfaccia del display 3D, massimizzare la 
finestra. Poi selezionare :menuselection:`Visualize --> Raster Surfaces` dal menù 
in cima, e impostare la risoluzione a "1", poi muovere il puntatore di posizione 
e lo scorrimento di altezza per avere diverse viste.

Per sovrapporre le immagini satellitari o aeree al DEM, nei controlli **Raster 
Surfaces** cliccare sul menù a tendina **Surface Attributes** e selezionare 
"color". Slezionare "New Map" per scegliere l'immagine da sovrapporre; 
"`spot.image`" nel mapset PERMANENT è una buona scelta.
In fine, cliccare "*Accept*" e una volta tornati alla finestra principale 
cliccare sul bottone "*Draw*" in cima a sinistra, subito sotto al menù File.

Altre cose da provare
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Anche se non trattate qui, potrebbe fare piacere sperimentare il nuovo 
Cartographic Composer e object-oriented Graphical Modeling Tool;
le icone per lanciarli si trovano nella riga più bassa delle icone nella finestra 
`Layer Manager`. Ulteriori dettagli si possono trovare nelle pagine di aiuto 
`wxGUI <../../grass/wxGUI.html>`_ help.

La nuova GUI è scritta in Python, e se si è fan della programmazione in Python 
sono disponibili diversi ottimi strumenti. In fondo alla finestra `Layer 
Manager` cliccare sul tab `Python shell` e digitare ``help(grass.core)`` 
per vedere un elenco delle tante funzioni disponibili nella libreria python del 
core GIS. Oltre alle funzioni del GIS base sono disponibili anche librerie `array` 
(NumPy), `db` (database), `raster`, e `vector`. Per utilizzi avanzati è 
supportato `Pythons CTypes` permettendo al programmatore Python l'accesso diretto 
alle librerie C complete di GRASS.

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
* Visita il sito di GRASS `http://grass.osgeo.org <http://grass.osgeo.org>`_
* Visita il sito di aiuto nel GRASS Wiki `http://grass.osgeo.org/wiki 
  <http://grass.osgeo.org/wiki>`_
* Ulteriori tutorials e riassunti possono essere trovati `here <http://grass.
  osgeo.org/wiki/GRASS_Help#Getting_Started>`_.
* Un'anteprima dei moduli GRASS <http://grass.osgeo.org/gdp/grassmanuals/grass64
  _module_list.pdf>`_, compresa la posizione nei menù della GUI. (`HTML version 
  <http://grass.osgeo.org/gdp/grassmanuals/grass64_module_list.html>`_)
* Se i 400 moduli GIS  compresi in GRASS non sono abbastanza dai uno sguardo ai 
  molti add-ons sviluppati `http://grass.osgeo.org/wiki/AddOns <http://grass.osgeo.
  org/wiki/AddOns>`_
