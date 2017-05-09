# Makefile for Presentation
#
# You can change the PRESENTATION_BASE below, or if you like, or set it as
# an environment variable before you type make.

ifndef PRESENTATION_BASE
PRESENTATION_BASE=ccs-examples
endif 

DO_INCREMENTAL_POINTS = -i -s


# This should be the path to your checkout of the repository.  Under that
# directory, you must have a checkout of /Admin/Forms/TeX.

PATH := $(PATH):/usr/share/tex4ht


PANDOC=/usr/bin/pandoc
TEX4HT=tex4ht
T4HT=t4ht
PDFLATEX = pdflatex
LATEX = /usr/bin/latex
BIBTEX = bibtex
FIG2DEV = fig2dev
DVIPS=/usr/bin/dvips

PDF_FIGS = ui/conservancy/logo.pdf
EPS_FIGS = ui/conservancy/logo.eps

all:	err $(PRESENTATION_BASE).ps $(PRESENTATION_BASE).html
all:	$(PRESENTATION_BASE).html

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

$(PRESENTATION_BASE).tex: $(PDF_FIGS) $(PRESENTATION_BASE).md
	$(PANDOC) -S -s -f markdown -t latex $(PRESENTATION_BASE).md -o $(PRESENTATION_BASE).tex

$(PRESENTATION_BASE).pdf: $(PRESENTATION_BASE).tex $(PDF_FIGS)
	$(PANDOC) -S -s -f markdown -t latex $(PRESENTATION_BASE).md -o $(PRESENTATION_BASE).tex
	$(PDFLATEX)  $(PRESENTATION_BASE).tex
	$(PDFLATEX)  $(PRESENTATION_BASE).tex

$(PRESENTATION_BASE).html: $(PRESENTATION_BASE).md
	$(PANDOC) $(DO_INCREMENTAL_POINTS) -s -S --template ./ui/conservancy/pandoc-s5-template.html -f markdown -t s5 $(PRESENTATION_BASE).md -o $(PRESENTATION_BASE).html

$(PRESENTATION_BASE).dvi: $(PRESENTATION_BASE).tex $(EPS_FIGS)
	$(LATEX)  $(PRESENTATION_BASE).tex
	$(LATEX)  $(PRESENTATION_BASE).tex

clean:
	/bin/rm -f $(PRESENTATION_BASE).ps $(PRESENTATION_BASE).pdf $(PRESENTATION_BASE).log texput.log $(PRESENTATION_BASE).lg $(PRESENTATION_BASE).tmp $(PRESENTATION_BASE).xref *.4ct *.4tc *.aux *.dvi $(PRESENTATION_BASE)*.html *.idv *.lg *.tmp $(PRESENTATION_BASE).css $(PRESENTATION_BASE).log $(PRESENTATION_BASE).out $(PRESENTATION_BASE)-js.* $(PRESENTATION_BASE).tex

err: ; $(ERR)

install: all
	/usr/bin/rsync -HavP --exclude ui ./ copyleft.org:/var/www/presentations/$(PRESENTATION_BASE)/
	-ssh copyleft.org 'mkdir -p /var/www/presentations/$(PRESENTATION_BASE)/ui/conservancy/'
	/usr/bin/rsync -HavP ui/conservancy/  copyleft.org:/var/www/presentations/$(PRESENTATION_BASE)/ui/conservancy/
	-ssh copyleft.org 'find /var/www/presentations/$(PRESENTATION_BASE) -exec chmod gou+r {} \;'
	-ssh copyleft.org 'find /var/www/presentations/$(PRESENTATION_BASE) -type d -exec chmod gou+rx {} \;'
	./pres-cmd
