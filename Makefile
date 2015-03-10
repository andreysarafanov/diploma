include_files = \
    candidate_algorythm \
    conclusion \
    contents \
    equality_check \
    introduction \
    main_definitions \
    names \
    overview \
    packages \
    references \
    styles \
    task \
    thesis \
    title


.PHONY: all
all: thesis.pdf
	bibtex thesis.aux
	pdflatex -interaction=batchmode thesis > /dev/null
	pdflatex -interaction=batchmode thesis > /dev/null

thesis.pdf: $(include_files:=.tex)
	pdflatex -interaction=batchmode thesis > /dev/null

.PHONY: clean
clean:
	rm -v --force \
            thesis.pdf \
            thesis.toc \
            thesis.log \
            thesis.out \
            thesis.bbl \
            thesis.blg \
            $(include_files:=.aux)
