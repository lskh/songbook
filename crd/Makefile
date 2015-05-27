SRC=$(wildcard *.crd)

PDF=$(SRC:.crd=.pdf)
	
%.pdf: %.crd Makefile
	chordii $< | ps2pdf -sPAPERSIZE=a5 - $@
	
all: $(PDF)
	
clean:
	rm -f *.ps *.pdf
