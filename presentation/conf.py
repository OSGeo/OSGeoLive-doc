# -*- coding: utf-8 -*-

# -- Path setup --------------------------------------------------------------
import os

# -- Project information -----------------------------------------------------
project = "OSGeoLive"
copyright = "2022, OSGeoLive"
author = "Vicky Vergara"
version = "15"
release = "August, 2022"

# -- General configuration ---------------------------------------------------
extensions = [
    "sphinx_revealjs",
]
templates_path = ["_templates"]
source_suffix = ".rst"
master_doc = "presentation"
language = "en"
exclude_patterns = ["_build", "Thumbs.db", ".DS_Store"]
pygments_style = None
locale_dirs = ["@CMAKE_SOURCE_DIR@/locale"]

# -- Options for HTML output -------------------------------------------------
html_theme = "alabaster"
html_theme_options = {
    "revealjs_theme": "league",
}
#html_static_path = ["@CMAKE_SOURCE_DIR@/doc/_static"]

# -- Options for Reveal.js output ---------------------------------------------
revealjs_static_path = ["@CMAKE_SOURCE_DIR@/doc/_static"]
revealjs_style_theme = "white"
revealjs_script_conf = """
    {
        controls: true,
        progress: true,
        history: true,
        center: true,
        transition: "slide",
    }
"""
revealjs_script_plugins = [
    {
        "name": "RevealNotes",
        "src": "revealjs4/plugin/notes/notes.js",
    },
]
revealjs_css_files = [
    "presentation.css",
]
revealjs_notes_from_comments = True

# -- Options for HTMLHelp output ---------------------------------------------
htmlhelp_basename = "sphinx-revealjsdoc"

# -- Options for LaTeX output ------------------------------------------------
latex_elements = {}
latex_documents = [
    (
        master_doc,
        "sphinx-revealjs.tex",
        "sphinx-revealjs Documentation",
        "Kazuya Takei",
        "manual",
    ),
]

# -- Options for manual page output ------------------------------------------
man_pages = [
    (master_doc, "sphinx-revealjs", "sphinx-revealjs Documentation", [author], 1)
]

# -- Options for Texinfo output ----------------------------------------------
texinfo_documents = [
    (
        master_doc,
        "sphinx-revealjs",
        "sphinx-revealjs Documentation",
        author,
        "sphinx-revealjs",
        "One line description of project.",
        "Miscellaneous",
    ),
]

# -- Options for Epub output -------------------------------------------------
epub_title = project
epub_exclude_files = ["search.html"]

# -- Options for extensions --------------------------------------------------
todo_include_todos = True

if "GTAGJS_IDS" in os.environ:
    gtagjs_ids = os.environ["GTAGJS_IDS"].split(",")
