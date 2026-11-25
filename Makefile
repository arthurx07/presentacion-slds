LATEX = pdflatex -interaction=nonstopmode -halt-on-error
PICS = pics/by_sa.png pics/dragonBall.jpg pics/glass.jpg pics/gtaV.jpeg pics/huawei.png pics/patente.jpg

.PHONY: all clean distclean slides abstract

all : slides.pdf abstract.pdf

slides : slides.pdf
abstract : abstract.pdf

slides.pdf : slides.tex $(PICS)
	$(LATEX) $<
	$(LATEX) $<

abstract.pdf : abstract.tex $(PICS)
	$(LATEX) $<
	$(LATEX) $<

clean :
	rm -f *.aux *.log *.nav *.out *.snm *.toc

distclean : clean
	rm -f slides.pdf abstract.pdf
