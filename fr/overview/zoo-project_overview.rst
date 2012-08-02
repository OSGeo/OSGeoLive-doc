:Author: Gérald Fenoy
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-Zoo.png
  :scale: 50 %
  :alt: Logo du projet
  :align: right
  :target: http://zoo-project.org/

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100
  :alt: Projet en incubation OSGeo
  :align: right
  :target: http://www.osgeo.org

ZOO-Project
================================================================================

Serveur WPS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

ZOO-Project fournit un framework pour le Web Processing Service (WPS) adapté 
pour les développeurs afin de créer et chaîner plusieurs Web Processing Services.
Un serveur WPS fournit un accès web à des fonctions qui lancent des algorithmes 
spatiaux.
ZOO-Project supporte de nombreux languages de programmation et contient deux 
applications de démos utilisant des fournisseurs de services simples d'outils 
spatiaux (un module avec bibliothèque C partagée et un avec Python)
basés sur les bibliothèques GEOS et OGR.

ZOO est composé de trois parties:

.. image:: ../../images/screenshots/1024x768/zoo-project-demo-2.png
  :scale: 40 %
  :alt: Capture d'écran ZOO
  :align: right

*Kernel ZOO* : Un noyau côté serveur en C qui rend possible le fait de 
gérer et chaîner des webservices codés dans différents langages de programmation. 

*Services ZOO* : Un suite d'exemples de webservices en évolution basée sur  
diverses bibliothèques Open Source.

*API ZOO* : Une API JavaScript côté serveur capable d'appeler et de chaîner 
les services ZOO, qui rend le développement et le chaînage de processus plus 
simple. 

ZOO est basé sur un 'noyau de service WPS' qui constitue le coeur du système 
de ZOO (c'est à dire le "ZOO Kernel"). Ce dernier est capable de charger des 
bibliothèques dynamiques et de les manipuler au gré des demandes des services 
web. Le noyau ZOO est écrit en langage C, mais supporte de nombreux autres 
langages de programmation dans le but de se connecter à de nombreuses 
bibliothèques et par dessous tout de simplifier le travail du développeur 
final de services web.

Un service ZOO est un lien composé d'un fichier de métadonnées (.zcfg) et du 
code pour l'implémentation correspondante. Le fichier de métadonnée décrit 
toutes les fonctions disponibles qui peuvent être appelée en utilisant une 
requête WPS "Execute", ainsi que les entrées/sorties désirées. Les services 
contiennent des algorithmes et des fonctions et peuvent maintenant être 
implémentés en C/C++, Fortran, Java, Python, PHP et JavaScript. 

Caractéristiques principales
--------------------------------------------------------------------------------

* Serveur WPS Multilangages
* Création de services web simple et procédure de déploiement
* Chaînage simple de WPS avec l'API de ZOO

Standards implémentés
--------------------------------------------------------------------------------

* WPS 1.0.0 OGC 

Démo
--------------------------------------------------------------------------------

* `Démo simple utilisant le fournisseur de services C basé sur les bibliothèques GEOS et OGR <http://localhost/zoo-demo/spatialtools.html>`_
* `Démo simple utilisant le fournisseur de services Python basé sur les bibliothèques GEOS et OGR <http://localhost/zoo-demo/spatialtools-py.html>`_
* `Formulaire html simple pour lancer votre requête vers le noyau de ZOO <http://localhost/zoo-demo/spatialtools.html>`_


Détails
--------------------------------------------------------------------------------

**Site web:** http://zoo-project.org

**Licence:** MIT x/11

**Version du logiciel:** 1.2.0

**Plates-formes supportées:** Windows, Linux, Mac

**Languages de programmation supportés:** C, Python, Java, PHP, Fortran, Javascript

**Support:** http://zoo-project.org/trac


Guide de démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de démarrage rapide <../quickstart/zoo-project_quickstart>`


