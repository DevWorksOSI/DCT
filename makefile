#!/bin/bash

PROG = dct
all: $(PROG)

dct: src/dct.cpp src/version.h
	g++ -o bin/dct src/dct.cpp src/version.h -I.

prefix	:= /home/$(USER)/DCT

install:
	mkdir $(prefix)
	cp bin/dct $(prefix)/dct
	cp docs/README $(prefix)/README
	cp LICENSE $(prefix)LICENSE

clean:
	rm bin/$(PROG)
	rm $(prefix)
	
test:
