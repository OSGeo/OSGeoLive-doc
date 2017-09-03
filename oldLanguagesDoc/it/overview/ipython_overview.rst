:Author: OSGeo-Live
:Reviewer: Massimo Di Stefano, Center for Coastal and Ocean Mapping - UNH
:Translator: Luca Delucchi
:Version: osgeo-live7.9
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-ipython.png
  :scale: 90 %
  :alt: project logo
  :align: center
  :target: http://ipython.org/



IPython
================================================================================


IPython fornisce una ricca architettura per lo sviluppo interattivo con:

* Una potente shell interattiva (terminale e basata su Qt).
* Un web notebook con supporto per codice, testo, espressioni matematiche, grafici e altre tipologie di media.
* Supporto per la visualizzazione interattiva di dati e l'uso di strumenti grafici.
* Flessibile, interpreti incorporati per caricare il vostro progetto.
* Facile da usere, strumenti per alte performance per calcolo parallelizzato.

.. image:: /images/screenshots/ipython/ipython-notebook1.png
  :scale: 100 %
  :alt: screenshot
  :align: right
  

.. _protocollo: http://ipython.org/ipython-doc/stable/development/messaging.html

.. _bash-perl-o-ruby: http://nbviewer.ipython.org/github/ipython/ipython/blob/master/examples/notebooks/Script%20Magics.ipynb

.. _official-example-collection: https://github.com/ipython/ipython/tree/master/examples/notebooks#a-collection-of-notebooks-for-using-ipython-effectively

.. _notebook-gallery: https://github.com/ipython/ipython/wiki/A-gallery-of-interesting-IPython-Notebooks

.. _videos-and-screencasts : http://ipython.org/videos.html#videos

.. _talks-and-presentations: http://ipython.org/presentation.html

.. _extensive-documentation: http://ipython.org/documentation.html

.. _other-projects: https://github.com/ipython/ipython/wiki/Projects-using-IPython


  
Sebbene il focus del progetto sia Python, l'architettura di IPython è disegnata seguendo una via
language-agnostic per facilitare l'interazione dello sviluppo in qualsiasi linguaggio. Un kernel
interattivo parla ai clients tipo il terminale o il web notebook attraverso un non bene specificato
protocollo_, e tutte le caratteristiche del kernel sono disponibili a tutti i clients. Noi distribuiamo
il kernel di IPython ufficiale, ma kernels per altri linguaggi sono attualmente sviluppati, con
prototipi in Ruby e JavaScript già esistenti. Addizionalmente, il kernel IPython supporta integrazione
multi-linguaggio, lasciandovi per esempio utilizzare sia codice Python con Cython, R, Octave, e script
in bash-perl-o-ruby_.

Per iniziare con IPython Notebook, vedere la official-example-collection_. La notebook-gallery_ è
un'eccellente modo per vedere le molte cose che possono essere fatto con IPython mentre si apprende su
una varietà di argomenti, della basi della programmazione a statistiche avanzate o meccanica quantistica.

Per apprendere di più su IPython, ci sono videos-and-screencasts_ disponibili o scarica talks-and-presentations_,
o leggi la extensive-documentation_. IPython è open source (BSD license), ed è usato da diversi other-projects_;
aggiunge il tuo progetto alla list se usa IPython come libreria, e non dimenticare di citare il progetto.

IPython supporta Python 2.6, 2.7 e 3.2 o più recente. La vecchia serie 0.10 supporta Python 2.5, e può essere usato con Python 2.4.


caratteristiche principali
--------------------------------------------------------------------------------

IPython Notebook è un ambiente computazionale interattivo basato sul web dove si può combinare l'esecuzione
di codice, testo, espressioni matematiche, grafici, erich media in un singolo documento.


Questi notebooks sono normali file che possono essere condivisi con colleghi, convertiti in altri formati tipo
HTML o PDF, ecc. You can share any publicly available notebook by using the IPython Notebook Viewer service which will render it as a static web page. This makes it easy to give your colleagues a document they can read immediately without having to install anything.

To learn more about using the IPython Notebook, you can visit our example collection, and you can read the documentation for all the details on how to use and configure the system. The Notebook Gallery showcases many interesting notebooks covering a variety of topics, from basic programming to advanced scientific computing.


Geospatial Data Analysis and IPython
--------------------------------------------------------------------------------
.. _Data_and_Visualization_Integration_Via_Web-based_Resources: http://nbviewer.ipython.org/gist/anonymous/5678081

.. _Exploring_seafloor_habitats_geographic_analysis_using_IPython_Notebook_with_GRASS_and_R: http://nbviewer.ipython.org/gist/epifanio/7598354

.. _slideshow: http://orion.tw.rpi.edu/~epifanio/AGU-2013/AGU-2013-H52E02-MDS.slides.html

.. _geo-notebook: https://github.com/epifanio/geo-notebook

On OSGeoLive a number of python libraries and command line tools are installed (GDAL, GRASS, )and ready to be used, IPython provides a rich interface for such kind of tools, example usage can be found in the geo-notebook_ git repository other examples are available online on the IPython notebook gallery see : Data_and_Visualization_Integration_Via_Web-based_Resources_ and Exploring_seafloor_habitats_geographic_analysis_using_IPython_Notebook_with_GRASS_and_R_ , and an IPython Notebook can be also rendered as a slideshow_




Details
--------------------------------------------------------------------------------

IPython Website_ 

.. _Website: http://ipython.org/

**Licence:** BSD license

**Software Version:** 1.2.1

**Supported Platforms:** Linux, Mac, Windows

**API Interfaces:** Python


COMMUNITY
--------------------------------------------------------------------------------

.. _Help-Chat-Room: http://www.hipchat.com/ghSp7E1uY

Help-Chat-Room_

.. _Stack-Overflow: http://stackoverflow.com/questions/tagged/ipython


.. _Mailing-list: http://projects.scipy.org/mailman/listinfo/ipython-dev

Stack-Overflow_ 

Mailing-list_

.. _Wiki: https://github.com/ipython/ipython/wiki

Wiki_

.. _Reddit: http://www.reddit.com/r/IPython

Reddit_

.. _File_a_bug: https://github.com/ipython/ipython/issues

File_a_bug_


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/ipython_quickstart>`
