HW=\
	hw1.pdf

.PHONY: all copy
all: $(HW)

copy:
	mkdir -p ../web/hw
	cp $(HW) ../web/hw

clean:
	rm -f *.aux *.log *.out *.bbl *.blg *.brf *.idx *.toc

distclean: clean
	rm -f *.pdf

%.pdf: %.tex
	pdflatex $<
	pdflatex $<
