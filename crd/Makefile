SRC=$(wildcard *.crd)

PDF=$(SRC:.crd=.pdf)
	
%.pdf: %.crd
	chordii $< | ps2pdf - $@
	
all: $(PDF)
	
clean:
	rm -f *.ps *.pdf
