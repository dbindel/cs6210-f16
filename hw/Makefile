PDFS= 

.PHONY: all clean distclean copy
all: $(PDFS)

clean:
	rm -f hw*.aux hw*.log hw*.out

distclean: clean
	rm -f hw*.pdf

copy: $(PDFS)
	mkdir -p ../web/hw

%.pdf: %.tex common.tex
	pdflatex $<
	pdflatex $<
