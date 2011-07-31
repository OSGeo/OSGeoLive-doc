:Author: Jean Mathieu
:Author: Thierry Badard
:Version: osgeo-live5.0draft
:License: Creative Commons

.. _geokettle-quickstart:
 
.. image:: ../../images/project_logos/logo-geokettle.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://www.geokettle.org/

********************
GeoKettle Quickstart 
********************


GeoKettle ist ein leistungsfähiges, Metadaten-gesteuertes ETL -Werkzeug (Extract, Transform & Load) für räumliche Daten und kann zur Integration verschiedenster Datenquellen, die Erstellung und Aktualisierung von Geodatenbeständen, Data Warehouses und Web Services genutzt werden.

GeoKettle ermöglicht die Extraktion von Daten aus Datenquellen und deren Transfo
rmation, um Fehler zu korrigieren, Daten zu bereinigen, Datenstruktur zu ändern 
sowie die Daten standardkonform zu verwalten. Darüber hinaus können die transfor
mierten Daten in Zielsysteme geschieben werden, zum Beispiel in Datenbank Manage
ment Systeme (DBMS), in Dateien GIS spezifischer Formate oder Raumbezogenen Web 
Services.

Dieser Quickstart Guide beschreibt, wie:

  * vorhandene Daten-Transformationen geladen werden
  * Daten-Transformationen neu erstellt werden

GeoKettle starten
=================

#. Wählen Sie :menuselection:`Spatial Tools --> GeoKettle` im Startmenü des Desktops 
#. Bitte warten Sie einen Augenblick bis die Anwendung gestartet ist
#. Folgender Dialog fordert Sie auf, ein Repository anzugeben bzw. auszuwählen. Geben Sie die Informationen an oder klicken Sie einfach auf :guilabel:`No repository`, um die GeoKettle Workbench anzuzeigen.

  .. image:: ../../images/screenshots/800x600/geokettle_welcome.png

Workbench
=========

Wie im folgenden Screenshot dargestellt, ist das Workbench-Fenster aus verschiedenen Bereichen zusammengesetzt.

  .. image:: ../../images/screenshots/1024x768/geokettle_workbench.png

Der linke Teil agiert dabei als Katalog, der einzelne Schritte für Daten-Transformationen, die miteinander kombiniert werden können, enthält. Im rechten Teil werden die Transformationen selbst bearbeitet und können da auch gestartet und getestet werden.

Auf die Inhalte der Bereiche sowie deren Verwendung wird noch im Detail weiter unten eingegangen.

Laden einer vorhanden Transformation
====================================

Um eine vorhandenen Transformation zu laden, wählen Sie :menuselection:`File --> Open`. Navigieren Sie zu den Beispiel-Transformationen im Unterverzeichnis :file:`samples/transformations/geokettle`, wählen Sie eine verfügbare Beispiel-Transformation aus und klicken dann :guilabel:`OK`. GeoKettle speichert Transformationen in Dateien mit der Endung `*.ktr`.

Das folgende Bild zeigt die Beispiel-Transformation « intersection ». Nachdem die Transformation geladen wurde, haben sich, wie Sie vielleicht schon festgestellt haben, die Inhalte der beiden Workbench-Teile verändert.

  .. image:: ../../images/screenshots/1024x768/geokettle_intersection_transformation.png

Eine Beschreibung der Transformation und der optionalen Direktiven sind im gelben Tooltip-Bereich  dargestellt.

Um mit einer Transformation beginnen zu können, ist zunächst ein Shapefile (`*.shp`) als Datenquelle anzugeben. Um dies zu tun, klicken Sie auf jedes der :guilabel:`GIS file input` Icons im rechten Teil der Anwendung. Es wird folgender Diealog in Erscheinung treten.

  .. image:: ../../images/screenshots/800x600/geokettle_shapefile_input_step.png

.. note: 
   Sie können alle Schritte der Transformation per Doppelklick mit der Maus anpassen.

Geben Sie den Namen des Shapefiles inlusive der Dateiendung `*.shp` an oder belassen Sie die Inhalte des Dialogs wie vorgegeben, um die im Beispiel angegebenen Datensätze zu verwenden, und klicken auf :guilabel:`OK`.

Nun ist alles soweit vorbereitet, um mit der Transformation der Daten zu beginnen. Dafür klicken Sie auf die Startschaltfläche ("Play") in der Toolbar über der Transformationsbeschreibung.

Anlegen einer neuen Transformation
==================================

Starten Sie GeoKettle über die Workbench auf die gleiche Art und Weise, wie Sie es beim Laden von Transformationen gemacht haben (siehe vorheriger Abschnitt).

Legen sie eine neue Transformation über :menuselection:`File --> New --> Transformation` an. Sie können die Transformation unter einem anderen Namen speichern, indem Sie über das Menü :menuselection:`File --> Save as...` wählen.

Wie im folgenden Bild dargestellt, sind alle Transformations-Schritte über Kategorien im linken Teil der Anwendung aufgelistet. Expandieren Sie die Kategorien, um alle darin enthaltenen Schritte einsehen zu können.

  .. image:: ../../images/screenshots/800x600/geokettle_your_transformation.png

Ziehen Sie per Drag&Drop aus dem **Steps** Bereich einen Schritt in Ihre Transformation im **transformation** Bereich im rechtenTeil der Anwendung. Sie können die Bearbeitung des hinzugefügten Schrittes starten, indem Sie per Doppelklick mit der Maustaste auf den Schritt klicken.

**Sprünge (Hops)**

Ein Sprung definiert den Datenfluss zwischen zwei Schritten und wird als Pfeil dargestellt. Wie in der folgenden Darstellung zu sehen bedeutet die Verbindung zwischen **Table input** und **Add sequence**, dass die resultierende Ausgabe aus **Table input** als Parameter in **Add sequence** für die weitere Verarbeitung verwendet werden.

  .. image:: ../../images/screenshots/800x600/geokettle_hop.png
    :scale: 60 %

Ein neuer Sprung wird auf einem Schritt über die rechte Maustaste :menueselection:`New hop` angelegt. Alternativ können Sie bei gedrücker :kbd:`Ctrl` Taste zwei Schritte einer Transformation wählen, um einen neuen Sprung zu definieren.
 
Ein Sprung kann jederzeit per Doppelklick auf einem Sprung oder mit der rechten Maustaste :menueselection:`Edit hop` auf einem ausgewählten Sprung geändert werden.

**Einrichten der Transformation**

Die meisten Schritte in einem Transformationsprozess erfordern benutzerspezifische Parameter, damit sie verwendbar sind. Klicken Sie per Doppelklick auf jden der Schritte, um die erforderlichen Parameter einzusehen und anzupassen.

**Ausführen einer Transformation**

Beim Ausführen von Transformationen erscheint ein weiteres Fenster unterhalb des Bereiches, wo die Transformationen definert werden. Das Fenster **Execution Results** enthält alle Informationen über den Datenfluss zum jeweilig  ausgeführten Schritt der Transformation.

Der Tab **Step Metrics** (siehe folgende Abbildung) wird initial angezeigt. Hier können Sie allgemeine Informationen zum Datenfluss der Transformation selbst einsehen, z.B. wie viele Zeilen bei jedem Schritt gelesen und geschrieben werden. Die Spalte **Active** informiert Sie darüber, ob ein Schritt bereits gestartet ist, noch läuft bwz. beendet oder abgebrochen wurde. Sind Schritte gestartet, wird in der Spalte **Time** die verbleibende Zeit angezeigt. Zusätzlich zeigt Ihnen die Spalte **Speed** die durchschnittliche Geschwindigkeit eines Schrittes in Zeilen pro Sekunde an.

  .. image:: ../../images/screenshots/1024x768/geokettle_running_transformation.png

**Vorschau einer Transformation**

Der Versuch, eine Transformation auszuführen kann zu Fehlern führen, die im Bereich **Execution Results** angezeigt werden. Bitte prüfen Sie die Einträge im Tab **Logging**. Hier sind hilfreiche Informationen zur Quelle und den Grund des Fehlers zu finden. Passen Sie die Parameter des entsprechenden Schrittes an und starten Sie die Transformation erneut.

  .. image:: ../../images/screenshots/1024x768/geokettle_transformation_fail.png

To help in finding the source of an error, you can also preview the results of a transformation from another step earlier in the workflow. To do so, right click on the step, and select **Preview** in the popup menu that appears. This way, you can see in a tabular and cartographic way what the data looks like at this point in the overall process without executing the whole transformation.

Things to Try
=============

Here are some additional challenges for you to try:

#. Explore the diversity of all the steps that GeoKettle provides
#. Try the GeoKettle debugger in order to debug a faulty transformation
#. Try to build a transformation with your own data

What Next?
==========

Take a look at the GeoKettle user and developer documentation and tutorials available on the `wiki <http://wiki.spatialytics.org>`_ of the project. Do not hesitate also to ask for help on the Spatialytics `forum <http://www.spatialytics.com/forum>`_.
