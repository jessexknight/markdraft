all:
	make ins ;\
	make doc ;\
	make tests ;\
	make zip

ins:
	cd markdraft ;\
	rm markdraft.sty ;\
	pdflatex markdraft.ins

doc:
	cd markdraft ;\
	pdflatex markdraft.dtx

tests:
	for example in test/* ; do \
		cp markdraft/markdraft.sty $$example ;\
		cd $$example ;\
		pdflatex main && pdflatex main ;\
		rm markdraft.sty ;\
		cd ../../ ;\
	done

zip:
	mkdir -p .texmf/tex/latex/markdraft ;\
	mkdir -p .texmf/doc/latex/markdraft ;\
	cd .texmf ;\
	cp ../markdraft/markdraft.sty tex/latex/markdraft/ ;\
	cp ../markdraft/markdraft.pdf doc/latex/markdraft/ ;\
	cp ../markdraft/README doc/latex/markdraft/ ;\
	zip markdraft.tds.zip -r * ;\
	cp markdraft.tds.zip ../tds ;\
	cd .. ;\
	rm -r .texmf
