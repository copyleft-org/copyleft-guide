# Makefile for Copyleft Tutorial                      -*- GNUMakefile -*-

ifndef BOOK_BASE
BOOK_BASE=comprehensive-gpl-guide
endif

ifndef WEB_INSTALL_DIR
WEB_INSTALL_DIR = /path/to/html/install/directory
endif

LATEX_INPUT_FILES = $(BOOK_BASE).tex compliance-guide.tex license-texts.tex enforcement-case-studies.tex gpl-lgpl.tex
BOOK_CLASS_FILE = gpl-book.cls

CSS_FILES = css/*.css
JAVASCRIPT_FILES = js/*.js
WEB_CONFIG_FILE = webhacks.cfg

HTML_OUTPUT_DIR = public_html

TEX4HT=tex4ht
T4HT=t4ht
HTLATEX=htlatex
PDFLATEX = pdflatex
LATEX = latex
BIBTEX = bibtex
FIG2DEV = fig2dev
DVIPS=dvips

all:	err $(BOOK_BASE).pdf $(BOOK_BASE).ps html

pdf:	err $(BOOK_BASE).pdf

html:	$(HTML_OUTPUT_DIR)/monolithic/$(BOOK_BASE).html $(HTML_OUTPUT_DIR)/$(BOOK_BASE).html pdf $(BOOK_BASE).ps jscssmonolitic jscss
	/bin/ln -f $(BOOK_BASE).ps $(HTML_OUTPUT_DIR)/$(BOOK_BASE).ps
	/bin/ln -f $(BOOK_BASE).pdf $(HTML_OUTPUT_DIR)/$(BOOK_BASE).pdf

.SUFFIXES: .fig .postscript .eps .pdf .pstex_t .pstex .ps .dvi .tex

.postscript.pdf:
	ps2pdf $< $@

.postscript.eps:
	ps2epsi $< $@

.dvi.ps:
	$(DVIPS) $< -o $@

.tex.dvi:
	$(LATEX) $<

.fig.pdf:
	$(FIG2DEV) -L pdf -p "portrait" -c $< > $@

.fig.pstex_t:
	$(FIG2DEV) -L pstex_t $< > $@

.fig.pstex:
	$(FIG2DEV) -L pstex $< > $@

$(BOOK_BASE).pdf: $(PDF_FIGS) $(LATEX_INPUT_FILES)
	$(PDFLATEX) $(BOOK_BASE)
	$(PDFLATEX) $(BOOK_BASE)
	$(PDFLATEX) $(BOOK_BASE)

$(HTML_OUTPUT_DIR)/monolithic/$(BOOK_BASE).html: $(LATEX_INPUT_FILES) $(WEB_CONFIG_FILE)
	mkdir -p $(HTML_OUTPUT_DIR)/monolithic/js
	mkdir -p $(HTML_OUTPUT_DIR)/monolithic/css
	/bin/rm -f $(BOOK_BASE)*.html
	/bin/rm -f $(BOOK_BASE)*.js
	$(HTLATEX) comprehensive-gpl-guide.tex "webhacks,xhtml,mouseover,fn-in"
	$(HTLATEX) comprehensive-gpl-guide.tex "webhacks,xhtml,mouseover,fn-in"
	mv ${BOOK_BASE}*js $(HTML_OUTPUT_DIR)/monolithic/js
	/bin/rm -f $(BOOK_BASE)*.html
	/bin/rm -f $(BOOK_BASE)*.js
	$(HTLATEX) comprehensive-gpl-guide.tex "webhacks,xhtml,fn-in"
	mv $(BOOK_BASE)*html $(HTML_OUTPUT_DIR)/monolithic
	mv cm*png $(HTML_OUTPUT_DIR)/monolithic
	mv ${BOOK_BASE}*css $(HTML_OUTPUT_DIR)/monolithic
	/bin/rm -f ${BOOK_BASE}*aux ${BOOK_BASE}*dvi ${BOOK_BASE}*idv ${BOOK_BASE}*lg ${BOOK_BASE}*tmp ${BOOK_BASE}*4ct ${BOOK_BASE}*4tc ${BOOK_BASE}*toc ${BOOK_BASE}*out ${BOOK_BASE}*xref

jscssmonolitic: $(CSS_FILES) $(JAVASCRIPT_FILES)
	cp -pa js/*js $(HTML_OUTPUT_DIR)/monolithic/js
	cp -pa css/*css $(HTML_OUTPUT_DIR)/monolithic/css

$(HTML_OUTPUT_DIR)/$(BOOK_BASE).html: $(LATEX_INPUT_FILES)  $(WEB_CONFIG_FILE)
	mkdir -p $(HTML_OUTPUT_DIR)/js
	mkdir -p $(HTML_OUTPUT_DIR)/css
	/bin/rm -f $(BOOK_BASE)*.html
	/bin/rm -f $(BOOK_BASE)*.js
	$(HTLATEX) comprehensive-gpl-guide.tex "webhacks,xhtml,3,next,mouseover,fn-in"
	mv ${BOOK_BASE}*js $(HTML_OUTPUT_DIR)/js
	/bin/rm -f $(BOOK_BASE)*.html
	/bin/rm -f $(BOOK_BASE)*.js
	$(HTLATEX) comprehensive-gpl-guide.tex "webhacks,3,next,fn-in"
	mv ${BOOK_BASE}*css $(HTML_OUTPUT_DIR)
	mv ${BOOK_BASE}*html $(HTML_OUTPUT_DIR)
	mv cm*png $(HTML_OUTPUT_DIR)
	/bin/rm -f ${BOOK_BASE}*aux ${BOOK_BASE}*dvi ${BOOK_BASE}*idv ${BOOK_BASE}*lg ${BOOK_BASE}*tmp ${BOOK_BASE}*4ct ${BOOK_BASE}*4tc ${BOOK_BASE}*toc ${BOOK_BASE}*out ${BOOK_BASE}*xref

jscss: $(CSS_FILE) $(JAVASCRIPT_FILES)
	cp -pa js/*js $(HTML_OUTPUT_DIR)/js
	cp -pa css/*css $(HTML_OUTPUT_DIR)/css

$(BOOK_BASE).dvi: $(LATEX_INPUT_FILES) $(EPS_FIGS)
	$(LATEX)  $(BOOK_BASE).tex
	$(LATEX)  $(BOOK_BASE).tex

install: all
	rsync -HavP --delete $(HTML_OUTPUT_DIR)/ $(WEB_INSTALL_DIR)/
	chmod -R oug+r $(WEB_INSTALL_DIR)
	find $(WEB_INSTALL_DIR) -type d -exec chmod gou+rx {} \;
	cd $(WEB_INSTALL_DIR); /bin/ln -sf comprehensive-gpl-guide.html index.html
clean:
	/bin/rm -f $(BOOK_BASE).ps $(BOOK_BASE).pdf $(BOOK_BASE).log texput.log $(BOOK_BASE).lg $(BOOK_BASE).tmp $(BOOK_BASE).xref *.4ct *.4tc *.aux *.dvi $(BOOK_BASE)*.html *.idv *.lg *.tmp $(BOOK_BASE).css $(BOOK_BASE).log $(BOOK_BASE).out $(BOOK_BASE)-js.* cm*png
	/bin/rm -rf public_html
err: ; $(ERR)
