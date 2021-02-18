SRC = $(wildcard *.tex)
PDFS = $(SRC:.tex=.pdf)
RM = rm -f
CC = xelatex

all:pdf

pdf:$(PDFS)

%.pdf:  %.tex
	$(CC) $<

clean:
	$(RM) *.log *.aux *.bbl *.blg *.synctex.gz *.out *.toc *.lof *.idx *.ilg *.ind *.pdf
