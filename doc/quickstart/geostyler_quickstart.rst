:Author: Jan Suleiman
:Version: osgeolive14.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_geostyler@
@OSGEO_KIND_geostyler@

********************************************************************************
@NAME_geostyler@ Quickstart
********************************************************************************

This Quickstart describes some basic steps required to start working with GeoStyler: installing GeoStyler and adding a first UI component to your react application.

GeoStyler makes it easy to style geodata in any web page. The UI is independent from any styling format and should be usable for e.g. OpenLayer or SLD.

.. contents:: Contents
    :local:

Installing GeoStyler
====================

The most simple way to install GeoStyler is to use ``npm``. Simply run following command from your project root:

.. code-block:: bash

    npm i geostyler

Please make sure that all peer dependencies are installed in the specified versions:

.. code-block:: bash

    npm i react react-dom antd ol

Don't forget to install the parsers you want to use:

.. code-block:: bash

    npm i geostyler-sld-parser


Integrate GeoStyler
===================

Import the GeoStyler ``Style`` component into your application as follows:

.. code-block:: javascript

    import { Style } from 'geostyler';

The ``Style`` component provides a variety of styling functionality.

After importing, you can use it in your render method like this:

.. code-block:: html

    <Style
        compact={true}
    />

The ``Style`` component should now be visible in the browser.

.. image:: /images/projects/geostyler/quickstart_compact.png

Integrate geostyler-sld-parser
==============================

To edit an existing SLD via GeoStyler, we first have to import and instantiate the ``geostyler-sld-parser``.

.. code-block:: javascript

    import SLDParser from 'geostyler-sld-parser';
    const parser = new SLDParser();

Afterwards, we are able to read an existing SLD into the GeoStyler-readable format.

.. code-block:: javascript

    parser.readStyle('<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:gml="http://www.opengis.net/gml" xmlns:ogc="http://www.opengis.net/ogc" version="1.0.0"> <sld:NamedLayer> <sld:Name>Default Styler</sld:Name> <sld:UserStyle> <sld:Name>Default Styler</sld:Name> <sld:Title>Gravel_Program_2016</sld:Title> <sld:FeatureTypeStyle> <sld:Name>name</sld:Name> <sld:Rule> <sld:MinScaleDenominator>1.0</sld:MinScaleDenominator> <sld:MaxScaleDenominator>1.0E7</sld:MaxScaleDenominator> <sld:LineSymbolizer> <sld:Stroke> <sld:CssParameter name="stroke">#8000FF</sld:CssParameter> <sld:CssParameter name="stroke-width">3.000</sld:CssParameter> </sld:Stroke> </sld:LineSymbolizer> </sld:Rule> </sld:FeatureTypeStyle> </sld:UserStyle> </sld:NamedLayer> </sld:StyledLayerDescriptor>')
        .then(style => console.log(style));


To connect this style with the UI, we have to store it in a state variable and pass it to
our ``Style`` component. After defining ``myStyle`` as a state variable, you can use it as follows:

.. code-block:: javascript

    parser.readStyle('<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:gml="http://www.opengis.net/gml" xmlns:ogc="http://www.opengis.net/ogc" version="1.0.0"> <sld:NamedLayer> <sld:Name>Default Styler</sld:Name> <sld:UserStyle> <sld:Name>Default Styler</sld:Name> <sld:Title>Gravel_Program_2016</sld:Title> <sld:FeatureTypeStyle> <sld:Name>name</sld:Name> <sld:Rule> <sld:MinScaleDenominator>1.0</sld:MinScaleDenominator> <sld:MaxScaleDenominator>1.0E7</sld:MaxScaleDenominator> <sld:LineSymbolizer> <sld:Stroke> <sld:CssParameter name="stroke">#8000FF</sld:CssParameter> <sld:CssParameter name="stroke-width">3.000</sld:CssParameter> </sld:Stroke> </sld:LineSymbolizer> </sld:Rule> </sld:FeatureTypeStyle> </sld:UserStyle> </sld:NamedLayer> </sld:StyledLayerDescriptor>')
        .then(style => this.setStyle({myStyle}));

    // ...

    <Style
        compact={true}
        style={myStyle}
    />

The GeoStyler UI should now match the style that was defined as SLD.

To get the edited style as SLD from the ``Style`` component, you can use the ``writeStyle()`` method
of the geostyler-sld-parser within the ``onStyleChange()`` method of the ``Style`` component.

.. code-block:: javascript

    parser.readStyle('<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:gml="http://www.opengis.net/gml" xmlns:ogc="http://www.opengis.net/ogc" version="1.0.0"> <sld:NamedLayer> <sld:Name>Default Styler</sld:Name> <sld:UserStyle> <sld:Name>Default Styler</sld:Name> <sld:Title>Gravel_Program_2016</sld:Title> <sld:FeatureTypeStyle> <sld:Name>name</sld:Name> <sld:Rule> <sld:MinScaleDenominator>1.0</sld:MinScaleDenominator> <sld:MaxScaleDenominator>1.0E7</sld:MaxScaleDenominator> <sld:LineSymbolizer> <sld:Stroke> <sld:CssParameter name="stroke">#8000FF</sld:CssParameter> <sld:CssParameter name="stroke-width">3.000</sld:CssParameter> </sld:Stroke> </sld:LineSymbolizer> </sld:Rule> </sld:FeatureTypeStyle> </sld:UserStyle> </sld:NamedLayer> </sld:StyledLayerDescriptor>')
        .then(style => this.setStyle({myStyle}));

    // ...

    <Style
        compact={true}
        style={myStyle}
        onStyleChange={gsStyle => {
            parser.writeStyle(gsStyle)
                .then(sld => console.log(sld));
        }}
    />


Things to try
=============

As a next step, you can try to add an OpenLayers map and connect the ``Style`` component to the map,
so that you can directly see the changes you made on the map.

What next?
==========

Check out these other resources about this application.

* `GeoStyler Documentation <https://geostyler.github.io/geostyler/latest/index.html>`__
* `Beginner Tutorial <https://geostyler.github.io/geostyler-beginner-workshop>`__
* `geostyler.org Website <https://geostyler.org>`__
