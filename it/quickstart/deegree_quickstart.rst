:Author: Johannes Küpper, Danilo Bretschneider
:Version: OSGeo-Live DVD, Version 5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-deegree.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.deegree.org

********************************************************************************
Guida rapida sui servizi web di deegree 3
********************************************************************************

Descrizione del progetto
================================================================================

deegree è un software open source per infrastrutture spaziali e web geospaziali web.
deegree include componenti per la gestione di dati spaziali, incluso l'accesso ai dati,
visualizzazione, ricerca e sicurezza. Gli standard aperti sono nel cuore di deegree.
Il software è costruito secondo gli standard del Open Geospatial Consortium (OGC) e
ISO Technical Committee 211.

Questa guida rapida descrive come:
   * avviare i servizi web di deegree 3 sul Live DVD
   * usare la console di deegree 3 services per attivare le configurazione di esempio
   * trovare più informazioni


Avviare i servizi web deegree
================================================================================

Scegli "Start deegree" dal menu di avvio.
L'applicazione impiegherà alcuni momenti per avviarsi.


La console dei servizi di deegree
================================================================================

Quando avviate deegree per la prima volta, firefox si aprirà (altrimenti apritelo
manualmente e inserite l'indirizzo http://localhost:8033). Aspettare fino che vedrete
la console dei servizi deegree 3. Questa è una semplice GUI web per modificare la
i file di configurazione di quello che è chiamato ambiente di lavoro di deegree.


deegree webservices example workspaces
================================================================================

deegree 3 è basato su un concetto di configurazione unificato che è condiviso da
tutte le applicazioni basate su deegree 3 (servizi web, applicazioni web, applicationi
desktop, e strumenti da linea di comando). I diversi aspetti di configurazione sono
costruiti sulla nozione dell'ambiente di lavoro di deegree -- una directory di configurazione
con un layout standardizzato. Con la console dei servizi di deegree 3, otterrete una overview of the supplied, or available preconfigured deegree 3 workspaces by clicking on the "workspaces" link (left side).

Ora siete nella gestione dell'ambiente di lavoro della console dei servizi. In alto, è
visualizzato l'ambiente di lavoro attivo (solo un singolo ambiente di lavoro alla volta
può essere attivo). La vista degli ambienti di lavoro presenta gli ambienti di
lavoro locali non attivi e quelli ufficiali, che possono essere importati (richiede 
accesso ad internet).

The Live DVD ships con un ambiente di lavoro INSPIRE (servizio pre-configurato di
Visualizzazione e Scarico). Cose da provare:

 * Avviare l'ambiente di lavoro INSPIRE. Nella vista "workspaces", cliccate su "Start"
   su "deegree-workspace-inspire-3.2-pre9". (questo richiede un po' di tempo poiche diverse
   dozine di megabytes di INSPIRE GML saranno caricati)
 * Cliccare su "see layers" -> click the "+" e attivare il layer AdministrativeUnit. Questo
   layer is rendered straight from the rich INSPIRE data model and served using the configured deegree INSPIRE View Service.
 * Tornare indietro alla console e cliccare "send requests". Una semplice interfaccia per
   spedire una richiesta WFS sarà aperta. Questa contiene molti esempi (inclusa una transazione
   per inserire un valido GML INSPIRE).
 * Se volete impara di più (es. configurare SQL backends / mappe relazionali), fare 
   riferimento al manuale ufficiale (guardare di seguito).

Alternativamente, potete voler scaricare altri ambienti di lavoro di esempio per otterrete un'idea
di quello che i servizi web di deegree possono fare per voi:

  * deegree utahDemo: A web mapping setup (WFS/WMS/WMTS) based on data from Utah (warning: about 100 MB download)
  * deegree CSW demo: A catalogue service setup that is compliant to the ISO Application Profile and the INSPIRE Discovery Service specification
  * deegree WPS demo: A processing service setup with some simple example processes

Per maggiori informazioni su questi ambienti di lavoro di esempio, fare riferimento alla
documentazione ufficiale dei servizi web di deegree (guardare di seguito).

NOTA: Sfortunatamente, sulla configurazione di INSPIRE inclusa nel Live DVD manca la configurazione
dei layer degli Indirizzi e delle ParticelleCatastali. Potete scaricare una versione corretta o
ottenere supporto dalla comunità di deegree per imparare come risolvere il problema 
(http://www.deegree.org/Community).

Ed ora?
================================================================================

Al fine di ottenere maggiori informazioni sulla configurazione dei servizi web di deegree,
fare riferimento a: http://www.deegree.org/Documentation. È ancora un lavoro da completare.
Contributi, commenti o donazioni sono benvenuti.