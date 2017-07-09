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
    /images/project_logos/<filename>
  A symbolic link to the images directory is created during the build process.

.. image:: /images/project_logos/logo-OGC-left.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. image:: /images/project_logos/logo-OGC-right.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. Writing Tip: Name of application

Filter Encoding (FE)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Lo standard OGC® Filter Encoding (FE) definisce una codifica XML per esprimere filtri per interrogazioni (query) spaziali allo scopo di selezionare un sottoinsieme di oggetti (features) sulla base di attributi specifici. (http://www.opengeospatial.org/standards/filter)

.. image:: /images/standards/fe.jpg
  :scale: 55%
  :alt: FE in Context

Un sottoinsieme di oggetti (features) puo` essere identificato per raffigurarli con un particolare colore o convertiri in un formato specificato dall'utente. Il XML filter encoding neutrale permette la validazione e il parsing facilmente attraverso un'implementazione del server dello standard OGC WFS, prima che l'espressione del filtro sia trasformata nel linguaggio obiettivo dell'archivio di dati che si sta consultando. Questo standard viene utilizzato per numerosi servizi Web OGC, compreso il Web Feature Service, il Catalogue Service e lo standard Styled Layer Descriptor.

I vincoli del filtro possono essere specificati sui valori delle proprieta` spaziali, temporali e scalari. Un esempio di filtro e`: "Trova tutte le proprieta` nella contea Omstead  appartenenti a Peter Vretanos." Un esempio di filtro temporale e`: "Trova tutte le dighe del Massachusetts che sono state costruite prima del 1900." Un esempio di filtro scalare e`: "Trova tutti i sensori di temperatura di Parigi che riportano una temperatura compresa tra 20 gradi C e 24 gradi C."

Vedi anche
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`sld_overview`
* :doc:`csw_overview`
* :doc:`wfs_overview`
* :doc:`wms_overview`

