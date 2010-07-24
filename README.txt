HTML

Explain here how the index.html is automatically constructed.

reStructured Text
=================

We are moving towards generating the html pages from reStructured text
sources using Sphinx. reSt is similar to wiki markup, and readable in
plain ascii. As a quick check, the Trac system viewer will (partially)
render reSt documents as HTML from the online SVN browser.

1. Install sphinx, Python as needed (install_main_docs.sh does this too)
::
   sudo apt-get install python-sphinx

2. The included make file will generate the documentation
::
   cd doc/overview/
   make html
   cd ../quickstart/
   make html


References:
~~~~~~~~~~~

* http://sphinx.pocoo.org

* http://docutils.sf.net/rst.html

* http://matplotlib.sourceforge.net/sampledoc/


