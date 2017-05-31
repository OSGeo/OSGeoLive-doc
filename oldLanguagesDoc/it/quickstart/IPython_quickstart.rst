:Author: darkblueb
:Contact: darkblueb @ osgeo
:Version: osgeo-live8.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: mdlux

.. image:: ../../images/project_logos/logo-ipython.png
  :scale: 100 %
  :alt: project logo
  :align: center
  :target: http://ipython.org/

********************************************************************************
Guida rapida su IPython Notebook
********************************************************************************

Un Notebook IPython è un interfaccia grafica basata sul web per creare blocchi appunti interattivi.
La guida rapida spiega come:

  * avviare IPython Notebook
  * caricare dati di prova da un file netCDF
  * visualizzare i dati su una mappa, usando varie proiezioni

Avviando IPython
================================================================================

Ci sono due modi per usare IPython Notebook: Locale(predefinito); e remoto
usando un web browser su un altro computer. La seconda opzione è utile
quando si esegue **OSGeo live** su una Virtual Machine (VM).

IPython Notebook locale
---------------------------------------------------------------------------------

Usa il menu di lancio delle applicazioni nell'angolo in basso a sinistra.
 
* Scegli  *Geospatial* -> *Spatial Tools* -> *Start IPython Notebook*
  
Si aprirà una finestra col terminale e un log di avvio comincerà a scorrere.
Poi

* Scegli   *Geospatial* -> *Spatial Tools* -> *IPython Notebook*

Un browser web viene lanciato automaticamente puntando alla URL localhost 
al numero di porta relativo ad IPython (dovresti vedere la pagina principale del Notebook).
Quando IPython viene lanciato, verrà letta la directory corrente.
Ogni sub-directory viene mostrata nell'elenco ("*tree*"). L'utente può
navigare avanti e indietro nell'albero cliccando su una directory,
oppure aprire Un blocco appunti (Notebook) cliccando sul nome. Sul computer,
i file dei blocchi appunti sono file di testo con suffisso .ipynb, e vengono visualizzati con il nome del file.
Rinominare un blocco appunti semplicemente cambia il nome del file.
Se una nuova directory viene creata, diventa automaticamente visibile nell'albero delle directory di IPython Notebook

 
IPython Notebook remoto
---------------------------------------------------------------------------------

* apri una finestra del terminale cliccando sull'icona verde del terminale
* esegui `ipython notebook ---ip=* ---matplotlib=inline ---no-browser --port=8883`
* visualizza l'indirizzo IP del tuo computer o VM, usando ad esempio:
  *ifconfig -a | grep 192*
  
Usa un browser web da un altro computer e inserisci l'indirizzo IP ottenuto con la precedente operazione,
aggiungendo la porta relativa a IPython Notebook ':8888'. Ad es: 192.168.1.13:8883

Nota: La porta predefinita per IPython Notebook è 8888. 
SU OSGeo-Live la porta dei Notebook è settata a 8883 per evitare conflitti
con altre applicazioni che usano questo numero.


Utilizzo di IPython Notebook
================================================================================

Dopo aver aperto la pagina principale di IPython Notebook, dovresti vedere l'interfaccia con l'albero delle directory,
inclusa una directory chiamata ``OSGeo-live``,
e un blocco appunti chiamato ``cartopy-simple.ipynb``.
Clicca sul link ``cartopy_simple.ipynb``. dovrebbe aprirsi un nuovo tab nel browser web, mostrando l'interfaccia del blocco appunti.
Prova a muovere il mouse sopra ogni bottone nella barra degli strumenti, mantenedolo per qualche secondo, per vedere apparire i suggerimenti.
Prenditi del tempo per esplorare il menu e familiarizzare con i contenuti.

Prendi nota in particolare del menu **Help**. Puoi provare il Tour per l'Utente Consapevole o aprire la lista delle scorciatoie da tastiera,
ma avrai comunque bisogno di una connessione Internet attiva per utilizzare gli altri contenuti del menu Help.

L'interfaccia di un blocco appunti è una lista di *celle*. Ogni cella è di un certo tipo, per esempio un titolo o codice python,
e consiste di una o più righe di testo, codice, immagini in linea, o altri script. Ogni cella di tipo codice può essere eseguita
rendendola *attiva* e cliccando poi sul bottone *run*, o usando la scorciatoia da tastiera Shift-Return.

Prova a cliccare sulla prima cella di codice, che include **Import numpy as np**, ed eseguila.
Non dovresti vedere messaggi di errore, a la cella successiva dovrebbe attivarsi.

Per cominciare questa guida rapida, è utile cancellare tutto l'output memorizzato in questo blocco appunti.
Scegli *Cell* -> *All Output* -> *Clear*. Tutti gli output nel blocco appunti sono stati rimossi.


Importare Dati con Python netCDF4
-----------------------------------------------------------------------------

La prima cella di codice del blocco appunti importa librerie importanti nell'interprete attivo. La seconda cella assegna
una stringa col percorso al file alla variabile ``my_example_nc_file``, e inizializza un oggetto Dataset netCDF4 `fh``.
Infine, la terza cella legge tre variabili oggetto Dataset e le trasferisce in ndarray numpy locali.
Per ulteriori informazioni su numpy, vedi http://www.numpy.org/ .

Quando clicchi nella cella col titolo **Import Cartopy, Display Example Maps** nota che il tipo di cella nella barra degli strumenti cambia a 
*Markdown*.


Rappresenta i Dati usando Cartopy
------------------------------------------------------------------------------

Clicca o naviga alla cella di codice successiva, che comincia con ``%matplotlib inline``.
Questa è una "Magia" per le celle di IPython Notebook - comandi speciali interpretati dal clocco appunti per
cambiare l'ambiente o il comportamento del blocco appunti. Questa direttiva dice al blocco appunti
di posizionare le grafiche di **matplotlib** direttamente nei contenuti della finestra, invece di crearne una nuova.
Esegui la cella per importare matplotlib e cartopy.

Nel resto del blocco appunti, ogni cella rappresenta i dati campione in una diversa proiezione cartografica. 
Prova ad eseguire ogni cella, e guarda i risultati proiettati in modo diverso.


Tutorial Generale IPython Notebook 
--------------------------------------------------------------------------------

http://ipython.org/ipython-doc/stable/interactive/tutorial.html

.. _`iPython Blog`: http://www.damian.oquanta.info/posts/48-themes-for-your-ipython-notebook.html

