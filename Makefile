# Makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
PAPER         =
BUILDDIR      = _build
TMP	      = /tmp/osgeolive_make
TRANSLATIONS  = de es it ja
LANGUAGES     = en $(TRANSLATIONS)
VERSION       = $(shell cat ../VERSION.txt)

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d $(BUILDDIR)/doctrees $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) .

.PHONY: help clean html dirhtml pickle json htmlhelp qthelp latex changes linkcheck doctest


help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  html      to make standalone HTML files"
	@echo "  dirhtml   to make HTML files named index.html in directories"
	@echo "  pickle    to make pickle files"
	@echo "  json      to make JSON files"
	@echo "  htmlhelp  to make HTML files and a HTML help project"
	@echo "  qthelp    to make HTML files and a qthelp project"
	@echo "  latex     to make LaTeX files, you can set PAPER=a4 or PAPER=letter"
	@echo "  changes   to make an overview of all changed/added/deprecated items"
	@echo "  linkcheck to check all external links for integrity"
	@echo "  doctest   to run all doctests embedded in the documentation (if enabled)"

clean:
	-rm -rf $(BUILDDIR)/*


html1:
	# Link to the English disclaimer text
	for LANG in $(TRANSLATIONS) ; do \
	  ln -sf ../en/disclaimer.rst $$LANG/ ;\
	done

	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(BUILDDIR)/html
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/html."

fixlinks: html1
	# Correct relative links for the headers for the top level directory
	for FILE in $(BUILDDIR)/html/*/*.html ; do \
	  for ITEM in \
	    contact.html \
	    index.html \
	    download.html \
	    sponsors.html \
	    overview/overview.html \
	    standards/standards.html \
	  ; do \
	    sed -e "s#\(../\)\($$ITEM\)#\2#" $$FILE > $(TMP) ; mv $(TMP) $$FILE ; \
	  done; \
	done

index: html1
	# Redirect root index.html to english page
	cp redirect.html $(BUILDDIR)/html/index.html
	cp redirect.html $(BUILDDIR)/html/genindex.html
	# Add an index.html file to subdirectories
	ln -sf $(BUILDDIR)/html/$$LANG/index.html $(BUILDDIR)/html/$$LANG/$$PAGE_TYPE/genindex.html ;\

#index2: html1
#	# create an index.html file which links to the main directory pages
#	for FILE in \
#	  $(BUILDDIR)/html/*/quickstart/quickstart.html \
#	  $(BUILDDIR)/html/*/overview/overview.html \
#	  $(BUILDDIR)/html/en/stanards/stanards.html \
#	; do \
#	  echo $$FILE > $(TMP) ;\
#	  SRC=`sed -e "s#/[a-z_]*.html#/index.html#" $(TMP)` ;\
#	  TARGET=`sed -e "s#.*/\([a-z]*.html\)#\1#" $(TMP)` ;\
#	  echo SRC= $$SRC ; \
#	  echo TARGET= $$TARGET ; \
#	  ln -sf $$FILE index.html ; \
#	done

version: html1
	# Insert version number after "OSGeo-Live" in <h1> headings
	for FILE in \
	  $(BUILDDIR)/html/*/*.html \
	  $(BUILDDIR)/html/*/quickstart/quickstart.html \
	  $(BUILDDIR)/html/*/overview/overview.html \
	; do \
	  sed -e "s#\(OSGeo-Live\)#\1 $(VERSION)#" $$FILE > $(TMP) ;\
	  mv $(TMP) $$FILE ;\
	done

banner_links: html1
	# Copy the banner to the _images directory
	cp images/banner.png $(BUILDDIR)/html/_images/banner.png
	# Correct relative links to banner in top pages
	for FILE in $(BUILDDIR)/html/*/*.html ; do \
	  sed -e "s#../../_images/banner.png#../_images/banner.png#" $$FILE > $(TMP); \
	  mv $(TMP) $$FILE; \
	done

html: fixlinks index version banner_links

dirhtml:
	$(SPHINXBUILD) -b dirhtml $(ALLSPHINXOPTS) $(BUILDDIR)/dirhtml
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/dirhtml."

pickle:
	$(SPHINXBUILD) -b pickle $(ALLSPHINXOPTS) $(BUILDDIR)/pickle
	@echo
	@echo "Build finished; now you can process the pickle files."

json:
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $(BUILDDIR)/json
	@echo
	@echo "Build finished; now you can process the JSON files."

htmlhelp:
	$(SPHINXBUILD) -b htmlhelp $(ALLSPHINXOPTS) $(BUILDDIR)/htmlhelp
	@echo
	@echo "Build finished; now you can run HTML Help Workshop with the" \
	      ".hhp project file in $(BUILDDIR)/htmlhelp."

qthelp:
	$(SPHINXBUILD) -b qthelp $(ALLSPHINXOPTS) $(BUILDDIR)/qthelp
	@echo
	@echo "Build finished; now you can run "qcollectiongenerator" with the" \
	      ".qhcp project file in $(BUILDDIR)/qthelp, like this:"
	@echo "# qcollectiongenerator $(BUILDDIR)/qthelp/OSGeo-Live.qhcp"
	@echo "To view the help file:"
	@echo "# assistant -collectionFile $(BUILDDIR)/qthelp/OSGeo-Live.qhc"

latex:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo
	@echo "Build finished; the LaTeX files are in $(BUILDDIR)/latex."
	@echo "Run \`make all-pdf' or \`make all-ps' in that directory to" \
	      "run these through (pdf)latex."

changes:
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(BUILDDIR)/changes
	@echo
	@echo "The overview file is in $(BUILDDIR)/changes."

linkcheck:
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(BUILDDIR)/linkcheck
	@echo
	@echo "Link check complete; look for any errors in the above output " \
	      "or in $(BUILDDIR)/linkcheck/output.txt."

doctest:
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(BUILDDIR)/doctest
	@echo "Testing of doctests in the sources finished, look at the " \
	      "results in $(BUILDDIR)/doctest/output.txt."
