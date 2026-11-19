LATEX = pdflatex -interaction=nonstopmode -halt-on-error

.PHONY: all clean distclean slides abstract

all : slides.pdf abstract.pdf

slides : slides.pdf
abstract : abstract.pdf

slides.pdf : slides.tex pics/by_sa.png
	$(LATEX) $<
	$(LATEX) $<

abstract.pdf : abstract.tex pics/by_sa.png
	$(LATEX) $<
	$(LATEX) $<

clean :
	rm -f *.aux *.log *.nav *.out *.snm *.toc

distclean : clean
	rm -f slides.pdf abstract.pdf
