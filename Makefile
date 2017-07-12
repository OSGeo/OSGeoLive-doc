# Makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
PAPER         =
BUILDDIR      = _build
TMP           = /tmp/osgeolive_make
#LANGUAGES     = ca de el en es hu id it fr ja ko pl ru zh
#TRANSLATIONS  = ca de el es hu id it fr ja ko pl ru zh
LANGUAGES     = $(shell ls -d [a-z][a-z])
TRANSLATIONS  = $(shell echo $(LANGUAGES) | sed -e "s/en //" | sed -e "s/id //")
PDF_LANG      = en
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
	@echo "  latexpdf  to make LaTeX files and run them through pdflatex"
	@echo "  changes   to make an overview of all changed/added/deprecated items"
	@echo "  linkcheck to check all external links for integrity"
	@echo "  doctest   to run all doctests embedded in the documentation (if enabled)"

clean:
	rm -rf $(BUILDDIR)
	rm -rf _compressed

	#if [ -e licenses.csv ] ; then \
	#  rm -f licenses.csv ; \
	#fi ; 
	if [ -e index.rst ] ; then \
	  rm -f index.rst ; \
	fi ; \
	# remove symbolic linked files
	rm -f `find ./*/ -type l -print`

link_to_en_docs:
	# For quickstart, standards and overview docs which have not been
	# translated, link to english doc
	for LANG in $(TRANSLATIONS) ; do \
	  mkdir -p $$LANG/overview $$LANG/quickstart $$LANG/standards ; \
	  for DOC in en/overview/* en/quickstart/* en/standards/* ; do \
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
	  for DOC in en/download.rst en/contact.rst en/index.rst en/sponsors.rst en/sponsors_osgeo.rst en/disclaimer.rst en/copyright.rst en/metrics.rst en/mac_installers.rst en/win_installers.rst ; do \
	    TRANSLATED_DOC=`echo $$DOC | sed -e"s/en/$$LANG/"` ; \
	    TARGET_EN=`echo $$DOC | sed -e"s#^#../#"` ; \
	    if [ ! -f $$TRANSLATED_DOC ] ; then \
	      rm -f $$TRANSLATED_DOC ; \
	      ln -s $$TARGET_EN $$TRANSLATED_DOC ; \
	    fi ; \
	  done ; \
	done

sphinxbuild: link_to_en_docs licenses.csv
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(BUILDDIR)/html
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/html."

fix_header_links: sphinxbuild
	# Correct relative links for the headers for the top level directory
	rm -fr $(TMP)
	for FILE in $(BUILDDIR)/html/*/*.html ; do \
	  for ITEM in \
	    contact.html \
	    index.html \
	    ../index.html \
	    download.html \
	    metrics.html \
	    mac_installers.html \
	    win_installers.html \
	    sponsors.html \
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
	rm -fr $(TMP)
	# Copy the banner to the _images directory
	cp images/banner.png $(BUILDDIR)/html/_images/banner.png
	# Correct relative links to banner in top pages
	for FILE in $(BUILDDIR)/html/*/*.html ; do \
	  sed -e "s#../../_images/banner.png#../_images/banner.png#" $$FILE > $(TMP); \
	  mv $(TMP) $$FILE; \
	done

css:
	# Copy css file
	mkdir -p $(BUILDDIR)/html
	cp osgeolive.css $(BUILDDIR)/html/

licenses.csv :
	echo `pwd`
	bin/extract_licenses.sh > licenses.csv

fix_index:
	cp index.template index.rst

presentation:
	for LANG in en $(TRANSLATIONS) ; do \
	  mkdir -p $(BUILDDIR)/html/$$LANG; \
	  if [ -d $$LANG/presentation ] ; then \
	    bin/make_presentation.sh $$LANG/presentation $(BUILDDIR)/html/$$LANG/presentation ; \
	  else  \
	    rm -rf $(BUILDDIR)/html/$$LANG/presentation; \
	    ln -s ../en/presentation $(BUILDDIR)/html/$$LANG/presentation; \
	  fi; \
	done; \

html: fix_index sphinxbuild fix_header_links banner_links win_installer_links css link_to_en_docs presentation

# Just build the English documentation
# Use this to quickly check new English documentation
small: fix_index
	rm -fr $(TMP)
	mkdir -p $(TMP)
	ln -s $(START_DIR)/*.css $(START_DIR)/images $(START_DIR)/*.py $(START_DIR)/index.rst $(START_DIR)/osgeo_contact.rst $(START_DIR)/contributors.rst $(START_DIR)/translators.rst $(START_DIR)/en $(START_DIR)/*.txt $(START_DIR)/*.csv $(START_DIR)/themes $(TMP)
	cd $(TMP) && $(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(BUILDDIR)/html
	rm -fr _build
	mv $(TMP)/_build .
	cp osgeolive.css $(BUILDDIR)/html/
	rm -fr $(TMP)

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

link_to_en_docs_pdf:
	# For quickstart, standards and overview docs which have not been
	# translated, link to english doc
	for LANG in $(PDF_LANG) ; do \
	  for DOC in en/overview/* en/quickstart/* en/standards/* ; do \
	    TRANSLATED_DOC=`echo $$DOC | sed -e"s/en/$$LANG/"` ; \
	    TARGET_EN=`echo $$DOC | sed -e"s#^#../../#"` ; \
	    if [ ! -f $$TRANSLATED_DOC ] ; then \
	      rm -f $$TRANSLATED_DOC ; \
	      ln -s $$TARGET_EN $$TRANSLATED_DOC ; \
	    fi ; \
	  done ; \
	done
	# link to english docs for the docs in head directory
	for LANG in $(PDF_LANG) ; do \
	  for DOC in en/download.rst en/contact.rst en/index.rst en/sponsors.rst en/sponsors_osgeo.rst en/disclaimer.rst en/copyright.rst en/metrics.rst en/mac_installers.rst en/win_installers.rst ; do \
	    TRANSLATED_DOC=`echo $$DOC | sed -e"s/en/$$LANG/"` ; \
	    TARGET_EN=`echo $$DOC | sed -e"s#^#../#"` ; \
	    if [ ! -f $$TRANSLATED_DOC ] ; then \
	      rm -f $$TRANSLATED_DOC ; \
	      ln -s $$TARGET_EN $$TRANSLATED_DOC ; \
	    fi ; \
	  done ; \
	done

fix_index_pdf:
	for LANG in $(PDF_LANG) ; do \
		cat index_pdf.template | sed "s/LANG_PDF/$$LANG/#"  > index.rst ; \
	done

latex: fix_index_pdf licenses.csv link_to_en_docs_pdf
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo
	@echo "Build finished; the LaTeX files are in $(BUILDDIR)/latex."
	@echo "Run \`make all-pdf' or \`make all-ps' in that directory to" \
	      "run these through (pdf)latex."

latexpdf: fix_index_pdf licenses.csv link_to_en_docs_pdf
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo "Running LaTeX files through pdflatex..."
	$(MAKE) -C $(BUILDDIR)/latex all-pdf
	@echo "pdflatex finished; the PDF files are in $(BUILDDIR)/latex."

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

listimagestocompress:
	./bin/listimagestocompress.sh

compressimages: html
	for i in i $(cut -d ";" -f1 tocompress.txt)
	do
	 pngquant -f --ext .png --quality 70-95 "$i"
	done
