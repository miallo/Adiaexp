#-----------------------------------------------------------------
QUELL=main.cpp
PROG=main
CC=g++
CFLAGS=-Wall
#-----------------------------------------------------------------
OBJECTS=$(QUELL:.cpp=.o)
all: $(PROG)

$PROG: $(OBJECTS)
	$(CC) $(CFLAGS) $(QUELL) -o$@

%.o: %-cpp
	$(CC) $(CFLAGS) -c $< -o $@
	./main

Adiabaten.pdf: Adiabaten.tex
	pdflatex Adiabaten.tex
	bibtex Adiabaten
	pdflatex Adiabaten.tex
	pdflatex Adiabaten.tex

clean: 
	rm -f $(PROG) *.o
