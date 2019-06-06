NAME=proj4

all: clean build

build: $(NAME).tex
		latex $(NAME).tex
		bibtex $(NAME)
		latex $(NAME).tex	#cross reference solution
		latex $(NAME).tex
		dvips -t a4 $(NAME).dvi
		ps2pdf $(NAME).ps

clean:
		-rm $(NAME).dvi $(NAME).aux $(NAME).ps $(NAME).log $(NAME).blg $(NAME).bbl

compress:
		tar -cf xignac00-fit.tar $(NAME).tex Makefile
		gzip xignac00-fit.tar
