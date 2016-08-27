LEC=\
	notes.pdf \
	2016-08-29.pdf \
	2016-08-26.pdf \
	2016-08-24.pdf

.PHONY: all copy
all: $(LEC)

copy:
	mkdir -p ../web/lec
	cp $(LEC) ../web/lec

notes.pdf: notes.tex commonm.tex refs.bib \
	$(LEC1) $(LEC2)

LEC5=
2016-09-02.pdf: 2016-09-02.tex common.tex commonm.tex \
	$(LEC5)

LEC4=
2016-08-31.pdf: 2016-08-31.tex common.tex commonm.tex \
	$(LEC4)

LEC3= \
	la/exhortation.tex \
	la/vectors.tex \
	la/matrices.tex
2016-08-29.pdf: 2016-08-29.tex common.tex commonm.tex \
	$(LEC3)

LEC2=\
	basics/matrix-shapes.tex \
	basics/matrix-sparse.tex \
	basics/matrix-data-sparse.tex
2016-08-26.pdf: 2016-08-26.tex common.tex commonm.tex refs.bib \
	logistics/2016-08-26.tex $(LEC2)

LEC1=\
	basics/matrix-background.tex \
	basics/matrix-notation.tex \
	basics/matrix-interp.tex \
	basics/matrix-dense.tex \
	code/matvec1.m \
	code/matvec2_col.m \
	code/matvec2_row.m \
	data/matvec_time.dat \
	figs/matvec_time.tex
2016-08-24.pdf: 2016-08-24.tex common.tex commonm.tex refs.bib \
	logistics/2016-08-24.tex $(LEC1)

clean:
	rm -f *.aux *.log *.out *.bbl *.blg *.brf *.idx *.toc

distclean: clean
	rm -f *.pdf

%.pdf: %.tex
	util/build.sh $<
