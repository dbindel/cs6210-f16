LEC=\
	2016-10-07.pdf \
	2016-10-05.pdf \
	2016-10-03.pdf \
	2016-09-30.pdf \
	2016-09-28.pdf \
	2016-09-26.pdf \
	2016-09-23.pdf \
	2016-09-21.pdf \
	2016-09-19.pdf \
	2016-09-16.pdf \
	2016-09-14.pdf \
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

LEC19= \
	leastsq/regchoice.tex leastsq/nearness.tex
2016-10-07.pdf: 2016-10-07.tex common.tex commonm.tex \
	$(LEC19)

LEC18= \
	leastsq/island.tex leastsq/biasvar.tex \
	leastsq/qrpiv.tex leastsq/truncsvd.tex \
	leastsq/lasso.tex leastsq/regtactics.tex
2016-10-05.pdf: 2016-10-05.tex common.tex commonm.tex \
	$(LEC18)

LEC17= \
	leastsq/stable.tex leastsq/sparse.tex \
	leastsq/weighted.tex leastsq/constrained.tex
2016-10-03.pdf: 2016-10-03.tex common.tex commonm.tex \
	$(LEC17)

LEC16= \
	leastsq/gs.tex leastsq/hh.tex leastsq/givens.tex
2016-09-30.pdf: 2016-09-30.tex common.tex commonm.tex \
	$(LEC16) logistics/2016-09-30.tex

LEC15= \
	leastsq/troubles.tex leastsq/sensitivity.tex leastsq/gs.tex
2016-09-28.pdf: 2016-09-28.tex common.tex commonm.tex \
	$(LEC15)

LEC14= \
	leastsq/crickets.tex leastsq/basics.tex leastsq/why-ols.tex \
	leastsq/blue.tex leastsq/factorizations.tex
2016-09-26.pdf: 2016-09-26.tex common.tex commonm.tex \
	$(LEC14) logistics/2016-09-26.tex

LEC13= \
		linsys/sparse-direct.tex linsys/sparse-tree.tex linsys/nd.tex
2016-09-23.pdf: 2016-09-23.tex common.tex commonm.tex \
	$(LEC13)

LEC12= \
	linsys/diag_dom.tex linsys/tridiag.tex linsys/bordered.tex \
	linsys/vandermonde.tex linsys/circulant.tex linsys/otherstruct.tex
2016-09-21.pdf: 2016-09-21.tex common.tex commonm.tex \
	$(LEC12) logistics/2016-09-21.tex

LEC11= \
	linsys/invbad.tex linsys/itref2.tex linsys/condest.tex \
	linsys/scaling.tex linsys/symmetric.tex linsys/cholesky.tex
2016-09-19.pdf: 2016-09-19.tex common.tex commonm.tex \
	$(LEC11) logistics/2016-09-19.tex

LEC10= \
	linsys/sensitivity.tex linsys/itref.tex
2016-09-16.pdf: 2016-09-16.tex common.tex commonm.tex \
	$(LEC10)

LEC9= \
	linsys/packed.tex linsys/schur.tex linsys/blocked.tex \
	linsys/ge_berr.tex linsys/pivot.tex
2016-09-14.pdf: 2016-09-14.tex common.tex commonm.tex \
	$(LEC9)

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
