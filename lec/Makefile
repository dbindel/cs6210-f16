LEC=\
	2016-08-26.pdf \
	2016-08-24.pdf

.PHONY: all copy
all: $(LEC)

copy:
        mkdir -p ../web/lec
        cp $(LEC) ../web/lec

2016-08-26.pdf: 2016-08-26.tex common.tex refs.bib \
	logistics/2016-08-26.tex \
	basics/matrix-shapes.tex \
	basics/matrix-sparse.tex \
	basics/matrix-data-sparse.tex \
	basics/matrix-free.tex
	pdflatex $<
	bibtex 2016-08-26
	pdflatex $<
	pdflatex $<

2016-08-24.pdf: 2016-08-24.tex common.tex refs.bib \
	logistics/2016-08-24.tex \
	basics/matrix-background.tex \
	basics/matrix-notation.tex \
	basics/matrix-interp.tex \
	basics/matrix-dense.tex \
	code/matvec1.m \
	code/matvec2_col.m \
	code/matvec2_row.m \
	data/matvec_time.dat \
	figs/matvec_time.tex
	pdflatex $<
	bibtex 2016-08-24
	pdflatex $<
	pdflatex $<

clean:
	rm -f *.aux *.log *.out *.bbl *.blg

distclean: clean
	rm -f *.pdf

copy:
	mkdir -p ../web/lec
	#cp $(LEC) ../web/lec

%.pdf: %.tex
	pdflatex $<
	pdflatex $<
