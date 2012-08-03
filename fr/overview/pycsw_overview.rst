:Author: OSGeo-Live
:Author: Tom Kralidis, Angelos Tzotsos
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons

.. image:: ../../images/project_logos/logo-pycsw.png
  :scale: 80 %
  :alt: Logo du projet
  :align: right
  :target: http://pycsw.org/

pycsw
================================================================================

Catalogue de métadonnées
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Pycsw permet aux utilisateurs de publier un catalogue de descriptions de jeux de données (métadonnées) sur le web, en utilisant des interfaces et des formats basés sur des standards, de manière à ce qu'il soit interrogé et mis à jour par des clients de cataloguage. Pycsw est simple à configurer dans un serveur web Apache et peut accéder à des enregistrements de métadonnées stockés comme des fichiers XML dans une base de données.

La métadonnée est la 'donnée sur la donnée', stockant des choses comme la date de création, l'auteur, le titre, la zone d'intérêt, etc, et est habituellement encodée dans des fichiers XML, en suivant les standards internationaux tels que ISO 19115, ISO 19139 et FGDC CSDGM.

Pycsw est une implémentation en `Python`_  du :doc:` standard OGC Catalogue Services for the Web (CSW) <../standards/csw_overview>`. Le standard CSW définit les interfaces communes pour découvrir, naviguer et interroger des métadonnées à propos des données spatiales, des services web et des ressources associées.

Pycsw est Open Source, mis à disposition sous licence MIT, et fonctionne sur toutes les plates-formes majeurs (Windows, Linux, Mac OS X).

.. image:: ../../images/screenshots/1024x768/pycsw_overview.jpg
  :scale: 50 %
  :alt: Logo du projet
  :align: right

Caractéristiques principales
--------------------------------------------------------------------------------

* passe l'ensemble de la suite de tests OGC CITE CSW (103/103)
* implémentation d'INSPIRE Discovery Services 3.0
* implémentation du profil d'application ISO Metadata 1.0.0
* implémentation du profil d'application FGDC CSDGM Application pour CSW 2.0
* support des modèles de métadonnées ISO, Dublin Core, DIF et FGDC
* configuration simple
* capacités transactionnelles (CSW-T)
* configuration de dépôts flexible
* recherche distribuée d'un catalogue fédéré
* validation de schéma XML temps-réel
* architecture de plugins prévue pour être extensible
* très léger (Python + CGI)


Standards implémentés
--------------------------------------------------------------------------------

Standards OGC:

* CSW 	2.0.2
* Filter 	1.1.0
* OWS Common 	1.0.0
* GML 	3.1.1

Standards de métadonnées:

* Dublin Core 	1.1
* SOAP 	1.2
* ISO 19115 	2003
* ISO 19139 	2007
* ISO 19119 	2005
* NASA DIF 	9.7
* FGDC CSDGM 	1998

Détails
--------------------------------------------------------------------------------

**Site web:** http://pycsw.org

**Licence:** `MIT`_

**Version du logiciel:** 1.2.0

**Plates-formes supportées:** Windows, Linux, Mac

**Interface de l'API:** Python

**Support:** http://pycsw.org/docs/support.html

.. _`Python`: http://www.python.org/
.. _`MIT`: http://pycsw.org/docs/license.html#license

Guide de démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de démarrage rapide <../quickstart/pycsw_quickstart>`

