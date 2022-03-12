TEX      = xelatex
BIB      = bibtex
MAIN     = example

target: tex

tex: $(MAIN).tex
	$(TEX) $<
	$(BIB) $(MAIN).aux
	$(TEX) $<
	$(TEX) $<

