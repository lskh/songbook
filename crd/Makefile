SRC=$(wildcard *.crd)

PDF=$(SRC:.crd=.pdf)
	
%.pdf: %.crd Makefile
	chordii -c 18 -t 18 -a -g $< | psresize -p a5 | ps2pdf -sPAPERSIZE=a5 - $@
	
all: $(PDF)
	
clean:
	rm -f *.ps *.pdf
