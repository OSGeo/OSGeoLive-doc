:Author: Simon Cropper (translated by Georg Sedlmeir, Ruth Schönbuchner)
:Version: OSGeo-Live DVD, Version 4.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-gvSIG.png
   :scale: 50 
   :align: right

.. EDITS REQUIRED BY THE LiveDVD TEAM
.. B. Path to the vector and raster data needs to be updated to reflect where they are contained on the Live DVD

********************************************************************************
gvSIG Quickstart 
********************************************************************************

Projektbeschreibung
================================================================================

“gvSIG ist ein Geographisches Informationssystem (GIS), das heißt, eine Desktopanwendung zum Erfassen, Speichern, Bearbeiten, Analysieren und Veröffentlichen jeglicher Art räumlich referenzierter geographischer Informationen und zum Lösen komplexer Fragestellungen in Verwaltung und Planung. gvSIG ist für seine benutzerfreundliche Bedienoberfläche bekannt, die den Zugriff auf die meisten gängigen Datenformate, sowohl auf Vektor- als auch auf Rasterbasis, ermöglicht. Es bietet eine breite Auswahl an Werkzeugen für die Bearbeitung geographischer Informationen (Abfragewerkzeuge, Layouterstellung, Geoprocessing, Netzwerk, etc.), und ist damit das ideale Werkzeug für alle Anwender aus Fachgebieten in denen raumbezogene Daten eine Rolle spielen.
`gvSIG <http://www.gvsig.org/web/projects/gvsig-desktop/description2/view?set_language=en>`_ 2011

Dieses Dokument zeigt wie man...
================================================================================

    * gvSIG öffnet und eine Ansicht erstellt;
    * Die Projektion für die Ansicht festlegt ;
    * Raster- und Vektordaten zu einer Ansicht hinzufügt;
    * In einer Ansicht navigiert;
    * Die Anzeige der Ebenen in einem View ändert;
    * Städte auswählt die sich in einer bestimmten Region befinden und diese           in eine neue Datei exportiert;
    * Eine Karte mit einem Gitternetz erstellt; und
    * Das aktuelle Projekt speichert oder gvSIG beendet.


gvSIG öffnen und eine Ansicht erstellen
================================================================================

Wählen Sie gvSIG im entsprechenden Anwendungsmenü oder klicken Sie auf das entsprechende Symbol. Die Anwendung benötigt etwa eine Minute um zu starten.

   #. In der Standardeinstellung startet gvSIG mit einem leeren Projekt sowie einer leeren ausgewählten Ansicht.
   #. Klicken Sie auf den Button [Neu] um eine Ansicht zu erstellen.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_001.png
   :scale: 55 

Die Projektion für die Ansicht festlegen
================================================================================

Öffnen sie den Dialog Eigenschaften der Ansicht
--------------------------------------------------------------------------------

   #. Wählen Sie die neu erstellte Ansicht. In der Standardeinstellung hat sie den Namen Ohne Titel-0 - 0 aber es kann auch Ohne Titel-1 - 1 sein falls sie zuvor bereits eine Ansicht erstellt und wieder gelöscht haben.
   #. Klicken Sie den Button [Eigenschaften] an um den Dialog Eigenschaften Ansicht zu öffnen
   #. Klicken Sie auf den Button [...] rechts vom Eintrag "Aktuelle Projektion". Damit wird der Dialog **Neues Raumbezugssystem (CRS)** geöffnet.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_002.png
   :scale: 55 

Definieren Sie das Raumbezugssystem
--------------------------------------------------------------------------------

   #. Verwenden Sie die Dropdownliste für "Typ", und wählen Sie EPSG.
   #. Geben Sie den EPSG code für das Koordinatensystem ein. In diesem Beispiel verwenden wir EPSG=4326, dies ist die WGS84 2D Geographic Projection. Klicken Sie dann auf den Button [Suchen]. Das gesuchte CRS erscheint in der Tabelle unterhalb des Suchfeldes.
   #. Wählen Sie [OK] um zum Dialog **Eigenschaften Ansicht** zurückzukehren.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_003.png
   :scale: 55 

Die Eigenschaften der Ansicht speichern
--------------------------------------------------------------------------------

   #. Beachten Sie dass der EPSG Code nun 4326 lautet und dass die Karteneinheiten nun in Grad angegeben sind.
   #. Klicken Sie auf [OK] um zum **Projektverwalter** zurückzukehren.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_004.png
   :scale: 55 

Öffnen Sie die Ansicht
--------------------------------------------------------------------------------
   
   #. Wählen Sie die neu erstellte Ansicht aus.
   #. Klicken Sie auf den Buttton [Öffnen] um die Ansicht zu öffnen.
   #. Das Ansichtsfenster ist in drei Bereiche unterteilt.
   #. Der Abschnitt links oben enthält eine List von Vektor-oder Rasterebenen die in der Ansicht verwendet werden (eine Art Inhaltsverzeichnis)
   #. Der linke untere Abschnitt zeigt -für Vektordateien- die Position der dargestellen Ansicht innerhalb der Ausdehnung der gesamten Datei
   #. Der rechte Bereich ist der Hauptanzeigebereich in dem Raster- und Vektordaten dargestellt werden.
   #. Wählen Sie das Symbol ‘Maxieren’ um den ganzen Bildschirm für die Darstellung der Ansicht zu nutzen.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_005.png
   :scale: 55 

Die Ansicht - Raster- und Vektordaten hinzufügen
================================================================================

Öffnen Sie den Dialog "Layer hinzufügen"
--------------------------------------------------------------------------------
   
   #. Klicken Sie auf das Symbol "Layer hinzufügen" in der Hauptwerkzeugleiste um den **Layer Hinzufügen** Dialog zu öffnen.
   #. Wählen Sie [Hinzufügen] im Dialog **Layer Hinzufügen**. In der Standardeinstellung heißt der erste Reiter Datei, somit erscheint der Dialog **Öffnen**.
   #. Folgen Sie dem Verzeichnisbaum bis zum Verzeichnis ``/usr/local/share/data/natural earth/HYP_50M_SR_W``


.. image:: ../../images/screenshots/1024x768/gvsig_qs_006.png
   :scale: 55 

Eine Rasterdatei auswählen
--------------------------------------------------------------------------------
   
   #. Wählen Sie *gvSIG Raster Driver* aus der Dropdownliste. in der Standardeinstellung ist der Treiber für Shapefiles selektiert, das Verzeichnis kann deshalb leer erscheinen.
   #. Wählen Sie ``HYP_50M_SR_W.tif``.
   #. Klicken Sie auf [OK] um zum Dialog **Layer hinzufügen** zurückzukehren.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_007.png
   :scale: 55 

Vektordateien auswählen
--------------------------------------------------------------------------------
  
   #. Der Dialog **Layer hinzufügen** enthält nun als Eintrag die Rasterdatei.
   #. Klicken Sie auf den Button [Hinzufügen] um einige Vektordateien hinzuzufügen. Der Dialog **Öffnen** erscheint.
   #. Navigieren Sie im Verzeichnisbaum eine Ebene nach oben um ins Verzeichnis ``/usr/local/share/data/natural_earth`` zu wechseln.
   #. Wählen Sie *gvSIG shp driver* aus der Dropdown-Liste.
   #. Wählen Sie die Shape-Dateien ``10m_admin_1_states_provinces.shp``, 10m_populated_places_simple.shp und ``10m_rivers_lake_centerlines.shp`` aus der Liste. Halten Sie die Contol-Taste gedrückt um mehrere Dateien gleichzeitig auszuwählen.
   #. Klicken Sie auf den Button [OK] um zum Dialog **Layer hinzufügen** zurückzukehren.
   #. Klicken Sie auf den Button [OK] im Dialog **Layer hinzufügen** um zurück zur Ansicht zu gelangen.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_008.png
   :scale: 55 

Die Ansicht- grundlegende Navigation
================================================================================

In eine Region zoomen
--------------------------------------------------------------------------------

Zurück in der Hauptansicht sehen sie dass die Vektordateien nun der Rasterdatei überlagert sind. Die Farben in diesem Screenshot können sich je nach Benutzereinstllungen von denen auf Ihrem Bildschirm unterscheiden.
       
   #. In der Standardeinstellung ist das Werkzeug Zoom (+) in der Haupt-Werkzeugleiste aktiviert.
   #. Verwenden Sie die Maus um ein Auswahlrechteck um Südost-Australien zu zeichnen. Klicken Sie dazu in die linke obere Ecke in der die Auswahl beginnen soll, halten Sie die linke Maustaste gedrückt und ziehen Sie so die rechte untere Ecke des Rechtecks bis zur entsprechenden Position, um den gewünschten Bereich auszuwählen. Lassen sie dann die linke Maustaste los.
 

.. image:: ../../images/screenshots/1024x768/gvsig_qs_009.png
   :scale: 55 

Feineinstellung der Navigation
--------------------------------------------------------------------------------
   
Die Ansicht ändert sich automatisch um die Inhalte innerhalb des Auswahl.

   #. Die Breite der Layerliste kann mit der Maus angepasst werden um auch lange Dateinamen anzuzeigen.
   #. Passen sie Darstellung der Ansicht mittels der hervorgehobenen Werkzeuge an, so dass Victoria im Zentrum der Ansicht dargestellt wird.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_010.png
   :scale: 55 

Die Ansicht - Das Erscheinungsbild von Layern ändern
================================================================================

Ein Polygon transparent darstellen
--------------------------------------------------------------------------------
   
   #. Selektieren Sie den Layer ``10m_admin_1_states_provinces.shp`` mit der linken Maustaste und klicken Sie noch einmal mit der rechten Maustaste darauf.
   #. Selektieren Sie das Untermenü *Eigenschaften*.
   #. Der Dialog **Layereigenschaften erscheint**.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_011.png
   :scale: 55 

Die Darstellungssymbole für einen Vekorlayer ändern
--------------------------------------------------------------------------------
   
   #. Wählen Sie den Reiter *Symbole* im Dialog **Layereigenschaften**.
   #. Klicken Sie auf [Symbol wählen] um den **Symbol-Selektor** zu öffnen.
   #. Entfernen Sie den Haken von der Box *Farbe der Füllung* um die Polygone transparent darzustellen.
   #. Klicken Sie auf den Button [OK] um zum Dialog **Layereigenschaften** zurückzukehren.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_012.png
   :scale: 55 

Die Beschriftung eines Vektor-Layers ändern
--------------------------------------------------------------------------------
   
   #. Wählen Sie den Reiter *Beschriftung* im Dialog **Layereigenschaften**.
   #. Ändern Sie die Texteigenschaften so wie im Beispiel dargestellt, klicken Sie dann auf den Button [Anwenden].


.. image:: ../../images/screenshots/1024x768/gvsig_qs_013.png
   :scale: 55 

Das Ergebnis
--------------------------------------------------------------------------------
   
Beachten Sie dass dies eine sehr einfache Ansicht ist, die nur jeweils eine Punkt-, Linien- und Polygon-Vektordatei zeigt die einer Rasterdatei überlagert sind. Genau so einfach wäre es, ein Luftbild oder ein Digitales Geländemodell als Hintergrund für Vektordaten zu verwenden, oder andere Vektordaten in unterschiedlichen Formaten anzuzeigen.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_014.png
   :scale: 55 

Eine Übung für Anwender - Ändern sie die Symbole und die Beschriftung der Punkt- und Linienlayer
------------------------------------------------------------------------------------------------
   
Ändern Sie Symbole, Farbe and Beschriftung für Flüsse und Städte so dass sie aussehen wie im folgenden Screenshot. Gehen Sie dazu den bisher beschriebenen Schritten entsprechend vor.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_015.png
   :scale: 55 

Einfache Analyse - selektieren Sie Städte in einer Region
================================================================================

Die Region auswählen
--------------------------------------------------------------------------------
   
   #. Selektieren sie den Layer ``10m_admin_1_states_provinces.shp`` mittels der linken Maustaste.
   #. Drücken Sie den Button ‘Auswahl durch Klick’ in der Haupt-Werkzeugleiste.
   #. Klicken Sie in das Polygon welches den State of Victoria darstellt. Das Polygon wird gelb oder nimmt, je nach Anwendereinstellungen, eine andere Farbe an.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_016.png
   :scale: 55 

Die Städte innerhalb einer Region auswählen
--------------------------------------------------------------------------------
   
   #. Selektieren Sie den Layer ``10m_populated_places_simple.shp`` mittels der linken Maustaste.
   #. Wählen Sie ``Ansicht > Elemente Auswählen > Auswahl durch Layer`` um den Dialog **Auswahl durch Layer** zu öffnen.
   #. Ändern Sie die beiden Auswahlkriterien mittels der Dropdown-Felder auf der linken Seite des Dialogs **Auswahl durch Layer**. Klicken Sie auf den Button [Neuer Datensatz] um Städte innerhalb des gewählten Polygons zu selektieren.
   #. Wählen Sie den Button [Abbrechen] im Dialog **Auswahl durch Layer** um zur Ansicht zurück zu gelangen.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_017.png
   :scale: 55 

Heben sie die Auswahl für das Polygon auf um das Ergebnis zu sehen
--------------------------------------------------------------------------------
   
   #. Wählen Sie den Layer ``10m_admin_1_states_provinces.shp`` mit der linken Maustaste.
   #. Klicken Sie auf das Symbol ‘Auswahl aufheben’ in der Haupt-Werkzeugleiste.
   #. Sie sehen dass nur nur Städte innerhalb von Victoria ausgewählt sind.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_018.png
   :scale: 55 

Exportieren Sie die ausgewählten Städte in eine neue Shapedatei
--------------------------------------------------------------------------------
   
   #. Selektieren Sie den Layer ``10m_populated_places_simple.shp`` mittels der linken Maustaste.
   #. Wählen Sie ``Layer > Exportieren nach to... > SHP`` um mit dem Export zu beginnen.
   #. Der Dialog **Exportieren nach...** erscheint. gvSIG erkennt dass nur 26 Elemente selektiert sind und weist Sie darauf hin dass nur ein Teil der Shapedatei exportiert wird. Wählen Sie zum fortfahren den Button [Ja].
   #. Der Dialog **Speichern** öffnet sich. Geben Sie der Datei einem Namen und speichern Sie sie an einem Ort nach Wahl. Klicken Sie zum Fortfahren auf den Button [Speichern]. Beachten Sie dass eine Warnmeldung erscheint falls bereits eine gleichnamige Datei existiert.
   #. Der Dialog **Layer hinzufügen** erscheint. Wählen Sie den Button [Ja] um die neue Shapedatei zur Liste der Layer hinzuzufügen.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_019.png
   :scale: 55 

Nur Städte innerhalb einer Region anzeigen
--------------------------------------------------------------------------------

   #. Zurück in der Ansicht entfernen Sie den Haken vor dem Layer ``10m_populated_places_simple.shp`` in der Layerliste.
   #. Ändern Sie Symbole und Beschriftung des layers ``test.shp`` wie im Screenshot unten dargestellt.
   #. Die Ansicht enthält jetzt nur Städte innerhalb des State of Victoria.
   #. Verwenden Sie das Symbol [Fenster schließen] um zum **Projektverwalter** zurück zu gelangen, damit wir eine Karte aus dieser Ansicht erstellen können.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_020.png
   :scale: 55 
   
Wie man eine Karte erstellt
================================================================================

Erstellen Sie eine neue Karte und öffnen Sie diese
--------------------------------------------------------------------------------

   #. Wählen sie den Dokumenttyp *Karte* im **Projektverwalter**.
   #. Klicken Sie den Button [Neu] um eine Karte zu erstellen.
   #. Selektieren Sie die neu erstellte Karte. In der Standardeinstellung heißt dieseOhne ``Titel - 0``.
   #. Klicken Sie auf den Button [Öffnen].
   #. Eine leere Karte erscheint in einem eigenen Fenster, der Name lautet Karte: ``Ohne Titel - 0``. Beachten Sie dass eine Reihe von Punkten gleichmäßig über das Kartenbild verteilt ist. Man nennt dies Gitter oder Hilfslinien und sie helfen beim Erstellen und Formatieren der Karte indem sie nahe gelegene Punkte einrasten können.
   #. Wählen Sie das Symbol [Fenster maximieren] um den ganzen Bildschirm zur Darstellung zu nutzen.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_021.png
   :scale: 55 

Fügen sie eine Ansicht mit einem Gitternetz ein
--------------------------------------------------------------------------------
   
   #. Klicken Sie auf das Symbol "Ansicht einfügen" in der Haupt-Werkzeugleiste
   #. Erzeugen Sie ein Auswahlrechteck mit dem Umgriff der Karte auf der Seite, indem Sie auf die leere Karte klicken, die Maustaste gedrückt halten und ziehen, bis die gewünschte Größe des Kartenausschnittes erreicht ist. Dadurch wird der Dialog **Eigenschaften Ansichtsrahmen** geöffnet.
   #. Wählen Sie die zuvor erstellte *Ansicht*.
   #. Setzen Sie einen Haken bei der Option *Gitternetz anzeigen* dadurch wird ein Gitternetz erzeugt.
   #. Klicken Sie auf den Button [Konfigurieren] um den Dialog **Eigenschaften Koordinatengitter** zu öffnen.
   #. Im Dialog **Eigenschaften Koordinatengitter** ändern Sie das Intervall für das Gitter auf 1.0, das heißt ein Grad zwischen den Linien für Breitengrade und Längengrade.
   #. Ändern Sie das Format des Gitters (der Übersichtlichkeit halber ist es besser Linien statt Punkte zu wählen).
   #. Vergrößern sie die Schriftgröße auf 14.
   #. Klicken Sie auf den Button [OK] um zum Dialog **Eigenschaften Ansichtsrahmen** zurück zu gelangen, dann drücken Sie [OK] um den Dialog zu schließen und zur Karte zurückzukehren.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_022.png
   :scale: 55 

Was kann man noch zur Karte hinzufügen?
--------------------------------------------------------------------------------
   
   #. Wählen Sie ``Karte > Eigenschaften`` aus dem Hauptmenü um die Dialogbox **Eigenschaften Karte** zu öffnen. Entfernen Sie den Haken von *Gitternetz anzeigen* und klicken Sie auf [OK]. Das Gitternetz sollte nun von der Karte entfernt sein und die Karte sollte so aussehen wie unten dargestellt.
   #. Zusätzliche Elemente wie eine Maßstabsleiste oder ein Richtungspfeil können mit Hilfe der Symbole in der Haupt-Werkzeugleiste oder mit den Untermenüs im Menü Karte hinzugefügt werden.
   #. Die Karte kann gedruckt oder zur weiteren Verwendung in anderen Dokumenten als PDF oder Postscript exportiert werden.
   #. Wählen Sie das Symbol [Fenster schließen] um zum **Projektverwalter** zurück zu gelangen


.. image:: ../../images/screenshots/1024x768/gvsig_qs_023.png
   :scale: 55 

Speichern Ihres Projektes oder Schließen von gvSIG
================================================================================
   
   1. Projekte können zur späteren Bearbeitung mittels der Option ``Datei > Speichern unter...`` gespeichert werden, oder
   2. man kann Projekte schließen indem man die Option ``Datei > Schließen`` auswählt.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_024.png
   :scale: 55 

Was kommt als nächstes...
================================================================================

Deutschsprachige Dokumente und Tutorials finden neben vielen anderen Informationen im deutschen gvSIG wiki `gvSIG `<http://www.webmapping.info/mwgvsig/index.php?title=Hauptseite>`.

Einige Dokumente und Tutorials auf Englisch stehen unter `gvSIG <http://www.gvsig.org/web/docusr/learning/>` zur Verfügung.




