:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Version: osgeo-live5.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
Copyright: (c) 2011 by The OSGeo Foundation

.. image:: ../../images/project_logos/logo-TinyOWS.png
  :scale: 100 %
  :alt: Projektlogo
  :align: right
  :target: http://www.tinyows.org/

********************************************************************************
TinyOWS Quickstart 
********************************************************************************

TinyOWS ist ein hochperformanter, leichtgewichtiger und einfach einzurichtender Transaktionaler Web Feature Service (WFS-T), der CGI und FastCGI Schnittstellen unterstützt und :doc:`PostGIS <../overview/postgis_overview>` für die Datenspeicherung nutzt.

Dieser Quickstart Guide beschreibt folgende Schritte:

  * Einen WFS Layer in QGIS anzeigen
  * Einen WFS Layer mit dem WFS-T Protokoll in QGIS editieren


WFS Layer mit QGIS anzeigen
================================================================================

#. :menuselection:`Applications --> Desktop GIS --> Quantum GIS` im Startmenü des Desktops wählen

#. Wählen Sie :menuselection:`Layer --> PostGIS Layer hinzufügen...`.

   * Wir zeigen zuersten den Original PostGIS Layer an

#. Klicken Sie auf die Schaltfläche :guilabel:`Neu`.

#. **pgrouting** als Name und Datenbank der Verbindung eingeben

#. Klicken Sie auf die Schaltfläche :guilabel:`OK`.

#. Klicken Sie auf die Schaltfläche :guilabel:`Verbinden`.

#. Zeile **ways** der Tabellen Liste auswählen

#. Klicken Sie auf die Schaltfläche :guilabel:`Hinzufügen`.

#. Zoomen Sie auf einen beliebigen Teilbereich hinein

#. Wählen Sie :menuselection:`Layer --> WFS Layer hinzufügen...`.

   * Jetzt fügen wir einen WFS Layer hinzu, der auf der selben Tabelle basiert

#. Klicken Sie auf die Schaltfläche :guilabel:`Neu`.

#. **tinyows** als Name und **http://localhost/cgi-bin/tinyows** als URL einfüllen

#. Klicken Sie auf die Schaltfläche :guilabel:`OK`.

#. Klicken Sie auf die Schaltfläche :guilabel:`Verbinden`.

#. **ows:ways** in der Layer-Liste auswählen

#. Setzen Sie einen Haken bei der Option :guilabel:`Nur Objekte, die den aktuellen Ausschnitt scheiden laden`.

#. Klicken Sie auf die Schaltfläche :guilabel:`OK`.

   * Der WFS Layer wird jetzt angezeigt:

     .. image:: ../../images/screenshots/800x600/tinyows_wfs_layer.png
        :scale: 80 %


Daten editieren mit WFS-T
================================================================================

#. Wählen Sie :menuselection:`Layer --> Bearbeitungsstatus umschalten`.

#. Wählen Sie :menuselection:`Bearbeiten --> Objekte überarbeiten`.

#. Verschieben Sie einen Randpunkt (Kreuz) an eine andere Position

#. Wählen Sie :menuselection:`Layer --> Änderungen speichern`.

#. Deselektieren Sie **tows:ways** in der Layer Liste, um den WFS-Layer auszublenden

   * Sie sollten den eben editierten Linienzug in einer anderen Farbe sehen, direkt von PostGIS geliefert.


Wie geht es weiter?
================================================================================

Um mehr über TinyOWS zu erfahren, dient die Seite `User Documentation`_ auf der TinyOWS Homepage als Ausgangspunkt.

.. _`User Documentation`: http://tinyows.org/trac/wiki/UserDocumentation
