:Author: Johannes Küpper
:Translator: Jorge Sanz
:Version: OSGeo-Live DVD, Version 5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-deegree.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://deegree.org/

********************************************************************************
Guía de inicio rápido de los servicios web deegree 3
********************************************************************************

Descripción del proyecto
================================================================================

deegree es un proyecto de software libre para Infraestructuras de Datos Espaciales y para la web geoespacial. deegree incluye componentes para la gestión de datos geoespaciales, incluyendo acceso a datos, visualización, descubrimiento y seguridad. Los estándares abiertos están en el corazón de deegree. El software está construido utilizando los estándares del Open Geospatial Consortium (OGC) y el ISO Technical Committee 211.

Esta guía de inicio rápido describe cómo:
   * arrancar los servicios web de deegree 3 en el Live DVD
   * usar la consola de servicios de deegree 3 para activar las configuraciones de ejemplo
   * encontrar más información


Arrancar los servicios web deegree
================================================================================

Elige en el menú de inicio "Start deegree".
La aplicación se tomará unos instantes para iniciarse.


Consola de servicios deegree
================================================================================

Firefox debería abrirse automáticamente cuando arrancas deegree por primera vez (si no puedes abrir manualmente el navegador y acceder a http://localhost:8033). Por favor, espera hasta que se muestre la consola de servicios de deegree 3. La consola es una sencilla interfaz de usuario web para editar los ficheros de configuración del llamado espacio de trabajo de deegree.


Espacios de trabajo de ejemplo de deegree
================================================================================

deegree 3 se basa en el concepto de configuración unificada compartida por todas las aplicaciones basadas en deegree 3 (servicios web, aplicaciones web, aplicaciones de escritorio, herramientas de consola). Los diferentes aspectos de la configuración se construyen sobre la noción de espacio de trabajo de deegree (workspace), un directorio de configuración con una distribución estandarizada. En la consola de servicios de deegree 3 haciendo clic en el enlace "workspaces" (a la izquierda) puedes obtener un resumen de los espacios de trabajo de deegree proporcionados o que están preconfigurados.

Ahora estás en la sección de administración de espacios de trabajo de la consola de servicios. En la parte superior se muestra el espacio de trabajo activo (solo está activo un espacio de trabajo en un momento determinado). La vista de espacio de trabajo muestra los espacios locales desactivados y los oficiales, los cuales pueden ser importados (se requiere acceso a Internet).

El Live DVD se distribuye con el espacio de trabajo INSPIRE (vista preconfigurada y servicio de descarga). Cosas que se pueden probar:

 * Arrancar el espacio de trabajo INSPIRE. En la vista de "espacios de trabajo", hacer clic en "Start" a la derecha de "deegree-workspace-inspire-3.2-pre9". (esto tardará unos momentos ya que se deben cargar algunas docenas de megabytes de complejos GML de INSPIRE)
 * Hacer clic en "see layers" -> hacer clic en el símbolo"+" y activar la capa AdministrativeUnit. Esta capa se renderiza directamente desde el completo modelo de datos INSPIRE y es servido usando el Servicio de Visualización INSPIRE configurado en deegree.
 * Volver de nuevo a la consola y hacer clic en "send requests". Se mostrará una sencilla interfaz para enviar peticiones WFS en crudo. Contiene diferentes ejemplos (incluyendo transacciones para insertar GML de INSPIRE válido)
 * Si quieres aprender más (p.ej. configurar orígenes SQL, mapeo relacional) dirígete al manual oficial (ver abajo).

Alternativamente, tal vez quieras descargar otros espacios de trabajo de ejemplos y hacerte una idea de que lo que pueden hacer por ti otros servicios web deegree:

  * deegree utahDemo: Una configuración de cartografía web (WFS/WMS/WMTS) basada en datos de Utah (atención: unas 100MB de descarga)
  * deegree CSW demo: Una configuración de catálogo de metadatos que sigue las especificaciones ISO Application Profile e INSPIRE Discovery Service
  * deegree WPS demo: Una configuración de servicios de geoprocesamiento con algunos sencillos procesos

Por favor, dirígete a la documentación oficial de los servicios web deegree para obtener más información de estos espacios de trabajo de ejemplos (ver abajo)

NOTA: desafortunadamente, la configuración INSPIRE incluida en el Live DVD no dispone de la configuración de las capas Address y CadastralParcels. Tal vez quieras descargar una versión completa u obtener soporte de la comunidad deegree para aprender cómo arreglarla (http://www.deegree.org/Community).

¿Qué es lo siguiente?
================================================================================

Dirígete a http://www.deegree.org/Documentation para aprender más sobre la configuración de servicios web deegree. Ésta es todavía un trabajo en progreso. Las contribuciones, comentarios y financiamiento son bienvenidos.