:Author: Pieter De Graef
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: ../../images/project_logos/logo-geomajas.png
  :width: 50px
  :height: 50px
  :alt: project logo
  :align: right
  :target: http://www.geomajas.org

********************************************************************************
Guida rapida su Geomajas
********************************************************************************

Come incominciare
================================================================================

Geomajas è un ambiente di sviluppo per creare applicazioni WebGIS. Quindi,quello 
che che potrete vedere in questo Live DVD è un'applicazione di esempio creata 
usando la tecnologia Geomajas.

.. image:: ../../images/screenshots/1024x768/geomajas_1024x768_screen1.png
  :scale: 50%
  :alt: Geomajas Showcase
  :align: right

* Entrate nella cartella "Browser Clients" sul desktop.

* Cliccate sull'icona "Start Geomajas". Questo lancerà il browser FireFox che vi porterà
  automaticamente all'indirizzo corretto.

* Sul lato sinistro vedrete una lista di piccoli esempi di quali funzionalità Geomajas
  supporta out-of-the-box. Cliccando su questio sarà aperto l'esempio associato.

* Per ogni esempio, troverete una breve descrizione/spiegazione sul lato destro.
  È raccomandato leggerla poichè vi chiarificheranno ogni esempio.


Creare una nuova applicazione Geomajas
================================================================================

Per creare una nuova applicazione Geomajas, dovrete avere installato `Maven <http://maven.apache.org/>`_::

    $ sudo apt-get install maven2

Maven è una strumento per costruire e gestire qualsiasi progetto basato su Java.
Geomajas ha una architettura Maven definit, che imposta un'applicazione di default
in un unico commando::

    $ mvn archetype:generate -DarchetypeCatalog=http://files.geomajas.org/archetype-catalog.xml

Complimenti, avete appena creato una nuova applicazione Geomajas con successo. Ora
dovrete scegliere se eseguirla immediatamente, o aprirla in una ambiente di sviluppo
per incominciare a lavovare su di essa.
Per eseguire l'applicazione immediatamente, andate nella cartella della applicazione
(dov'è il file pom.xml), ed eseguite il seguente comando di Maven::

    $ mvn jetty:run

Questo compilerà l'applicazione, e lo eseguirerà in un contenitori jetty. Potrete
raggiungere l'applicazione al seguente indirizzo: http://localhost:8080/

Guardate la documentazione `introduttiva su Geomajas <http://files.geomajas.org/maven/trunk/geomajas/docbook-gettingstarted/html/master.html#prereq>`_ per maggiori dettagli su come creare applicazioni
Geomajas, o impostare l'ambiente di sviluppo.

Per informazioni generali quardare `la pagina principale di Geomajas <http://www.geomajas.org/>`_.

