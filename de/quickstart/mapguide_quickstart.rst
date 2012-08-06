:Author: Trevor Wekel
:Author: Frank Gasdorf
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-MapGuideOS.png
  :scale: 100 %
  :alt: project logo
  :align: right 

MapGuide Quick Start 
================================================================================

Dieser Quickstart Guide bescrheibt, wie Sie:

* MapGuide Einrichten und Starten 
* den Stil für die Darstellung von räumlichen Daten mit Maestro anpassen

MapGuide Einrichten und Starten
--------------------------------------------------------------------------------

.. comment: 1. Go to Desktop->Server, click icon Start MapGuide. This will start both MapGuide server and MapGuide Web server

.. comment: .. image:: ../../images/screenshots/1024x768/mapguide_desktopIcons.png
.. comment:   :scale: 50 %
.. comment:   :alt: mapguide desktop icons
.. comment:   :align: center 

1. Installieren Sie MapGuide

.. note:: Aufgrund von Platzgründen auf der DVD ist MapGuide nicht vorinstalliert.

2. Öffnen Sie einen Browser und geben Sie folgende Adresse ein, um die Beispiel-Anwendung zu sehen: 
   http://localhost:8008/mapguide/phpviewersample/ajaxtiledviewersample.php 

.. image:: ../../images/screenshots/1024x768/mapguide_viewer.png
  :scale: 50 %
  :alt: mapguide desktop icons
  :align: center

MapGuide Maestro
--------------------------------------------------------------------------------

1. Starten Sie Maestro über :menuselection:`Desktop --> Server --> MapGuide Maestro`. Es wird eine 
   Login-Dialog von Maestro  angezeigt, wie er in dem folgenden Screenshot zu sehen ist. Melden Sie 
   sich unter http://localhost:8008/mapguide/mapagent/mapagent.fcgi mit dem Benutzer "Administrator" 
   und dem Kennwort "admin" an.

.. image:: ../../images/screenshots/1024x768/mapguide_maestroLogin.png
  :scale: 50%
  :alt: screenshot
  :align: center
 
2. Klicken Sie auf :guilabel:`Ok`, um zur Anwendung zu gelangen.

.. image:: ../../images/screenshots/1024x768/mapguide_maestroMain.png
   :scale: 50%
   :alt: mapguide maestro main GUI
   :align: center

3. Expandieren Sie die Baumansicht auf der linken Seite und navigieren Sie zu 
   :menuselection:`Samples --> Sheboygan --> Layers`. Doppelklick auf den Eintrag **Buildings", der 
   Layer-Editor wird auf der rechten Seite geöffnet.

.. image:: ../../images/screenshots/1024x768/mapguide_maestroLayerFeatures.png
   :scale: 50%
   :alt: mapguide maestro layer features
   :align: center

4. Blättern Sie im rechten Fenster, bis der Layer-Stil angezeigt wird. In der Spalte Featurestyle 
   klicken Sie "...", um den Style-Editor zu öffnen.

.. image:: ../../images/screenshots/1024x768/mapguide_maestroLayerStyle.png
   :scale: 50%
   :alt: mapguide maestro layer stype panel
   :align: center

.. image:: ../../images/screenshots/1024x768/mapguide_maestroStyleEditor.png
   :scale: 50%
   :alt: mapguide maestro color chooser
   :align: center

5. Aus der Auswahlliste für die Vordergrundfarbe wählen Sie Green aus, klicken daraufhin :guilabel:`Ok`, 
   um den Stil-Editor wieder zu beenden. Im Hauptmenü von Maestro klicken Sie den Save-Button, um die 
   Änderung zu speichern.

.. image:: ../../images/screenshots/1024x768/mapguide_maestroSaveIcon.png
   :scale: 50%
   :alt: mapguide maestro Save icon 
   :align: center

6. Um die Auswirkung der Änderung zu sehen, öffen Sie einen Browser und geben die Adresse 
   http://localhost:8008/mapguide/phpviewersample/ajaxtiledviewersample.php ein oder klicken Sie den 
   Voransicht-Button in der Toolbar der Maestro Anwendung. Im Browser Zoomen Sie soweit herein, dass 
   Sie die Gebäude sehen können. Die Gebäude sollten nun in Grün dargestellt werden.


.. image:: ../../images/screenshots/1024x768/mapguide_buildingColorBeforeChanging.png
   :scale: 50%
   :alt: Building color is grey 
   :align: center

.. image:: ../../images/screenshots/1024x768/mapguide_buildingColorAfterChanging.png
   :scale: 50%
   :alt: Building color is green 
   :align: center

