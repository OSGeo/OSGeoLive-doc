:Author: OSGeo-Live
:Author: Raf Roset
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-TinyOWS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.tinyows.org/

********************************************************************************
Guia ràpida de TinyOWS
********************************************************************************

TinyOWS és un Transactional Web Feature Service (WFS-T) d'alt rendiment, que
alhora és lleuger i fàcil d'implementar, emprant una interfície CGI o FastCGI i
usant :doc:`PostGIS <../overview/postgis_overview>` per a l'emmagatzematge de
dades.

Aquesta guia ràpida descriu com:

  * mostrar una capa WFS en un projecte de QGIS
  * editar una capa WFS emprant WFS-T des de QGIS

Mostrar una capa WFS en un projecte de QGIS
================================================================================

#. Clic :menuselection:`Desktop --> Desktop GIS --> Quantum GIS`.

#. Clic :menuselection:`Layer --> Add PostGIS Layer...`.

   * Primer mostrem la capa PostGIS original

#. Prémer :guilabel:`New`.

#. Posar **pgrouting** com a nom de la Connexió i de la base de dades

#. Prémer :guilabel:`OK`.

#. Prémer :guilabel:`Connect`.

#. Escollir **ways** a la llista de la taula

#. Prémer :guilabel:`Add`.

#. Zoom in

#. Escollir :menuselection:`Plugins -> Manage Plugins -> WFS Plugin -> OK`

   * Habilita el plugin WFS Layer.

#. Clic :menuselection:`Layer --> Add WFS Layer...`.

   * Ara afegim una capa WFS basada en la mateixa taula

#. Prémer :guilabel:`New`.

#. Posar **tinyows** com a nom i **http://localhost/cgi-bin/tinyows** com URL

#. Prémer :guilabel:`OK`.

#. Prémer :guilabel:`Connect`.

#. Escollilr **ows:ways** a la llista de capes

#. Marcar :guilabel:`Only request features overlapping the current view extent`.

#. Prémer :guilabel:`OK`.

   * Ara es mostra la capa WFS:

.. image:: ../../images/screenshots/800x600/tinyows_wfs_layer.png
  :scale: 80 %

Editar la capa amb WFS-T
================================================================================

#. Clic :menuselection:`Layer --> Toggle Editing`.

#. Clic :menuselection:`Edit --> Node Tool`.

#. Mou un vértex (creu) a una posició diferent

#. Clic :menuselection:`Layer --> Save edits`.

#. Amaga la capa desmarcant **tows:ways** a la llista de capes

   * Ara hauries de veure el vial editat en un color diferent, tret directament
     de PostGIS.


I ara què?
================================================================================

Per obtenir més informació sobre TinyOWS, un punt de partida és la `User
Documentation`_ a la pàgina d'inici de TinyOWS.

.. _`User Documentation`: http://tinyows.org/trac/wiki/UserDocumentation

