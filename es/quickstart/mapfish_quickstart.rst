:Author: Eric Lemoine, Bruno Binet
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _mapfish-quickstart:
 
.. image:: ../../images/project_logos/logo-mapfish.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.mapfish.org


********************************
Guía de inicio rápida de MapFish
********************************

MapFish es un framework flexible y completo para construir aplicaciones de 
mapas en la Web enriquecidas. Enfatiza en la alta productividad y el 
desarrollo de alta calidad.


La guía de inicio describe cómo: 

* ejecutar la aplicación MapFish de ejemplo instalada en el Live DVD, 
* instalar MapFish y 
* crear aplicaciones MapFish

Ejecutar la aplicación de ejemplo
=================================

Para ejecutar el ejemplo de click en el enlace de MapFish del escritorio.
Esto abrirá una pestaña de Firefox apuntando a la aplicación servida por
mod_wsgi en Apache (http://localhost/mapfishsample/osgeolive/wsgi/).

Esta aplicación de demostración tiene las siguientes características:
Consulta, Edición, Búsqueda e Impresión.

Para ver el protocolo REST de MapFish en acción, puede abrir el depurador
Firebug y observar las peticiones/respuestas intercambiadas entre el navegador
y los servicios Web de Mapfish


Instalación de MapFish
======================

Para instalar MapFish, descargue el script y ejecute desde una terminal::

    $ wget http://www.mapfish.org/downloads/go-mapfish-framework-2.2.py

    $ python go-mapfish-framework-2.2.py --no-site-packages venv

Los comandos anteriores  crean el ambiente virtual Python en el directorio
``venv``, traen a MapFish y sus dependencias y los instalan en su totalidad.

Ya puede activar el ambiente virtual Python y chequear que MapFish ha sido
instalado con éxito::

    $ source venv/bin/activate

    (venv) $ paster create --list-templates

El comando anterior debe producir la siguiente salida::

    Available templates:
    basic_package:   A basic setuptools-enabled package
    mapfish:         MapFish application template
    mapfish_client:  MapFish client plugin template
    paste_deploy:    A web application deployed through paste.deploy
    pylons:          Pylons application template
    pylons_minimal:  Pylons minimal application template

Si todo está ok, el framework está instalado adecuadamente. Puede continuar con
la siguiente sección para crear la aplicación MapFish



Crear una aplicación MapFish 
============================

Después de activar el ambiente virtual Python, puede generar la primera
aplicación MapFish, llamada por ejemplo MyMapFishApp::

    (venv) $ paster create -t mapfish MyMapFishApp sqlalchemy=true

Luego, instale las librerias JavaScript en la aplicación::

    (venv) $ paster create --no-interactive -t mapfish_client MyMapFishApp

Los comandos anteriores deben crear la aplicación en el directorio
``MyMapFishApp``.

En este punto, ya puede ejecutar la aplicación con::

    (venv) $ cd MyMapFishApp
    (venv) $ paster serve development.ini

Abra en el navegador http://localhost:5000. Podrá ver una aplicación mínima
que incluye un mapa con dos `Capas OpenStreetMap <http://www.openstreetmap.org/>`_,
una barra de herramientas arriba del mapa y un árbol con las capas.

El framework MapFish ofrece más que esto. En particular, permite fácilmente construir
servicios Web RESTful para crear, leer, actualizar y eliminar objetos geográficos.
Por favor visite http://mapfish.org/doc/2.2/quickstart.html para aprender cómo
construir servicios Web RESTful y en http://mapfish.org consulte más sobre MapFish.
