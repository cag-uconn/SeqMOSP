# Makefile used for iiswc25example 2025/06/02 version V1.0

PAPER = main
TEX = $(wildcard *.tex)
BIB = reference.bib
FIGS = $(wildcard *.png)

.PHONY: all clean

all: $(PAPER).pdf

$(PAPER).pdf: $(TEX) $(BIB) $(FIGS)
	pdflatex $(PAPER)
	bibtex $(PAPER)
	pdflatex $(PAPER)
	pdflatex $(PAPER)

clean:
	rm -f *.aux *.bbl *.blg *.log *.out $(PAPER).pdf
