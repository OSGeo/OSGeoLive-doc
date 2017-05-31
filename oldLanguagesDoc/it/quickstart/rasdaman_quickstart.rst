:Author: Jinsongdi Yu (j.yu@jacobs-university.de)
:Author: Michael Owonibi (o.michael@jacobs-university.de)
:Author: Peter Baumann (p.baumann@jacobs-university.de)
:Author: Dimitar Misev (d.misev@jacobs-university.de)
:Author: Alan Beccati (a.beccati@jacobs-university.de)
:Version: osgeo-live6.5draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: ../../images/project_logos/logo-rasdaman.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.rasdaman.org


********************************************************************************
Guida rapida rasdaman
********************************************************************************

rasdaman è un server raster consentire l'interrogazione n-D dati raster memorizzati
in un database relazionale standard.

Questa guida rapida descrive come provare interrogazioni su un sandbox di oggetti raster.
Prima di questi esempi, il server rasdaman deve essere avviato 
(:menuselection:`Geospatial --> Databases --> Rasdaman --> Start Rasdaman Server`).

Esplorare esempi da 1-D a 4-D
================================================================================

    * Potete accedere alla `demo locale <http://localhost:8080/earthlook/index.php>`_ di
      rasdaman per esplorare i dati demo di vari set. Una piccola parte sono contenute in OSGeo-Live, 
      queste utilizzano i larghi set di dati direttamente dal `sito Earthlook <http://kahlua.eecs.jacobs-university.de/~earthlook/demos/index.php>`_ (richiede una connessione internet attiva).

Eseguire interrogazioni localmente
================================================================================

    * Aprire una console e aprire il database di esempio installata localmente
    * usare l'applicazione :command:`rasql` per spedire interrogazioni e ricevere i 
      risultati, per esempio::

      $ rasql -q "select png((char)(c.red / (c.red + c.green) - c.green / (c.red + c.green)) > 0.6 * 255) from rgb AS c" --out file

    * usare il vostro strumento preferito per oprire i file generati.


Creare il vostro database
================================================================================

    * Aprire una console
    * `Scaricare e installare rasdaman <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/wiki/Download>`_
      e `i suoi prerequisiti <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/wiki/RequiredPackages>`_
    * eseguire lo script ingestion demo::

      $ install_demo.sh

    * usare lo strumento :command:`rasql` per spedire interrogazioni e ricevere i risultati, per esempio::

      $ rasql -q "select png( NIR ) from NIR" --out file


Cose da provare
================================================================================

Ecco alcune ulteriori sfide per provare:

    * Esplorare il set di dati demo guardando la `guida del linguaggio rasql <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/browser/manuals_and_examples/manuals/pdf/ql-guide.pdf>`_
    * Per sapere di più su OGC  `Web Coverage Processing Service <http://www.opengeospatial.org/standards/wcps>`_ (WCPS) Linguaggio standard (che è stato fortemente ispirato da rasdaman), un punto di partenza è la `documentazione e i  tutorial <http://kahlua.eecs.jacobs-university.de/~earthlook/tech/interface-wcps.php>`_ . 

