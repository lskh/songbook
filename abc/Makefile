SRC=$(wildcard *.abc)

PDF=$(SRC:.abc=.pdf)
	
%.pdf: %.abc
	abcm2ps -f a5.fmt $< -O - | ps2pdf - $@
	
%_nol.pdf: %.abc
	sed /W:/d $< | abcm2ps -M - -O - | ps2pdf - nol.pdf

all: $(PDF)
	
clean:
	rm -f *.ps *.pdf
