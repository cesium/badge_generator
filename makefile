.PHONY: clean

clean:
	rm -rf *.aux
	rm -rf *.dvi
	rm -rf *.log

%.tex: %.in
	./texgenerator.bash $< > $@

%.dvi: %.tex
	latex -interaction=nonstopmode $<

%.ps: %.dvi
	dvips -o $@ $<

%.pdf: %.ps
	ps2pdf $<

