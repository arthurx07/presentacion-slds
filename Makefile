.PHONY: clean all

all : slides abstract

slides : slides.tex pics/by_sa.png
	pdflatex slides.tex

abstract : abstract.tex pics/by_sa.png
	pdflatex abstract.tex

clean : 
	-rm *aux *log *nav *out *snm *toc
