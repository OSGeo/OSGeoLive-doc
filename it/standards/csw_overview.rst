.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
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

Catalogue Service per il Web (CS-W)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.


.. image:: ../../images/standards/csw.jpg
  :scale: 55%
  :alt: CS-W in Context

Lo standard di interfaccia OGC Catalogue Service specifica un modello per definire interfacce per pubblicare e ricercare collezioni di informazioni descrittive (metadati) riguardanti dati geospaziali, servizi e oggetti informativi relazionati. I fornitori di risorse, come per esempio i fornitori di contenuti, utilizzano i cataloghi per registrare i metadati che si adattano alla scelta del fornitore di un modello informativo; tali modelli includono le descrizioni dei riferimenti spaziali e le informazioni tematiche. Le applicazioni client possono cosi` cercare dati e servizi geospaziali in maniera efficiente.

Esistono diversi profili dell'attuale modello OGC CS-W. Essi includono:

* Il profilo Metadati ISO 19115/19139 (http://www.iso.org/iso/catalogue_detail.htm?csnumber=32557). Questo documento specifica un profilo di applicazione per i metadati ISO con supporto per la codifica XML per ISO 19139 (http://www.iso.org/iso/catalogue_detail.htm?csnumber=32557) e protocollo di collegamento HTTP. Questo profilo CS-W e` ampiamente implementato in Europa, ad esempio nell'Infrastruttura di Dati Spaziali per il North Rhine Westphalia (stato federale tedesco).
* Servizio di Registro CSW-ebRIM. (http://portal.opengeospatial.org/files/?artifact_id=31137). Questo profilo applica l'interfaccia CSW al modello informativo del registro OASIS ebXML (ebRIM 3.0), per fornire un servizio di registro basato sul web generale e flessibile, che permette agli utenti e ai software di localizzare, accedere e utilizzare le risorse in un sistema aperto e distribuito; fornisce strumenti per recuperare, conservare e gestire diversi tipi di descrizione delle risorse. Un meccanismo di estensione permette al contenuto del registro di venire adattato per domini di applicazione piu` specialistici.
* CSW 39.50: Il protocollo di connessione Z39.50 utilizza un'architettura client-server basata sui messaggi, implementata utilizzando la Definizione di Servizio di Applicazione e Specificazione3 di protocollo ANSI/NISO Z39.50. Questo protocollo mappa ciascuna delle operazioni del modello generale ad un servizio corrispondente specificato nello standard ANSI/NISO/ISO http://lcweb.loc.gov/z3950/agency/document.html.

Gran parte del lavoro attuale su questo standard ha a che fare con la ristrutturazione dello standard di catalogo, cosi` che esiste un nucleo ben definito, di semplice implementazione, e un meccanismo ben definito per formulare le varie implementazioni (precedentemente conosciute come profili di applicazione).

Vedi anche
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* Cat: ebRIM App Profile: Earth Observation Products
* ISO 23950 (2003). "Information Retrieval (Z39.50): Application Service Definition and Protocol Specification"
