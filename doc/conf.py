# -*- coding: utf-8 -*-
#
# OSGeoLive documentation build configuration file, created by
# sphinx-quickstart on Wed Sep 22 19:00:58 2010.
#
# This file is execfile()d with the current directory set to its containing dir.
#
# Note that not all possible configuration values are present in this
# autogenerated file.
#
# All configuration values have a default; values that are commented out
# serve to show the default.

import sys, os

# Definitions of:
# iso_size = 4.0
# iso_mini_size = 4.0
# vm_7z_size = 3.4
# req_hd_size = 20


# for osgeolive-X.X.iso
iso_size = 4.0
# for osgeolive-mini-X.X.iso
iso_mini_size = 4.0
# for osgeo-vm-X.X.7z
vm_7z_size = 3.1
# required hard disk space
req_hd_size = 20

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#sys.path.append(os.path.abspath('.'))

# -- General configuration -----------------------------------------------------

#fileIN = open("VERSION.txt", "r")
#extract = fileIN.readline()
#line = extract.split()
#version =  line[0] + " " + line[1]
#fileIN.close()

# Add any Sphinx extension module names here, as strings. They can be extensions
# coming with Sphinx (named 'sphinx.ext.*') or your custom ones.
#extensions = ['sphinx_revealjs']

# Add any paths that contain templates here, relative to this directory.
templates_path = ['_templates']

# The suffix of source filenames.
source_suffix = '.rst'

# The encoding of source files.
#source_encoding = 'utf-8'

# The master toctree document.
master_doc = 'index'

# General information about the project.
project = u'@OSGeoLiveDoc_NAME@'
copyright = u'2011~2019, OSGeo'

# The version info for the project you're documenting, acts as replacement for
# |version| and |release|, also used in various other places throughout the
# built documents.
#
# The short X.Y version.
#version = '4.5'
# The full version, including alpha/beta/rc tags.
version = '@OSGeoLiveDoc_VERSION_MAJOR@.@OSGeoLiveDoc_VERSION_MINOR@'
release = '@OSGeoLiveDoc_VERSION_MAJOR@.@OSGeoLiveDoc_VERSION_MINOR@'

# The language for content autogenerated by Sphinx. Refer to documentation
# for a list of supported languages.
#language = None

# There are two options for replacing |today|: either, you set today to some
# non-false value, then it is used:
#today = ''
# Else, today_fmt is used as the format for a strftime call.
today_fmt = '%B %d, %Y'

# List of documents that shouldn't be included in the build.
#unused_docs = []

# List of directories, relative to source directory, that shouldn't be searched
# for source files.
exclude_trees = ['_build']
exclude_patterns = ['presentation/*.rst']

# The reST default role (used for this markup: `text`) to use for all documents.
#default_role = None

# If true, '()' will be appended to :func: etc. cross-reference text.
#add_function_parentheses = True

# If true, the current module name will be prepended to all description
# unit titles (such as .. function::).
#add_module_names = True

# If true, sectionauthor and moduleauthor directives will be shown in the
# output. They are ignored by default.
#show_authors = False

# The name of the Pygments (syntax highlighting) style to use.
pygments_style = 'sphinx'

# A list of ignored prefixes for module index sorting.
#modindex_common_prefix = []


# -- Options for HTML output ---------------------------------------------------

# The theme to use for HTML and HTML Help pages.  Major themes that come with
# Sphinx are currently 'default' and 'sphinxdoc'.
html_theme = 'overview'
html_theme_path = ['_themes']

if os.environ.get('HTML_THEME_PATH'):
  html_theme_path.append(os.environ.get('HTML_THEME_PATH'))

# Theme options are theme-specific and customize the look and feel of a theme
# further.  For a list of options available for each theme, see the
# documentation.
#html_theme_options = {}

# Add any paths that contain custom themes here, relative to this directory.
#html_theme_path = []

# The name for this set of Sphinx documents.  If None, it defaults to
# "<project> v<release> documentation".
#html_title ='|project| |release| documentation'
html_title='%(projectname)s %(projectversion)s Documentation' % { 'projectname':project,'projectversion': release }

# A shorter title for the navigation bar.  Default is the same as html_title.
#html_short_title = None

# The name of an image file (relative to this directory) to place at the top
# of the sidebar.
#html_logo = None

# The name of an image file (within the static path) to use as favicon of the
# docs.  This file should be a Windows icon file (.ico) being 16x16 or 32x32
# pixels large.
html_static_path = ['@CMAKE_CURRENT_SOURCE_DIR@/_static']
html_favicon = '@CMAKE_CURRENT_SOURCE_DIR@/_static/favicon.ico'

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
#html_static_path = ['_static']

html_copy_source = False

# If not '', a 'Last updated on:' timestamp is inserted at every page bottom,
# using the given strftime format.
html_last_updated_fmt = '%b %d, %Y'

# If true, SmartyPants will be used to convert quotes and dashes to
# typographically correct entities.
#html_use_smartypants = True

# Custom sidebar templates, maps document names to template names.
#html_sidebars = {}

# Additional templates that should be rendered to pages, maps page names to
# template names.
#html_additional_pages = {}

# If false, no module index is generated.
#html_use_modindex = True

# If false, no index is generated.
#html_use_index = True

# If true, the index is split into individual pages for each letter.
#html_split_index = False

# If true, links to the reST sources are added to the pages.
#html_show_sourcelink = True

# If true, an OpenSearch description file will be output, and all pages will
# contain a <link> tag referring to it.  The value of this option must be the
# base URL from which the finished HTML is served.
#html_use_opensearch = ''

# If nonempty, this is the file name suffix for HTML files (e.g. ".xhtml").
#html_file_suffix = ''

# Output file base name for HTML help builder.
htmlhelp_basename = '%sdoc' % project


# -- Options for locale output --------------------------------------------------
locale_dirs = ['../../locale/']   # path is example but recommended.
gettext_compact = False     # optional.
gettext_auto_build = True

# -- Options for LaTeX output --------------------------------------------------

latex_elements = {
# The paper size ('letterpaper' or 'a4paper').
'papersize': 'a4paper',

# The font size ('10pt', '11pt' or '12pt').
'pointsize': '10pt',

# remove blank pages
'classoptions': ',oneside',
'babel': '\\usepackage[english]{babel}'

# Additional stuff for the LaTeX preamble.
#'preamble': ''
}

# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title, author, documentclass [howto/manual]).
latex_documents = [
  ('index', 'OSGeoLive.tex', u'OSGeoLive Documentation',
   u'OSGeo', 'manual'),
]

# The name of an image file (relative to this directory) to place at the top of
# the title page.
#latex_logo = None

# For "manual" documents, if this is true, then toplevel headings are parts,
# not chapters.
#latex_use_parts = False

# If true, show page references after internal links.
#latex_show_pagerefs = False

# If true, show URL addresses after external links.
#latex_show_urls = False

# Documents to append as an appendix to all manuals.
#latex_appendices = []

# If false, no module index is generated.
#latex_domain_indices = True

# Linkcheck configuration, see http://sphinx.pocoo.org/latest/config.html#options-for-the-linkcheck-builder

linkcheck_ignore = [
        # link changed name to https://geops.ch
        # mostly used on the contibutors list. 
        # TODO need to verify the change is correct
        r'https://geops.de',

        # The project you're trying to access has been archived.
        # TODO Verify what happened to gmt because its for gmt_overview and gmt_quickstart
        r'https://gmt.soest.hawaii.edu',

        # currently SSL_ERROR_BAD_CERT_DOMAIN
        # TODO remove this line when the CERT is fixed
        r'https://www.rspatial.org',

        # bad gateway
        # TODO remove line when page is reachable
        'https://demo.pycsw.org/',

        # Leaflet moved the documentation temporarly due to the Ucrania situation
        # TODO hope for the war to be over and remove this line
        r'https://leafletjs.com',

        # link exists but does not accept robots and linkchecker is a robot
        # used in overview/mapserver_overview
        'http://www.dnr.state.mn.us/maps/compass.html',

        # Link does not exist anymore
        # Used in overview/liblas_overview
        # TODO remove link from documentation
        'https://www.asprs.org/divisions-committees/lidar-division/laser-las-file-format-exchange-activities.html',

        # Link changed locations
        # TODO change to https://saga-gis.sourceforge.io
        r'http://www.saga-gis.org',
        # TODO change to https://52north.org/research/scope/geospatial-sensing/
        'https://52north.org/research/research-labs/sensor-web/',
        # TODO change to https://cesium.com/learn/
        'https://cesium.com/docs',
        # TODO change to https://github.com/geoext/geoext
        r'https://github.com/geoext/geoext3',
        # TODO change to https://inspire.ec.europa.eu/validator/home/index.html
        'https://inspire.ec.europa.eu/validator/about/',

        # links to the disk internals
        r'http://localhost', r'https://localhost',
        r'http://127.0.0.1', r'https://127.0.0.1',
        r'http://0.0.0.0',
        'http://geonode',


        # link exists but when many link checks are done link checker fails
        # ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
        # Used in quickstart/osm_quickstart
        'https://www.openstreetmap.org/edit',

        # Used in overview/inspire_overview
        # Error message: broken    https://etf-validator.net - 503 Server Error: Service Temporarily Unavailable for url: https://etf-validator.net/
        'https://etf-validator.net',

        # Link does not exist anymore
        # Used in quickstart/geoserver_quickstart
        r'http://prj2epsg.org',

        # Link with error 404 Client Error
        # Used in quickstart/hyperv_quickstart
        r'https://www.microsoft.com/en-us/download',

        # Link does not exist anymore
        # Used in quickstart/mapslicer_quickstart
        'https://maps.yahoo.com/',

        # Link with certiciate problems
        # Used in quickstart/liblas_quickstart
        'https://epsg.org/home.html',
        'https://www.epsg.org/',

        # Link with error 400 Client Error
        # Used in contact
        r'https://mobile.twitter.com/osgeolive',
        ]

linkcheck_anchors = False

# If false, no module index is generated.
#latex_use_modindex = True

# TODO (fgdrf) read the values from flat text file
# global replacements that will be included at the end of every source file
# see http://sphinx.readthedocs.org/en/latest/config.html#confval-rst_epilog
#
# TODO export versions into an extra app-versions file
#
rst_epilog="""
.. |osgeolive-project| replace:: %(projectname)s
.. |osgeolive-version| replace:: %(projectname)s %(projectversion)s
.. |osgeolive-version-only| replace:: %(projectversion)s
.. |osgeolive-hdspace| replace:: %(required_hd_space)02d GB
.. |osgeolive-iso-size| replace:: %(iso_size).1f GB
.. |osgeolive-iso-mini-size| replace:: %(iso_mini_size).1f GB
.. |osgeolive-vm-7z-size| replace:: %(vm_7z_size).1f GB
.. |osgeolive-appmenupath-geoserver| replace:: :menuselection:`Geospatial --> Web Services --> GeoServer --> Start GeoServer`
.. |osgeolive-appmenupath-udig| replace:: :menuselection:`Geospatial --> Desktop GIS --> uDig`
.. |osgeolive-appmenupath-52nWPS| replace:: :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North WPS`
.. |vmdk| image:: /images/logos/vmdk.png
                        :align: bottom
                        :height: 18
.. |nologo| image:: /images/logos/nologo.png
                        :align: bottom
                        :height: 18
.. |osgeo_project| image:: /images/logos/OSGeo_compass.png
                        :alt: OSGeo Project
                        :align: bottom
                        :height: 18
                        :target: ../sponsors_osgeo.html
.. |osgeo_incubation| image:: /images/logos/OSGeo_compass_bw.png
                        :alt: OSGeo Community
                        :align: middle
                        :height: 18
                        :target: ../sponsors_osgeo.html
.. |osgeo_community| image:: /images/logos/OSGeo_compass_bw.png
                        :alt: OSGeo Community
                        :align: middle
                        :height: 18
                        :target: ../sponsors_osgeo.html
.. |CAT| replace:: `Catalogue Service <https://www.ogc.org/standards/cat>`__
.. |CSW| replace:: `Catalogue Service <https://www.ogc.org/standards/cat>`__
.. |GML| replace:: `Geography Markup Language (GML) <https://www.ogc.org/standards/gml>`__
.. |FE| replace:: `Filter Encoding (FE) <https://www.ogc.org/standards/filter>`__
.. |KML| replace:: `KML <https://www.ogc.org/standards/kml>`__
.. |ORM| replace:: `OGC Reference Model (ORM) <https://www.ogc.org/standards/orm>`__
.. |SENSORML| replace:: `Sensor Model Language (SensorML) <https://www.ogc.org/standards/sensorml>`__
.. |SFS| replace:: `Simple Feature Access (SFS) <https://www.ogc.org/standards/sfs>`__
.. |SFSQL| replace:: `Simple Features for SQL (SFS) <https://www.ogc.org/standards/sfs>`__
.. |SLD| replace:: `Styled Layer Descriptor (SLD) <https://www.ogc.org/standards/sld>`__
.. |SOS| replace:: `Sensor Observation Service (SOS) <https://www.ogc.org/standards/sos>`__
.. |WCPS| replace:: `Web Coverage Processing Service <https://www.ogc.org/standards/wcps>`__
.. |WCS| replace:: `Web Coverage Service (WCS) <https://www.ogc.org/standards/wcs>`__
.. |WMC| replace:: `Web Map Context (WMC) <https://www.ogc.org/standards/wmc>`__
.. |WMS| replace:: `Web Map Service (WMS) <https://www.ogc.org/standards/wms>`__
.. |WMTS| replace:: `OpenGIS Web Map Tile ServiceW (WMTS) <https://www.ogc.org/standards/wmts>`__
.. |WFS| replace:: `Web Feature Service (WFS) <https://www.ogc.org/standards/wfs>`__
.. |WPS| replace:: `Web Processing Service (WPS) <https://www.ogc.org/standards/wps>`__
.. |OGC| replace:: `Open Geospatial Consortium (OGC) <https://www.ogc.org>`__
.. |OGCS| replace:: `OGC Standards <https://www.ogc.org/standards>`__
.. |SUPPORT| replace:: `OSGeo service providers <https://www.osgeo.org/service-providers>`__
.. |CC BY 3.0| replace:: `CC BY 3.0 <https://creativecommons.org/licenses/by/3.0/>`__
.. |CC BY-SA 3.0| replace:: `Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0) <https://creativecommons.org/licenses/by-sa/3.0/>`__

@OSGeoLiveDoc_PROJECTS_LOGOS@
@OSGeoLiveDoc_PROJECTS_VERSIONS@""" % {
  'projectname':project,
  'projectversion': version,
  'required_hd_space': req_hd_size,
  'iso_size': iso_size,
  'iso_mini_size': iso_mini_size,
  'vm_7z_size': vm_7z_size
}
