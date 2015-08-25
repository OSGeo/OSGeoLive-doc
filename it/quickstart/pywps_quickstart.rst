:Author: OSGeo-Live
:Author: Jachym Cepicky
:Version: osgeo-live8.0-draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-pywps.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://pywps.wald.intevation.org

.. image:: ../../images/logos/OSGeo_labs.png
  :scale: 100
  :alt: OSGeo Labs
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
Guida rapida PyWPS
********************************************************************************

PyWPS è un server che implementa lo standard OGC WPS scritto in `Python <http://python.org>`_.

PyWPS permette di eseguire operazioni geospaziali (chiamandoli processi).

PyWPS è `Open Source`_, rilasciato sotto una licenza GNU/GPL, ed è possibile
farlo girare su tutte le maggiori piattaforme (Windows, Linux, Mac OS X).

PyWPS è installato di default sul DVD di OSGeo-Live. Questo tutorial descrive come:

* eseguire una nuova installazione di PyWPS
* testare l'installazione di PyWPS
* configurazione base di PyWPS
* creare e spiegare processi in PyWPS
* eseguire le operazioni GetCapabilities, DescribeProcess e Execute

Installazione
================

Richieste di sistema
----------------------

PyWPS è scritto in `Python <http://python.org>`_, e funziona con (testato)
le versioni 2.6 e 2.7

PyWPS richiede le seguenti librerie:

- `lxml`_ (version >= 2.2.3) per il supporto XML


Installando da sorgente
------------------------

`Scaricare pywps`_ l'ultima versione o clone da `GitHub`_:

.. code-block:: bash

  $ git clone https://github.com/geopython/PyWPS.git pywps

Assicurarsi che CGI è abilitato per la vostra directory di installazione.

Testare l'applicazione
=========================

Per eseguire i test PyWPS, utilizzare l'eseguibile PyWPS dal gruppo del
Web Services, o aprire Firefox e navigare in ``http://localhost/cgi-bin/pywps``:

Dal menu Application, avviare l'applicazione Terminal e testare la richiesta
GetCapabilities ::

    $ wget -O - "http://localhost/cgi-bin/pywps?service=wps&request=GetCapabilities"

    <wps:Capabilities service="WPS"
    ...
    </wps:Capabilities>

Dovreste vedere il documento intero della risposta WPS Capabilites. È possibile
anche vedere la stessa risposta usanto un `browser <http://localhost/cgi-bin/pywps?service=wps&request=GetCapabilities>`_

Selezionare un processo dalla lista, per esempio `ultimatequestionprocess`,
e visualizzare la sua descrizione chiamando l'operazione `DescribeProcess`.::

    $ wget -O - "http://localhost/cgi-bin/pywps?service=wps&version=1.0.0&request=DescribeProcess&identifier=ultimatequestionprocess"

    <wps:ProcessDescriptions
    ...
    </wps:ProcessDescriptions>

Di nuovo, dovreste vedere il documento di risposta di WPS DescribeProcess.
È possibile anche vedere la stessa risposta usanto un `browser <http://localhost/cgi-bin/pywps?service=wps&version=1.0.0&request=DescribeProcess&identifier=ultimatequestionprocess>`_

Ora eseguite `ultimatequestionprocess`, sul server. Il processo è,
secondo la sua descrizione, in grado di *Answer to Life, the Universe and Everything*.
Nessun input è richiesto.::

    $ wget -O - "http://localhost/cgi-bin/pywps?service=wps&version=1.0.0&request=Execute&identifier=ultimatequestionprocess"

    # wait about 10s

    <wps:ExecuteResponse
    ...
         <wps:Data>
                <wps:LiteralData dataType="integer">42</wps:LiteralData>
        </wps:Data>
    ...
    </wps:ExecuteResponse>

Come dovreste sapere, impiega un po', prima che il processo è calcolato.
Nel nostro caso, circa 10s. Alla fine, è possibile vedere la risposta alla
vita, universo e tutto.

Configurazione
=================

È possibile configurare PyWPS nel file di configurazione che si trova in
`/usr/local/share/pywps/pywps.cfg`. I valori sono spiegati, ma si può fare sempre riferimento a
`standard documentation <http://pywps.wald.intevation.org/documentation/pywps-3.2/configuration/index.html#configuration-of-pywps-instance>`_

Processi
---------

È possibile trovare alcuni esempi di processi nella directory
`/usr/local/share/pywps/processes`. Ogni processo è solitamente archiviato
in un file separato ed è rappresentato dalla classe Python, con constructor e metodo `execute()`::


    # Example of PyWPS process (shorten)
    from pywps.Process import WPSProcess
    class Process(WPSProcess):
     def __init__(self):
         WPSProcess.__init__(self,
                             identifier="ultimatequestionprocess", #the same as the file name
                             ....

     def execute(self):
         import time
         self.status.set("Preparing....", 0)
         for i in xrange(1, 11):
             time.sleep(2)
             self.status.set("Thinking.....", i*10)
         #The final answer
         self.Answer.setValue("42")

La directory del processo sviluppato è configurato in file `pywps` all'interno
della directory `cgi-bin`, nella variable d'ambiente `PYWPS_PROCESSES`.

Per maggiori informazioni su pywps, consultare la `documentazione`_ sul
sito internet di pywps.

.. _`OpenGIS Web Processing Service`: http://www.opengeospatial.org/standards/wps
.. _`Open Source`: http://www.opensource.org/
.. _`documentazione`: http://pywps.wald.intevation.org/documentation
.. _`lxml`: http://lxml.de/
.. _`Scaricare pywps`: http://pywps.wald.intevation.org/download
.. _`GitHub`: https://github.com/geopython/PyWPS
