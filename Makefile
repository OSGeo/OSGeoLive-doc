# Makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
PAPER         =
BUILDDIR      = _build
TMP	      = /tmp/osgeolive_make
#TRANSLATIONS  = de el es it ja ro pl
TRANSLATIONS  =  de el es    ja    pl
LANGUAGES     = en $(TRANSLATIONS)
START_DIR     = $(shell pwd)

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
	rm -rf $(BUILDDIR)
	rm -f contributors.rst translators.rst
	# remove symbolic linked files
	rm -f `find ./*/ -type l -print`

%.rst: %.csv
	# create contributors.rst and translators.rst from csv files
	echo ".. csv-table::" > $@
	echo "" >> $@
	sed -e 's/^ *#.*//' \
	  -e "s/^/  /" \
	  $< \
	  >> $@

link_to_en_docs:
	# For quickstart, standards and overview docs which have not been
	# translated, link to english doc
	for LANG in $(TRANSLATIONS) ; do \
	  for DOC in en/*/* ; do \
	    TRANSLATED_DOC=`echo $$DOC | sed -e"s/en/$$LANG/"` ; \
	    TARGET_EN=`echo $$DOC | sed -e"s#^#../../#"` ; \
	    if [ ! -f $$TRANSLATED_DOC ] ; then \
	      rm -f $$TRANSLATED_DOC ; \
	      ln -s $$TARGET_EN $$TRANSLATED_DOC ; \
	    fi ; \
	  done ; \
	done
	# link to english docs for the docs in head directory
	for LANG in $(TRANSLATIONS) ; do \
	  for DOC in en/download.rst en/contact.rst en/index.rst en/sponsors.rst en/sponsors_osgeo.rst en/disclaimer.rst en/presentation.rst en/copyright.rst ; do \
	    TRANSLATED_DOC=`echo $$DOC | sed -e"s/en/$$LANG/"` ; \
	    TARGET_EN=`echo $$DOC | sed -e"s#^#../#"` ; \
	    if [ ! -f $$TRANSLATED_DOC ] ; then \
	      rm -f $$TRANSLATED_DOC ; \
	      ln -s $$TARGET_EN $$TRANSLATED_DOC ; \
	    fi ; \
	  done ; \
	done

sphinxbuild: contributors.rst translators.rst link_to_en_docs
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(BUILDDIR)/html
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/html."

fix_header_links: sphinxbuild
	# Correct relative links for the headers for the top level directory
	for FILE in $(BUILDDIR)/html/*/*.html ; do \
	  for ITEM in \
	    contact.html \
	    index.html \
	    ../index.html \
	    download.html \
	    sponsors.html \
	    presentation.html \
	    disclaimer.html \
	    copyright.html \
	    overview/overview.html \
	    standards/standards.html \
	  ; do \
	    sed -e "s#\(\.\./\)\($$ITEM\)#\2#" $$FILE > $(TMP) ; mv $(TMP) $$FILE ; \
	  done; \
	done

index2: sphinxbuild
	# Create links from index.html files to:
	#   quickstart.html,
	#   overview.html,
	#   standards.html
	for ITEM in quickstart overview standards ; do \
	  for LANG in $(LANGUAGES) ; do \
	    if [ -e $(BUILDDIR)/html/$$LANG/$$ITEM/$$ITEM.html ] ; then \
	      cd $(BUILDDIR)/html/$$LANG/$$ITEM ; \
	      ln -sf $$ITEM.html index.html ;\
	      cd $(START_DIR) ; \
	    fi; \
	  done; \
	done

win_installer_links: sphinxbuild 
	# Create symbolic link to windows and mac installer directories,
	# otherwise remove hyperlink to the directory in index.html
	if [ -e /cdrom/WindowsInstallers ] ; then \
	  cd $(BUILDDIR)/html/ ;\
	  ln -s /cdrom/WindowsInstallers . ;\
	  ln -s /cdrom/MacInstallers . ;\
	  cd $(START_DIR) ;\
	fi

banner_links: sphinxbuild
	# Copy the banner to the _images directory
	cp images/banner.png $(BUILDDIR)/html/_images/banner.png
	# Correct relative links to banner in top pages
	for FILE in $(BUILDDIR)/html/*/*.html ; do \
	  sed -e "s#../../_images/banner.png#../_images/banner.png#" $$FILE > $(TMP); \
	  mv $(TMP) $$FILE; \
	done

css:
	# Copy css file
	cp osgeolive.css $(BUILDDIR)/html/

Live_GIS_Disc_Testing.html:
	wget -nv -O Live_GIS_Disc_Testing.html http://wiki.osgeo.org/wiki/Live_GIS_Disc_Testing

test_page: Live_GIS_Disc_Testing.html sphinxbuild 
	# Insert the test page from wiki into the HTML test.html placeholder
	sed -e '/<h1>Test/,100000d' $(BUILDDIR)/html/en/test.html > $(TMP)
	sed \
	  -e '1,/<body/d' \
	  -e "/<\/body/,100000d" \
	  -e 's/<div id="content">/<div>/' \
	  Live_GIS_Disc_Testing.html >> $(TMP)
	sed -e '1,/<h1>Test/d' $(BUILDDIR)/html/en/test.html >> $(TMP)
	mv $(TMP) $(BUILDDIR)/html/en/test.html 
	
licenses.csv :
	echo `pwd`
	../bin/extract_licenses.sh > licenses.csv

html: sphinxbuild fix_header_links banner_links win_installer_links test_page css link_to_en_docs link_to_en_docs licenses.csv

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
