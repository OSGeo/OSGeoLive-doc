:Author: Dane Springmeyer
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Luca Delucchi
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-mapnik.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://mapnik.org/


Mapnik
================================================================================

Motore per restituzione cartografiche
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Mapnik è uno strumento per renderizzare belle le mappe, con bordi morbidi 
caratteristica fornita da dalla qualità grafica anti-aliasing , posizionamento 
delle etichette intelligenti e simboli SVG scalabili. Il più famoso utilizzo di Mapnik è 
per renderizzare lo stile del layer principale di OpenStreetMap.

Mapnik solitamente viene utilizzato in applicazioni python per distribuire le 
proprie mappe attraverso internet anche se i miglioramenti alla scala hanno fatto 
sì che mapnik è stato recentemente usato per creare mappe cartacee ad alta risoluzione.

.. image:: ../../images/screenshots/1024x768/mapnik-screenshot-barcelona.png
  :scale: 40 %
  :alt: screenshot
  :align: right

Essenzialmente è una colleione di oggetti geografici (mappe, layer, datasource,
feature, geometry),  la libreria non si basa su "sistemi a finestre" e
può essere implementata in qualunque ambiente server. Esso è destinato a essere 
eseguito in un ambiente multithread e mira principalmente, ma non
esclusivamente, allo sviluppo basato sul web.

Bindings ad alto livello in Python (Boost.Python) facilitano lo sviluppo rapido 
di applicazioni, mirando a zope3, django ecc.

Mapnik è multipiattaforma. I pacchetti sono disponibili per le maggiori distribuzioni
linux e gli eseguibili sono comunemente utilizzati su Mac OS X e Windows.


Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://www.mapnik.org/

**Licenza:** LGPL (GNU Lesser General Public Licence)

**Versione Software:** 0.7.1

**Piattaforme Supportate:** Windows, Linux, Mac

**Interfacce API:** C++, Python



Presentazione veloce
--------------------------------------------------------------------------------

* :doc:`Documentazione introduttiva <../quickstart/mapnik_quickstart>`


