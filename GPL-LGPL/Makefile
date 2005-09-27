
FILTER = ./filter-doc.plx
PDFLATEX = pdflatex
LATEX = latex
#BIBTEX = bibtex
BIBTEX = /bin/true
FIG2DEV = fig2dev
DVIPS=dvips

all:	gpl-lgpl.pdf gpl-lgpl.ps

.SUFFIXES: .fig .postscript .eps .pdf .pstex_t .pstex

.postscript.pdf:
	ps2pdf $< $@

.postscript.eps:
	ps2epsi $< $@

.fig.pdf:
	$(FIG2DEV) -L pdf -p "portrait" -c $< > $@

.fig.pstex_t:
	$(FIG2DEV) -L pstex_t $< > $@

.fig.pstex:
	$(FIG2DEV) -L pstex $< > $@

PDF_FIGS =

gpl-lgpl.pdf: gpl-lgpl-pdf.tex gpl-lgpl-pdf.bbl $(PDF_FIGS)
	$(PDFLATEX) gpl-lgpl-pdf
	$(PDFLATEX) gpl-lgpl-pdf
	/bin/mv gpl-lgpl-pdf.pdf gpl-lgpl.pdf

gpl-lgpl-pdf.tex: gpl-lgpl.tex 
	cat gpl-lgpl.tex | $(FILTER) PDF > gpl-lgpl-pdf.tex

gpl-lgpl-pdf.bbl: gpl-lgpl-pdf.tex $(PDF_FIGS)
	$(PDFLATEX) gpl-lgpl-pdf
	$(BIBTEX) gpl-lgpl-pdf

PS_FIGS = 

gpl-lgpl-ps.tex: gpl-lgpl.tex 
	cat gpl-lgpl.tex | $(FILTER) PS > gpl-lgpl-ps.tex

gpl-lgpl-ps.bbl: gpl-lgpl-ps.tex $(PS_FIGS)
	$(LATEX) gpl-lgpl-ps
	$(BIBTEX) gpl-lgpl-ps

gpl-lgpl-ps.dvi: gpl-lgpl-ps.tex gpl-lgpl-ps.bbl $(PS_FIGS)
	$(LATEX) gpl-lgpl-ps
	$(LATEX) gpl-lgpl-ps

gpl-lgpl.ps: gpl-lgpl-ps.dvi
	$(DVIPS) $< -o $@

clean:
	/bin/rm -f gpl-lgpl-ps.* gpl-lgpl-pdf.* gpl-lgpl.pdf gpl-lgpl.ps $(PDF_FIGS) $(PS_FIGS) gpl-lgpl.log texput.log
