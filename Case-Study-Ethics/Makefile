
FILTER = ./filter-doc.plx
PDFLATEX = pdflatex
LATEX = latex
#BIBTEX = bibtex
BIBTEX = /bin/true
FIG2DEV = fig2dev
DVIPS=dvips

all:	case-study-ethics.pdf case-study-ethics.ps

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

case-study-ethics.pdf: case-study-ethics-pdf.tex case-study-ethics-pdf.bbl $(PDF_FIGS)
	$(PDFLATEX) case-study-ethics-pdf
	$(PDFLATEX) case-study-ethics-pdf
	/bin/mv case-study-ethics-pdf.pdf case-study-ethics.pdf

case-study-ethics-pdf.tex: case-study-ethics.tex 
	cat case-study-ethics.tex | $(FILTER) PDF > case-study-ethics-pdf.tex

case-study-ethics-pdf.bbl: case-study-ethics-pdf.tex $(PDF_FIGS)
	$(PDFLATEX) case-study-ethics-pdf
	$(BIBTEX) case-study-ethics-pdf

PS_FIGS = 

case-study-ethics-ps.tex: case-study-ethics.tex 
	cat case-study-ethics.tex | $(FILTER) PS > case-study-ethics-ps.tex

case-study-ethics-ps.bbl: case-study-ethics-ps.tex $(PS_FIGS)
	$(LATEX) case-study-ethics-ps
	$(BIBTEX) case-study-ethics-ps

case-study-ethics-ps.dvi: case-study-ethics-ps.tex case-study-ethics-ps.bbl $(PS_FIGS)
	$(LATEX) case-study-ethics-ps
	$(LATEX) case-study-ethics-ps

case-study-ethics.ps: case-study-ethics-ps.dvi
	$(DVIPS) $< -o $@

clean:
	/bin/rm -f case-study-ethics-ps.* case-study-ethics-pdf.* case-study-ethics.pdf case-study-ethics.ps $(PDF_FIGS) $(PS_FIGS) case-study-ethics.log texput.log
