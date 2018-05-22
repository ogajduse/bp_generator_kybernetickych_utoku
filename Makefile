TEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error
BIB = bibtex

TEXTDIR = text

REQUIREMENTS = $(TEXTDIR)/dos_utoky.tex
REQUIREMENTS += $(TEXTDIR)/literatura.bib
REQUIREMENTS += $(TEXTDIR)/literatura.tex
REQUIREMENTS += $(TEXTDIR)/nastroje_pro_dos.tex
REQUIREMENTS += $(TEXTDIR)/prilohy.tex
REQUIREMENTS += $(TEXTDIR)/rozsireni_dosgen.tex
REQUIREMENTS += $(TEXTDIR)/testovani_dosgen.tex
REQUIREMENTS += $(TEXTDIR)/uvod.tex
REQUIREMENTS += $(TEXTDIR)/zaver.tex
REQUIREMENTS += $(TEXTDIR)/zkratky.tex

.PHONY: all clean

all : sablona-prace.pdf sablona-obhaj.pdf

sablona-prace.pdf : $(REQUIREMENTS)
	$(TEX) sablona-prace.tex

sablona-obhaj.pdf :
	$(TEX) sablona-obhaj.tex

clean:
	$(RM) -r *.aux *.log *.nav *.lof *.lol* *.lot *.out *.snm *.toc *.synctex.gz
	$(RM) $(TEXTDIR)/*.aux
	$(RM) *.pdf 
