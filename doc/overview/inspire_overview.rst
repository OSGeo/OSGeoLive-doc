:Author: Marco Minghini
:Author: Alexander Kotsev
:Author: Daniele Francioli
:Version: osgeolive14.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)


@LOGO_inspire@
@OSGEO_KIND_inspire@

@NAME_inspire@
================================================================================

The `INSPIRE Directive <https://inspire.ec.europa.eu>`__ aims to create a European Union spatial data infrastructure (SDI) for the purposes of environmental policies. This European SDI enables the sharing of environmental spatial information among public sector organisations, facilitates public access to spatial information and assist in policy-making across boundaries. INSPIRE is based on the infrastructures for spatial information established and operated by the 27 Member States of the European Union. The Directive (see the `full text <https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32007L0002&from=EN>`__) came into force on 15 May 2007 and is implemented in various stages, with full implementation required by 2021. INSPIRE is on a technical level based on international standards, mainly those developed by the :doc:`OGC <ogc_overview>` and `ISO <https://www.iso.org>`__.

The datasets falling under the scope of the INSPIRE Directive are grouped into 34 cross-sectoral categories names `spatial data themes <https://inspire.ec.europa.eu/Themes>`__, which are defined in the Annexes of the Directive and reflect two main types of data: geospatial reference data, presented in Annex I and partly Annex II, which define a location reference that the remaining domain-specific themes (in Annex III and partly Annex II) can then refer to.

Public sector authorities whose data falls within the scope of the INSPIRE Directive shall:

  * Document them through metadata;
  * Expose them through network services: discovery services (to discover the data), view services (to access the data) and download services (to download the data);
  * Harmonise their spatial datasets in accordance with `common data models <https://inspire.ec.europa.eu/Data-Models/Data-Specifications/2892>`__ defined for each theme.

@SCREENSHOT_inspire@

Currently, more than 7,000 European public institutions contribute their data to INSPIRE. A significant share of them make use of OSGeo software projects throughout the implementation process. :doc:`OSGeoLive <../index>` provides an easy entry to the INSPIRE implementation process through an increasing number of examples with sample European data from multiple application domains included in the available software tutorials. In addition, `a dedicated page on INSPIRE <https://wiki.osgeo.org/wiki/INSPIRE>`__ under the OSGeo wiki is maintained that gives an overview of the legal and technical aspects of INSPIRE together with selected use cases and an overview of OSGeo software projects that implementers may use.


The `Joint Research Centre (JRC) of the European Commission <https://ec.europa.eu/jrc/en>`__ develops and maintains a number of central software components, which help Member States in the INSPIRE implementation process:

  * the `INSPIRE Registry <https://inspire.ec.europa.eu/registry>`__, based on the open source :doc:`Re3gistry <re3gistry_overview>` software, manages the unique identifiers and descriptions of INSPIRE resources such as themes, code lists and application schemas;
  * the `INSPIRE Reference Validator <https://inspire.ec.europa.eu/validator/about/>`__, based on the open source `ETF testing framework <https://etf-validator.net>`__, allows to test that metadata, datasets and services are compliant with INSPIRE requirements;
  * the `INSPIRE Geoportal <https://inspire-geoportal.ec.europa.eu/>`__ allows to discover, access and download all the datasets made available by Member States under INSPIRE.
  





Details
--------------------------------------------------------------------------------

**Website:** @WEB_inspire@
