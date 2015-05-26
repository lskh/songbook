all: Songbook.pdf

Songbook.pdf: pdf-abc pdf-crd
	cp abc/*.pdf pdf
	cp crd/*.pdf pdf
	pdfbook pdf/*.pdf
	mv *-book.pdf Songbook.pdf
	
pdf-abc:
	$(MAKE) -C abc

pdf-crd:
	$(MAKE) -C crd

clean:
	rm -f *.pdf pdf/*.pdf
