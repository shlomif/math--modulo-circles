
all: modulo.ps

pdf: modulo.pdf

modulo.ps: modulo.pre.ps
	ps2ps $< $@

modulo.pre.ps: modulo.dvi
	dvips -o $@ $<

modulo.dvi: modulo.tex
	pslatex $<

modulo.pdf: modulo.ps
	ps2pdf $<

clean:
	rm -f *.pdf modulo.dvi *.ps modulo.aux modulo.log

