#!/bin/bash

for fname in $* ; do
  BASENAME=`echo $fname | sed 's/[.]tex$//'`
  pdflatex $fname
  if grep "bibliography{refs}" $fname > /dev/null ; then
    bibtex $BASENAME
  fi
  pdflatex $fname
  pdflatex $fname
done
