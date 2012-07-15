:Author: Gérald Fenoy
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-Zoo.png
  :scale: 50 %
  :alt: project logo
  :align: right
  :target: http://zoo-project.org/

Projecte ZOO
================================================================================

Servidor WPS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

El projecte ZOO proporciona un entorn Web Processing Service (WPS) amigable per als desenvolupadors per crear i encadenar Web Processing Services.
Un WPS proporciona accés web a funcions que executen algorismes espacials.
El projecte Zoo suporta múltiples llenguatges de programació i conté dues aplicacions de demostració que utilitzen proveïdors de serveis d'eines espacials simples (una llibreria C compartida i un módul Python) basats en les llibreries GEOS i OGR.

ZOO es composa de tres parts:

.. image:: ../../images/screenshots/1024x768/zoo-project-demo-2.png
  :scale: 40 %
  :alt: screenshot
  :align: right

*Nucli ZOO* : un nucli en C molt potent de la banda del servidor que permet gestionar i encadenar serveis web programats en diferents llenguatges. 

*Serveis ZOO* : un conjunt creixent de serveis web d'exemple basats en diferents llibreries Open Source.

*API ZOO* : una API en JavaScript de la banda del servidor capaç de cridar i encadenar els serveis ZOO, cosa que facilita el desenvolupament i encadenat de processos.

ZOO es basa en un 'nucli de servei WPS' que constitueix el sistema principal de ZOO (conegut com nucli ZOO). Aquest és capaç de carregar llibreries dinàmiques i exposar-les com serveis web sota demanda. El nucli ZOO està escrit en C, però suporta diferents llenguatges de programació dels més comuns per proporcionar connectivitat a moltes llibreries, i per sobre de tot per simplificar la feina dels desenvolupadors de servies web.

Un servei ZOO és un enllaç constituït per un arxiu de metadades (.zcfg) i el codi per a la implementació corresponent. L'arxiu de metadades descriu totes les funcions disponibles que es poden demanar amb una petició d'execució WPS (WPS Exec Request), així com l'entrada i la sortida desitjades. Els serveis contenen els algorismes i les funcions, i es poden implementar en C/C++, Fortran, Java, Python, PHP i JavaScript. 

Característiques principals
--------------------------------------------------------------------------------

* Servidor WPS multi llenguatge
* Procediment senzill de creació i desplegament de serveis web
* Encadenat senzill de WPS amb la API ZOO

Estàndards implementats
--------------------------------------------------------------------------------

* OGC WPS 1.0.0

Demostració 
--------------------------------------------------------------------------------

* `Demostració emprant un senzill proveïdor de serveis en C basat en llibreries GEOS i OGR <http://localhost/zoo-demo/spatialtools.html>`_
* `Demostració emprant un senzill proveïdor de serveis en Python basat en llibreries GEOS i OGR <http://localhost/zoo-demo/spatialtools-py.html>`_
* `Senzill formulari html per processar les peticions al nucli ZOO <http://localhost/zoo-demo/spatialtools.html>`_


Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://zoo-project.org

**Llicència:** MIT x/11

**Versió de programari:** 1.2.0

**Sistemes operatius:** Windows, Linux, Mac

**Llenguatges de programació suportats:** C, Python, Java, PHP, Fortran, Javascript

**Suport:** http://zoo-project.org/trac


Guia ràpida
--------------------------------------------------------------------------------

* :doc:`guia ràpida <../quickstart/zoo-project_quickstart>`


