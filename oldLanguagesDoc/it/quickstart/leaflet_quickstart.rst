:Author: Vladimir Agafonkin, adopted for live dvd by Johan Van de Wauw
:Translator: Luca Delucchi

********************************************************************************
Guida rapida per Leaflet
********************************************************************************

Esecuzione
================================================================================

Prima di iniziare questo tutorial dovrete avviare TileLite. Su questo live dvd
potete trovarlo sotto **Geospatial\\Spatial Tools\\Start Mapnik & TileLite**.
Questo fornirà le tiles di sfondo che saranno usate in questa demo.

Vedere l'esempio_

.. tip :: Se state leggendo questo tutorial al di fuori del live dvd potreste
          preferire leggere la demo originale: http://leafletjs.com/examples/quick-start.html,
          visto che questa demo usa TileLite del live dvd.

Preparare la vostra pagina
=============================
Prima di scrivere alcun codice per la mappa, si dovrà effettuale i seguenti passaggi
di preparazione nella vostra pagina:

* Includere i file CSS di Leaflet nella sezione head del vostro modello

.. code-block:: html

 <link rel="stylesheet" href="/leaflet/leaflet.css" />
 <!--[if lte IE 8]>
     <link rel="stylesheet" href="/leaflet/leaflet.ie.css" />
 <![endif]-->

* Includere il file JavaScript Leaflet:

.. code-block:: html

 <script src="/leaflet/leaflet.js"></script>

* inserire un elemento **div** con un certo **id** dove volete inserire la mappa nella pagine

.. code-block:: html

 <div id="map"></div>

* Essere sicuri che il contenitore abbia un'altezza definita, per esempio settandola nel CSS:

.. code-block:: css

 #map { height: 180px; }

Ora siete pronti ad inizializzare la mappa e fare qualcosa con essa.

Impostare la Mappa
================================================================================
Creare una mappa dell'Europa con un'indicazione della conferenza FOSS4G 2013.
Prima verrà inizializzata la mappa e impostare la sua vista alle coordinate
geografiche e un livello di zoom scelti:

.. code-block:: javascript

 var map = L.map('map').setView([45.52875, -122.6632], 5);

Di default (poichè non abbiamo passato alcuna opzione quando sia crea
l'istanza mappa), sia il mouse che l'iterazione del touch sulla mappa sono
abilitati, e ha i controlli di zoom e attribuzione.

Notare che la chiamata setView ritorna anche l'oggetto mappa - la maggior
parte dei metodi Leaflet come questo quando non ritornano un valore esplicito,
permettono la possibilità d'incatenamento di metodi come jQuery.

Dopo si aggiungerà un layer di tile da inserire nella mappa.
In questo caso si useranno le tile fornite da TileLite presente nel live dvd.
Notare che usare una mappa di sfondo migliore come OpenStreetMap risulterà
più apprezzato dall'utente.

Creare un layer di tile solitamente implica impostare il template URL per
le immagine tile, il testo dell'attribuzione e il numero massimo dei livelli
di zoom del layer:

.. code-block:: javascript

 L.tileLayer('http://localhost:8012/{z}/{x}/{y}.png,{}).addTo(map);

Se avete accesso ad internet potreste volere delle tile più belle come sfondo:

.. code-block:: javascript

 L.tileLayer('http://{s}.tile.cloudmade.com/API-key/997/256/{z}/{x}/{y}.png', {
			maxZoom: 18,
			attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>'
		}).addTo(map);

Fate attenzione che il codice sia chiamato dopo l'inclusione di **div** e
**leaflet.js**. Tutto qui! Ora avete un mappa Leaflet funzionante.

È bene notare che Leaflet è indipendente da provider, significa che non
impone una particolare scelta di providers per tiles, e non contiene neanche
una linea di codice specifica per un provider, periò siete liberi di usare
altri provider se lo necessitate.

Markers, cerchi e poligoni
================================================================================

Oltre a layer di tile, potete facilmente aggiungere altre cose alla vostra
mappa, incluso markers, linee, poligoni, cerchi e popups.
Aggiungiamo un marker:

.. code-block:: javascript

 var marker = L.marker([45.52875, -122.6632]).addTo(map);

Aggiungere un cerchio è lo stesso (ad eccetto di specificare il raggio in
metri come secondo argomento), ma potete modificare come verrà visualizzato
passando opzioni come ultimo argomento quando create l'oggetto:

.. code-block:: javascript

 var circle = L.circle([44.056287, -123.07572], 25000, {
    color: 'red',
    fillColor: '#f03',
    fillOpacity: 0.5
 }).addTo(map);

Aggiungere un poligono è lo stesso semplice:

.. code-block:: javascript

 var polygon = L.polygon([
    [46.01, -130.01],
    [40.81, -128.76],
    [44.15, -133.23]
 ]).addTo(map);


Lavorare con i popups
========================

Popups sono usualmente usati quando si vuole aggiungere alcune informazioni
ad un particolare oggetto sulla mappa. Leaflet ha un comodo metodo per questo:

.. code-block:: javascript

 var popup = L.popup()
    .setLatLng([45.52875, -122.6632])
    .setContent("I am a standalone popup.")
    .openOn(map);

Qui si usa **openOn** invece di **addTo** perchè questo permette la chiusura
automatica di un popup precedentemente aperto quando uno nuovo viene selezionato,
questo è molto comodo per l'usabilità della mappa

Rapporti con gli eventi
===========================

Ogni volta che avviene qualcosa in Leaflet, per esempio l'utente clicca su
un marker o si cambia lo zoom della mappa, l'oggetto corrispondente manda
un evento che può essere registrato con una funzione. Questo permette di
reagire all'iterazione dell'utente:

.. code-block:: javascript

 function onMapClick(e) {
    alert("You clicked the map at " + e.latlng);
 }

 map.on('click', onMapClick);

Ogni oggetto ha il proprio set di eventi - controlla la documentazione_ per
dettagli. Il primo argomento della funzione che è in ascolto è un oggetto
evento - questo contiene utili informazioni sull'evento che è accaduto.
Per esempio, l'oggetto per l'evento clicca sulla mappe (e nell'esempio sopra)
ha la proprietà latlng che è la posizione dov'è avvenuto il click.

Miglioriamo l'esempio usando un popup invece di un alert:

.. code-block:: javascript

 var popup = L.popup();

 function onMapClick(e) {
    popup
         .setLatLng(e.latlng)
         .setContent("You clicked the map at " + e.latlng.toString())
          .openOn(map);
 }

 map.on('click', onMapClick);

Si provi cliccando sulla mappa e vedrete le coordinate in un popup. Vedete l'esempio_ completo

Ora avete imparato le basi di Leaflet e potete iniziare a costruire subito applicazione con mappe! Non dimenticate di vedere la documentazione_ dettagliata o altri esempi_.


.. _documentazione: http://leafletjs.com/reference.html
.. _esempio: http://localhost/leaflet-demo.html
.. _esempi: http://leafletjs.com/examples.html
