
FILTER = ./filter-doc.plx
PDFLATEX = pdflatex
LATEX = latex
#BIBTEX = bibtex
BIBTEX = /bin/true
FIG2DEV = fig2dev
DVIPS=dvips

all:	gpl-business.pdf gpl-business.ps

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

gpl-business.pdf: gpl-business-pdf.tex gpl-business-pdf.bbl $(PDF_FIGS)
	$(PDFLATEX) gpl-business-pdf
	$(PDFLATEX) gpl-business-pdf
	/bin/mv gpl-business-pdf.pdf gpl-business.pdf

gpl-business-pdf.tex: gpl-business.tex 
	cat gpl-business.tex | $(FILTER) PDF > gpl-business-pdf.tex

gpl-business-pdf.bbl: gpl-business-pdf.tex $(PDF_FIGS)
	$(PDFLATEX) gpl-business-pdf
	$(BIBTEX) gpl-business-pdf

PS_FIGS = 

gpl-business-ps.tex: gpl-business.tex 
	cat gpl-business.tex | $(FILTER) PS > gpl-business-ps.tex

gpl-business-ps.bbl: gpl-business-ps.tex $(PS_FIGS)
	$(LATEX) gpl-business-ps
	$(BIBTEX) gpl-business-ps

gpl-business-ps.dvi: gpl-business-ps.tex gpl-business-ps.bbl $(PS_FIGS)
	$(LATEX) gpl-business-ps
	$(LATEX) gpl-business-ps

gpl-business.ps: gpl-business-ps.dvi
	$(DVIPS) $< -o $@

clean:
	/bin/rm -f gpl-business-ps.* gpl-business-pdf.* gpl-business.pdf gpl-business.ps $(PDF_FIGS) $(PS_FIGS) gpl-business.log texput.log
