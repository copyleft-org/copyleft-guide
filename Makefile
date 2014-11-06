# Makefile for Copyleft Tutorial                      -*- GNUMakefile -*-

ifndef BOOK_BASE
BOOK_BASE=comprehensive-gpl-guide
endif

LATEX_INPUT_FILES = $(BOOK_BASE).tex compliance-guide.tex license-texts.tex enforcement-case-studies.tex gpl-lgpl.tex
BOOK_CLASS_FILE = gpl-book.cls

TEX4HT=tex4ht
T4HT=t4ht
PDFLATEX = pdflatex
LATEX = latex
BIBTEX = bibtex
FIG2DEV = fig2dev
DVIPS=dvips

all:	err $(BOOK_BASE).pdf $(BOOK_BASE).ps $(BOOK_BASE).html

pdf:	err $(BOOK_BASE).pdf

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

$(BOOK_BASE).pdf: $(PDF_FIGS) $(LATEX_INPUT_FILES) $(BOOK_CLASS_FILE)
	$(PDFLATEX) $(BOOK_BASE)
	$(PDFLATEX) $(BOOK_BASE)

$(BOOK_BASE).html: $(LATEX_INPUT_FILES) $(BOOK_CLASS_FILE)
	echo "building HTML"
	$(LATEX)  '\def\generateHTML{\hfill}'  '\input'  $(BOOK_BASE).tex
	$(LATEX)  '\def\generateHTML{\hfill}'   '\input'  $(BOOK_BASE).tex
	$(TEX4HT) -f/$(BOOK_BASE).tex -i/$(BOOK_TEX_PATH)
	$(T4HT) -f/$(BOOK_BASE).tex
	rm $(BOOK_BASE).dvi

$(BOOK_BASE).dvi: $(LATEX_INPUT_FILES) $(EPS_FIGS) ${BOOK_CLASS_FILE)
	$(LATEX)  $(BOOK_BASE).tex
	$(LATEX)  $(BOOK_BASE).tex

clean:
	/bin/rm -f $(BOOK_BASE).ps $(BOOK_BASE).pdf $(BOOK_BASE).log texput.log $(BOOK_BASE).lg $(BOOK_BASE).tmp $(BOOK_BASE).xref *.4ct *.4tc *.aux *.dvi $(BOOK_BASE)*.html *.idv *.lg *.tmp $(BOOK_BASE).css $(BOOK_BASE).log $(BOOK_BASE).out $(BOOK_BASE)-js.*

err: ; $(ERR)
