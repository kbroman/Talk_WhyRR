STEM = whyrr

$(STEM).pdf: $(STEM).tex header.tex
	xelatex $<

web: $(STEM).pdf
	scp $(STEM).pdf adhara.biostat.wisc.edu:Website/presentations/
	scp $(STEM).pdf adhara.biostat.wisc.edu:Website/presentations/whyrr2019.pdf
