.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:Translator: Margherita Di Leo
:License: Creative Commons

.. Writing Tip: 
  Project logos are stored here:
    https://github.com/OSGeo/OSGeoLive-doc/tree/master/images/project_logos
  and accessed here:
    ../../images/project_logos/<filename>
  A symbolic link to the images directory is created during the build process.

.. image:: ../../images/project_logos/logo-OGC-left.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. image:: ../../images/project_logos/logo-OGC-right.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. Writing Tip: Name of application

Style Layer Descriptor (SLD)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Lo standard OGC® Styled Layer Descriptor (SLD) fornisce i costrutti per la simbolizzazione e la colorazione degli oggetti geografici (features) e le coperture. Tipicamente e` usato per applicare gli stili ai Web Map Services, o lo stile di un GML da un Web Feature Service. (http://www.opengeospatial.org/standards/sld) 

.. image:: ../../images/standards/sld.jpg
  :scale: 55%
  :alt: SLD in Context

Il controllo a grana fine della rappresentazione grafica dei dati e` un requisito fondamentale per molte applicazioni di mappa. L'abilita` per definire regole di stile richiede un linguaggio di stile che possa essere compreso sia dal client che dal server.

L'attuale standard OGC Web Map Service (WMS) consente ad un fornitore di informazioni (information provider) di specificare le opzioni di stile mostrando una collezione predefinita di rappresentazioni visive per ciascuna collezione di dati disponibile. Comunque, mentre un'implementazione WMS attualmente puo` fornire all'utente la scelta delle opzioni di stile, l'implementazione WMS puo` soltanto comunicare all'utente il nome di ciascuno stile. Non puo` comunicare all'utente come la visualizzazione apparira` per una certa mappa. Ancora piu` importante, l'utente non ha modo di definire le proprie regole di stile.

L'abilita` per un essere umano o per una macchina client di definire queste regole richiede un linguaggio di stile che sia client che server possano comprendere. Lo standard OGC Symbology  Encoding (SE) (http://www.opengeospatial.org/standards/symbol) specifica il formato di tale linguaggio di stile di mappa. Il profilo SLD del WMS consente l'applicazione di SE al layer WMS usando le estensioni delle operazioni WMS. Inoltre, SLD definisce un'operazione per l'accesso standardizzato ai simboli della legenda che possono essere conservati in remoto su un server per l'uso in applicazioni multiple.

Da notare che oltre a raffigurare l'output delle implementazioni WMS, SE puo` anche essere usato per raffigurare l'output delle implementazioni WFS e delle implementazioni dello standard di interfaccia OGC Web Coverage Service (WCS)

Vedi anche
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`fe_overview`
* :doc:`kml_overview`
* Symbology Encoding
* :doc:`gml_overview`
* :doc:`wms_overview`
* :doc:`wfs_overview`

