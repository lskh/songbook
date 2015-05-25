abc:
	$(MAKE) -C abc all

crd:
	$(MAKE) -C crd all

all: abc crd
	mv abc/*.pdf pdf
	mv crd/*.pdf pdf
	pdfbook pdf/*.pdf
	mv *-book.pdf Songbook.pdf
	
clean:
	rm -f *.pdf pdf/*.pdf
