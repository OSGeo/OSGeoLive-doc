:Author: Gérald Fenoy
:Version: osgeo-live4.0
:License: Creative Commons

.. _zoo-overview:

.. image:: ../../images/project_logos/logo-Zoo.png
  :scale: 50 %
  :alt: project logo
  :align: right
  :target: http://zoo-project.org/

ZOO Project
===========

Serwer WPS
~~~~~~~~~~

Projekt ZOO dostarcza przyjazny dla programisty framework do tworzenia łańcuchowych usług sieciowych WPS. 
WPS zapewnia dostęp sieciowy do funkcji wykonujących algorytmy przestrzenne. 

Projekt Zoo obsługuje wiele języków programowania i wydany jest z dwiema aplikacjami demo, które wykorzystują możliwości usługodawców narzędzi przestrzennych (współdzieloną bibliotekę C oraz moduł Pythona) bazujących na bibliotekach GEOS i OGR.

ZOO składa się z trzech komponentów:

.. image:: ../../images/screenshots/1024x768/zoo-project-demo-2.png
  :scale: 40 %
  :alt: screenshot
  :align: right

*ZOO Kernel* : (Jądro ZOO) Jest to potężne jądro po stronie serwera, umożliwiające zarządzanie i łańcuchowanie usług sieciowych napisanych w różnych językach programistycznych.  

*ZOO Services* : (Usługi ZOO) Rosnący zestaw przykładowych usług sieciowych bazujących na wielu wolnych bibliotekach. 

*ZOO API* : JavaScript API po stronie serwera, umożliwiające wywoływanie i łączenie usług ZOO,  co pozwala na łatwiejsze programowanie i łączenie funkcji. 

ZOO bazuje na 'Jądrze usługi WPS', które tworzy rdzeń systemu ZOO (aka Jądro ZOO). 
To ostatnie służy do wczytywania dynamicznych bibliotek, by użyć ich jako usług 
WPS na żądanie. Jądro ZOO jest napisane w języku C, ale umożliwia tworzenie Usług ZOO w kilku popularnych językach programowania, aby można było połączyć wiele bibliotek i w konsekwencji 
uprościć pracę programisty usług sieciowych.

Usługa ZOO jest linkiem składającym się z pliku metadanych ZOO (.zcfg) i kodu dla odpowiednich implementacji. Plik metadanych opisuje wszystkie dostępne funkcje, które mogą być wywołane przy pomocy żądania WPS Exec Request, jak również pożądany format wyjścia/wejścia. Usługi zawierają algorytmy i funkcje, i do tej pory mogą być implementowane w językach C/C++, Fortran, Java, Python, PHP i JavaScript.

Główne funkcje
-------------

* Serwer WPS obsługujący wiele języków
* Prosta procedura tworzenia i wdrażania usług sieciowych 
* Proste łączenie WPS z API ZOO 

Zaimplementowane standardy
---------------------

* OGC WPS 1.0.0

Demo
----

* `Demo using simple C Services Provider based GEOS and OGR libraries <http://localhost/zoo-demo/spatialtools.html>`_
* `Demo using simple Python Services Provider based GEOS and OGR libraries <http://localhost/zoo-demo/spatialtools-py.html>`_
* `Simple html form to process your request to the ZOO Kernel <http://localhost/zoo-demo/spatialtools.html>`_


Szczegóły
-------

**Strona internetowa:** http://zoo-project.org

**Licencja:** MIT x/11

**Wersja programu:** 1.0

**Systemy operacyjne:** Windows, Linux, Mac

**Języki programowania:** C, Python, Java, PHP, Fortran, Javascript

**Wsparcie:** http://zoo-project.org/trac


Szybkie wprowadzenie
----------

* `Przejdź do wprowadzenia <../quickstart/zoo-project_quickstart.html>`_


