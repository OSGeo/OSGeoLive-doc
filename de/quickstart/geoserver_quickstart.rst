:Author: Ian Turton
:Author: Frank Gasdorf 
:Version: osgeo-live5.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Thanks: geoserver-user list

.. |GS| replace:: GeoServer
.. |UG| replace:: uDig 

.. image:: ../../images/project_logos/logo-GeoServer.png
  :alt: project logo
  :align: right

********************************************************************************
GeoServer Quickstart 
********************************************************************************

GeoServer ist ein WebServer, der es ermöglicht Karten und Daten verschiedener Formate Standardanwendungen wie einem Web Browser und Desktop GIS Anwendungen bereit zu stellen.

Dieser Quickstart beschreibt, wie man:

  * Vektor und Rasterdaten einem |GS| hinzufügt,
  * Farben für einen Stil anwendet, der sich auf die Darstellung von Kartenobjekten auswirkt,
  * veröffentlichte Daten in einer einfachen Webbasierten Karte testet und
  * Karten in anderen Applikationen darstellt und welche Applikationen hierfür verwendet werden können

Start |GS|
================================================================================

#. Klicken Sie auf das Icon "Start GeoServer" 
#. Die Applikation wird einen kurzen Augenblick benötigen, um vollständig gestartet zu sein
#. Öffnen Sie den Browser und geben Sie die URL http://localhost:8082/geoserver/web um zur Startseite der |GS| Instanz

.. image:: ../../images/screenshots/800x600/geoserver-login.png
    :scale: 70 %

Erste Oberflächen
================================================================================

Öffnen Sie erstmalig die |GS| Startseite, werden sie die Ansicht wie oben zu Gesicht bekommen. 
Um den |GS| administrieren zu können, müssen Sie sich anmelden mit den Benutzer `admin` und dem Passwort `geoserver`. 
Im Anschluss daran sehen Sie die *admin page*

.. image:: ../../images/screenshots/800x600/geoserver-welcome.png
    :scale: 70 %

Über den Link zur Layer-Vorschau (**Layer Preview**) innerhalb des *Data* Bereiches im linken Menübaum 
ermöglicht es Ihnen, die Layer des GeoServers anzusehen.

.. image:: ../../images/screenshots/800x600/geoserver-layerpreview.png
    :scale: 70 %

Scrollen Sie die Seite soweit herunter, dass eine Zeile mit **tiger-ny** sehen und klicken Sie auf 
den **OpenLayers** Link. Es öffnet sich eine neue Seite, in der Sie ein Kartenfenster mit Inhalt des Layers sehen.

.. image:: ../../images/screenshots/800x600/geoserver-preview.png
    :scale: 70 %
    
Sie haben in diesem Kartenfenster drei Möglichkeiten, Kartenausschnitte einzustellen:

        * im linken Bereich über die Navigationsleiste können Sie mit einem Klick auf `+` den Ausschnitt verkleinern und somit mehr Details sehen. Mit einem Klick unterhalb des Schiebereglers können Sie den Ausschnitt mit `-` vergrößern um weniger Details zu sehen und somit eine Übersicht zu erhalten. Sie können auch den Schieberegler selbst nutzen, um den Detalierungsgrad festzulegen.

        * Über das Scrollrad der Maus, sofern sie eine Scrollmaus nutzen, können Sie beim Drehen nach oben hineinzoomen und beim Drehen nach unten herauszoomen.

        * Bei gedrückter :kbd:`Shift` Taste können Sie mit der Maus ein Rechteck aufziehen, um einen Bereich anzeigen zu lassen.

Experimentieren Sie mit dieser Vorschau und testen Sie auch die anderen Daten. Sobald Sie einen Eindruck gewonnen haben, wie es sich anfühlt, Daten anzusehen, können Sie beginnen, selbst welche einzubinden und zu veröffentlichen.

Daten einbinden
================================================================================

.. note::
    Sie werden nicht in der Lage sei, die folgenden Schritte durchzuführen, wenn 
    Sie ein **read only** Dateisystem nutzen, so bei der DVD. Für diesen Fall sollten 
    Sie entweder |GS| von der DVD auf das Dateisystem installieren oder ein USB Stick 
    basiertes System nutzen.
	
In diesem Beispiel werden wir die :doc:`Natural Earth Datensätze <../overview/naturalearth_overview>` nutzen, die auf der Live-DVD mit enthalten sind (:file:`/usr/local/share/data/natural_earth/`).

Es muss ein **Store** für unsere Daten angelegt werden. Von der |GS| Administrationsseite gehen Sie zu :guilabel:`Stores` und klicken Sie auf :guilabel:`Add new Store`. Folgende Ansicht werden Sie vor sich haben:

.. image:: ../../images/screenshots/800x600/geoserver-newstore.png
    :align: center
    :scale: 70 %
    :alt: Die New Store Seite

Wählen Sie :guilabel:`Directory of spatial files` und sie werden folgendes sehen:

.. image:: ../../images/screenshots/800x600/geoserver-new-vector.png
    :align: center
    :scale: 70 %
    :alt: Ausfüllen der New Store Seite

Geben Sie einen Namen für den Store an - hier wurde *Natural Earth* eingegeben - sowie eine URL
für den Datensatz, in unserem Fall :file:`/usr/local/share/data/natural_earth/`. Sie können die 
:guilabel:`Browse` Schaltfläche nutzen, um ein Verzeichnis auf dem Dateisystem zu finden, falls 
sonstige Daten eingebunden werden sollen. Um den Vorgang abzuschließen, bestätigen Sie mit :guilabel:`Save`.

.. image:: ../../images/screenshots/800x600/geoserver-naturalearth.png
    :align: center 
    :scale: 70 %
    :alt: Der Natural Earth Datastore

Klicken Sie auf :guilabel:`Publish` auf einen der Einträge der nächsten Seite, um das veröffentlichen 
der Layer abzuschließen. Dies wird sie zur *Layers* Seite führen: 

.. image:: ../../images/screenshots/800x600/geoserver-publish.png
    :align: center
    :scale: 70 %
    :alt: Die Layer `Publishing` Seite

Wie Sie beim Scrollen bemerken werden, hat |GS| bereits viele Felder ausgefüllt. 
Wenn Sie den Punkt :guilabel:`Coordinate Reference System` erreichen, werden sie 
feststellen, dass unter *Native SRS* `UNKNOWN` zu finden ist. Sie werden
in der nächsten Box (*declared SRS*) Daten eingeben, um für |GS| sicherzustellen
welches Koordinatensystem für die Daten zugrundeliegt. Geben Sie bitte epsg:4326 in das Eingabefeld ein. 

.. note:: Um weitere Informationen zu EPSG Codes finden sie unter `http://prj2epsg.org/search <http://prj2epsg.org/search>`_

Im Anschluss daran klicken Sie auf :guilabel:`Compute from data` and :guilabel:`Compute from native bounds` um die begrenzenden 
Rechtecke der Datensätze zu berechnen. Abschließend auch hier mit :guilabel:`Save` Ihre Änderungen bestätigen. Sie haben nun 
erstmalig Daten über einen Layer veröffentlicht.

.. note::
    Sollten Sie sich den Layer über die Voransicht ansehen und nicht mit der Darstellung der Daten zufrieden sein, liegt dies daran, 
    dass ein Standard-Stil verwendet worden ist. Wie der Stil eines Layers angepasst wird, wird im folgenden Kapitel beschrieben.

Sie können die Prozedur mit weiteren Layern vollziehen, um auch diese zu veröffentlichen. Dabei haben die Möglichkeit über die Layer 
Seite eine neue Ressource mit :guilabel:`Add a new resource` hinzuzufügen. Auf der folgenden Seite wählen Sie den bereits angelegten 
*Natural Earth* Store in der Auswahlliste aus, um diesem die neue Ressource zuzuordnen. 

Anpassen der Stile
--------------------------------------------------------------------------------
Um den Stil eines Kartenlayers anzupassen, wird im |GS| der OGC Standard :doc:`Styled Layer Description (SLD) <../standards/sld_overview>` verwendet. Stile werden über Regeln (*Rules*) in XML definiert und steuern somit die Repräsentation der Daten über verschiedene Ausgestaltungen (*Symbolizers*).

Sie können eine SLD Datei mit einem einfachen Texteditor erzeugen, es ist jedoch empfehlenswert, einen Grafischen Editor zu nutzen. Es gibt hierfür viele Möglichkeiten, an dieser Stelle wird auf |UG| eingegangen, weil hier direkt Shapefiles per Drag&Drop eingebunden werden können und eine Oberfläche bereitgestellt wird, die es dem Anwender erlaubt auch XML direkt eingeben zu können.

|UG| verwenden, um einen einfachen Stil zu erzeugen
```````````````````````````````````````````````````

.. note::
   Weitere Informationen, wie uDig zu verwenden ist, können Sie unter :doc:`uDig Quickstart <../quickstart/udig_quickstart>` finden. 

Sobald Sie |UG| gestartet haben, können Sie per Drag&Drop die zwei folgenden Shapefiles aus dem Verzeichnis :file:`~/data/natural_earth/physical` hinzufügen, |UG| setzt den Stil automatisch, um die Daten anzeigen zu können:
  * 10m_land
  * 10m_ocean

.. image:: ../../images/screenshots/800x600/geoserver-udig_startup.png
   :align: center
   :scale: 70 %
   :alt: Standard Styling in uDig

Nun ist Orange nicht die bevorzugte Farbe, um Ozeane darzustellen, auch wenn man mit grün dargestellten Ländern leben 
könnte. Zum Ändern eines Stils des aktuell ausgewählten Layers in der :ref:`Liste der Layer <Layer_list_de>` 
klicken Sie auf den Style Button - dieser sieht aus wie eine Farbpalatte - in der Toolbar.

.. _Layer_list_de:
.. image:: ../../images/screenshots/800x600/geoserver-layer-chooser.png
   :align: center
   :scale: 70 %
   :alt: Die Listenansicht der Layer

Es wird ein :ref:`Stil Dialog <Style_Pane_de>` geöffnet, Sie können einfach die Farbe der Flächen in dem Tab `Fill` auf 
ein zusagendes Blau abändern. Zusätzlich wurde bei dem Beispiel der Ozeane die Deckkraft (opacity) auf 100% gesetzt. 
Ebenso wurde die gleiche Farbe für die begrenzenden Linien (im Tab `Border`) festgelegt.

.. _Style_Pane_de:
.. image:: ../../images/screenshots/800x600/geoserver-style-pane.png
   :align: center
   :scale: 70 %
   :alt: Der Stil Dialog

.. tip:: 
     Klicken Sie in Stil Dialog die Schaltfläche :guilabel:`Apply`, um die aktuellen Anpassungen auf die Karte 
     anzuwenden, ohne den Dialog zu schließen.

Haben Sie einen Stil zu Ihrer Zufriedenheit konfiguriert, können Sie diesen Dialg mit 
``OK`` verlassen, |UG| wird die Änderungen anwenden und die Karte neu darstellen.

.. image:: ../../images/screenshots/800x600/geoserver-blue-ocean.png
   :align: center
   :scale: 70 %
   :alt: Blaue Ozeane

Abschließend möchten wir die Farbe für die Landflächen abändern. Gehen Sie so wie eben vor, indem Sie zuvor den Layer 
der Länder auswählen. Gefällt Ihnen keine der Standardfarben, können Sie eine benutzerdefinierte Farben (``define custom colors``) 
selbst festlegen.

.. image:: ../../images/screenshots/800x600/geoserver-custom-colour.png
   :align: center
   :scale: 70 %
   :alt: Definition der Farbe für Landflächen

Dies ergibt einen angenehmere anzusehende Karte.

.. image:: ../../images/screenshots/800x600/geoserver-basic-world.png
   :align: center
   :scale: 70 %
   :alt: Basis Weltkarte

Stil in |GS| hinzufügen
```````````````````````

Jetzt können die definierten Stile in |GS| transferiert werden. Im Stil Dialog von |UG|
ist eine Schaltfläche für den Export zu finden. Hierüber kann der Stil in einer SLD 
Datei gespeichert werden. Sobald Sie die Dateien für die beiden Layern gespeichet haben, können 
Sie in die Administrator-Seite vom |GS| wechseln und im linken Menü ``Styles``  klicken. Wählen
Sie im Anschluss daran den Link ``Add New Style``, auf der daraufhin folgenden Seite scrollen Sie 
nach ganz unten, eine Schaltfläche für den Import ist hier zu finden.
Importieren Sie die zuvor in |UG| exportierten Dateien, der Inhalt wird jeweils im Editorbereich 
angezeigt werden. Sie können den Stil validieren. Sollte der Stil nicht korrekt sein, wird eine 
entsprechende Fehlermeldung erscheinen und der betroffene Bereich der Datei markiert. Sollten 
Fehler beim Validieren auftreten, können Sie diese gefahrlos ignorieren oder den betroffenen Bereich 
entfernen, sofern er nicht relevant ist.

.. image:: ../../images/screenshots/800x600/geoserver-add-style.png
   :align: center
   :scale: 70 %
   :alt: Stil zu GeoServer hinzufügen


Stil auf einen Layer anwenden
--------------------------------------------------------------------------------

Klicken Sie im linken Menü der Administrationsoberfläche von |GS| 
auf den Link :guilabel:`Layers`. Wählen Sie in der Liste z.B. den 
Layer *10m_land*, auf folgenden Seite gehen Sie auf den Tab 
:guilabel:`Publishing` und ändern Sie in der Auswahlbox :guilabel:`Default Style`
den Stil auf den zuvor hinzugefügten. Gehen Sie nun auf die *Layer Preview* 
Seite und prüfen Sie, ob dieser gut aussieht.

.. note::
    Sie können für alle Natural Earth Datensätze beispielhafte Stil-Definitionen unter :file:`/usr/local/share/geoserver` finden. 

.. TBD (Benötigt mehr Speicher)
    Hinzufügen von Rasterdaten
    ==========================

    In the Natural Earth folder is a folder :file:`HYP_50M_SR_W` which
    contains a raster image. You can serve this up in |GS| directly by
    going to the stores page and selecting :guilabel:`New Stores->World
    Image` and type
    *file:/home/user/data/natural_earth/HYP_50M_SR_W/HYP_50M_SR_W.tif*
    into the :guilabel:`URL` box.

    .. image:: ../../images/screenshots/800x600/geoserver-raster.png
        :align: center
        :scale: 70 %
        :alt: Adding a Raster

    The click :guilabel:`Save` this will take you to the *New Layers
    Chooser* then click publish and :guilabel:`Save` to finish adding the
    raster. If you go to the Layers Preview page you
    can see the new image. 

Clients für WMS Layer
================================================================================

Eine große Anzahl von Clients unterstützt den :doc:`WMS Standard <../standards/wms_overview>` 
und kann die vom |GS| veröffentlichen Daten verarbeiten.
Hier eine kleine Auswahl:

    * :doc:`uDig <../overview/udig_overview>`
    * :doc:`OpenLayers <../overview/openlayers_overview>`
    * :doc:`Atlas Styler <../overview/atlasstyler_overview>` 
    * :doc:`MapBender <../overview/mapbender_overview>`
