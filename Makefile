Test.pdf: Testsong.crd Makefile
	chordii Testsong.crd | ps2pdf - Test.pdf
	
irish_rover.pdf: irish_rover.abc
	abcm2ps irish_rover.abc -O - | ps2pdf - irish_rover.pdf
	
irish_rover_nol.pdf: irish_rover.abc
	sed /W:/d irish_rover.abc | abcm2ps -M - -O - | ps2pdf - irish_rover_nol.pdf
	
clean:
	rm -f *.ps *.pdf