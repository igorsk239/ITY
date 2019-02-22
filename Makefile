NAME=proj1

all: clean build

build: $(NAME).tex
		latex $(NAME).tex
		dvips -t a4 $(NAME).dvi
		ps2pdf $(NAME).ps

clean:
		-rm $(NAME).dvi $(NAME).aux $(NAME).ps $(NAME).pdf

compress:
		tar -cf xignac00.tar $(NAME).tex Makefile
		gzip xignac00.tar
