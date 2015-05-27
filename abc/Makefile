SRC=$(wildcard *.abc)

PDF=$(SRC:.abc=.pdf)
	
%.pdf: %.abc Makefile
	abcm2ps -f a5.fmt $< -O - | ps2pdf -sPAPERSIZE=a5 - $@
	
%_nol.pdf: %.abc Makefile
	sed /W:/d $< | abcm2ps -M - -O - | ps2pdf - nol.pdf

all: $(PDF)
	
clean:
	rm -f *.ps *.pdf
