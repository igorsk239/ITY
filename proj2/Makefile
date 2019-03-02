NAME=proj2

all: clean build

build: $(NAME).tex
		latex $(NAME).tex
		latex $(NAME).tex	#cross reference solution
		dvips -t a4 $(NAME).dvi
		ps2pdf $(NAME).ps

clean:
		-rm $(NAME).dvi $(NAME).aux $(NAME).ps $(NAME).log $(NAME).out

compress:
		tar -cf xignac00-fit.tar $(NAME).tex Makefile
		gzip xignac00-fit.tar
