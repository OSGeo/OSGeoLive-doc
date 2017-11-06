:Author: Jan Drewnak (j.drewnak@52north.org)
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo_52North_160.png
  :alt: project logo
  :align: right
  :target: http://52north.org/security

52°North WSS
================================================================================

About
--------------------------------------------------------------------------------

52North Web Security Service (WSS) vi permette facilmente di restringe l'accesso
a servizi spaziali e alle loro risorse usando permessi basati sui ruoli.

Con 52North WSS si può definire politiche di accesso tipo:

  *Tutti gli utenti nel ruole 'external' hanno permesso ad accedere solo ai layer A e B dei WMS con GetMap.*

o

  *GetFeatureInfo è solo permesse nel layer A in una specifica area definita da una bounding box.*

52North WSS è una Applicazione Java Web che solitamente gira con Apache Tomcat Servlet.
Nei fatti è come un proxy per un numero indefinito di Servizi OGC Web, ricevendo tutte le richieste 
e dando seguito alle politiche definite. Così, le implementazioni dei servizi esistenti non hanno 
bisogno di essere cambiate. Politiche e gli utenti sono definiti in file di configurazione XML, 
che sono mantenuti da una interfaccia di gestione generale.

.. image:: /images/projects/52nWSS/52n_wss_mgmt.png
  :scale: 70 %
  :alt: Screenshot of WSS Management UI
  :align: right

Caratteristiche
--------------------------------------------------------------------------------

**Autorizzazione**

Include protezione di:

* Web Mapping Service (WMS): layers, estensioni spaziali
* Web Feature Service (WFS): tipologia di feature, features e i suoi attributi, estensioni spaziali
* Sensor Observation Service (SOS): offerings, procedure, estensioni spaziali, estensioni temporali
* Web Processing Service (WPS): elaborazioni

**Autenticazione**

Metodi di autenticazione per utenti multipli supportati, come:

* Semplice autentificazione HTTP
* SAML Assertions (Security Assertions Markup Language)
* ... e altre


Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://52north.org/communities/security

**Licenza:** GNU General Public License (GPL) version 2

**Versione Software:** WSS 2.2.0

**Piattaforme Supportate:** Windows, Linux, Mac

**Interfacce API:** Java

**Supporto Commerciale:** http://52north.org/


Guida Rapida
--------------------------------------------------------------------------------

* :doc:`Documentazione introduttiva <../quickstart/52nWSS_quickstart>`
