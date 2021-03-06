all: Songbook.pdf

Songbook.pdf: pdf-abc pdf-crd
	if [ ! -d pdf ] ; then mkdir pdf ; fi
	cp abc/*.pdf pdf
	cp crd/*.pdf pdf
	pdfbook --short-edge pdf/*.pdf
	mv *-book.pdf Songbook.pdf

pdf-abc:
	$(MAKE) -C abc

pdf-crd:
	$(MAKE) -C crd

clean:
	rm -f *.pdf pdf/*.pdf
