:Author: Peter Baumann (p.baumann@jacobs-university.de)
:Version: osgeo-live4.0
:License: LGPLv3 ?

.. _rasdaman-quickstart:
 
.. image:: /images/project_logos/logo-rasdaman.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.rasdaman.org


********************
rasdaman Quickstart
********************

rasdaman ist eine Big Data Engine für flexible ad-hoc Analyse von multi-dimensionalen raum-zeitliche Sensor-, Bild-, Simulations- und Statistikdaten unbeschränkter Größe.


Erforsche die 1-D to 4-D Beispiele
==================================

OSGeo Live enthält eine Vielzahl interaktiver 1D bis 4D rasdaman-Demos.
    * Erforsche die `multi-dimensionalen Demos <http://localhost/rasdaman-demo>`_.
    * Die kleineren Demos sind Teil von OSGeo-Live, die größeren (jenseits der Kapazität dieses Laufwerks), leiten weiter zum `Showcase für OGC Standards <http://standards.rasdaman.org>`_ .


Queries auf der OSGeo database
==============================

    * Öffne eine Konsole, sende Anfragen an die Datenbanke. Hier ist ein Beispiel, in dem roter und blauer Kanal eines RGB-Bilds kombiniert werden::

      $ rasql -q "select png( rgb.red + rgb.blue ) from rgb" --out file --filename osgeo.png

    * Verwende Dein Lieblings-Werkzeug zur Bildinspektion, um das generierte Bild anzuzeigen.


Dinge zum Ausprobieren
======================

Hier sind einige weitere Herausforderungen zum Ausprobieren:
    * Experimentiere mit eigenen Anfragen; der `rasql query language guide <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/browser/manuals_and_examples/manuals/pdf/ql-guide.pdf>`_ ist Dein Freund.
    * Lerne mehr über die OGC `Web Coverage Processing Service <http://www.opengeospatial.org/standards/wcps>`_ (WCPS) Anfragesprache (sie ist startk von rasdaman beeinflusst); ein guter Startpunkt sind `Dokumentation und Tutorial <http://kahlua.eecs.jacobs-university.de/~earthlook/tech/interface-wcps.php>`_ . 
    * Interessiert in Coverage Daten und Diensten im allgemeinen? Besuche das Wiki der OGC `Coverages Domain Working Group <http://external.opengeospatial.org/twiki_public/CoveragesDWG/WebHome>`.


Erzeuge Deine eigene Datenbank
==============================

    * Öffne eine Konsole, `lade rasdaman herunter und installiere es <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/wiki/Download>`_ zusammen mit den `erforderlichen Paketen <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/wiki/RequiredPackages>`_, starte das Einfüge-Skript für die Demos::

      $ install_demo.sh

    * Verwende die rasql utility für Anfrage, beispielsweise die oben genannte oder diese::

      $ rasql -q "select csv( marray bucket in [0:255] values count_cells( rgb.red = bucket ) ) from rgb --out string"

    * Füge eigene Daten hinzu (siehe `<http://www.rasdaman.org/wiki/PetascopeUserGuide>`_ für Details), publiziere sie über OGC Dienste.



