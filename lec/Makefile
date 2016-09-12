LEC=\
	2016-09-12.pdf \
	2016-09-09.pdf \
	2016-09-07.pdf \
	2016-09-02.pdf \
	2016-08-31.pdf \
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

LEC8= \
	linsys/intro.tex linsys/trisolve.tex linsys/trialgebra.tex \
	linsys/ge_example.tex linsys/basic_lu.tex
2016-09-12.pdf: 2016-09-12.tex common.tex commonm.tex \
	$(LEC8) logistics/2016-09-12.tex

LEC7= \
	float/fixing.tex float/sumdot.tex float/problems.tex \
	code/sillysqrt.m code/testnan.m
2016-09-09.pdf: 2016-09-09.tex common.tex commonm.tex \
	$(LEC7)

LEC6= \
	float/repn.tex float/arith.tex float/except.tex float/model.tex \
	code/mymax1.m code/mymax2.m
2016-09-07.pdf: 2016-09-07.tex common.tex commonm.tex \
	logistics/2016-09-07.tex $(LEC6)

LEC5= \
	error/notions.tex error/conditioning.tex error/sensitivity.tex
2016-09-02.pdf: 2016-09-02.tex common.tex commonm.tex \
	$(LEC5)

LEC4= \
	la/calculus.tex
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
