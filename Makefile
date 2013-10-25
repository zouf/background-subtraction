CXX=g++
CC=gcc

CFLAGS?=-Wall -g -I/usr/include/opencv2
LFLAGS?=-


all: background-sep.exe

clean: 
	rm -f *.exe *.o


background-sep.o: background-sep.cpp
	$(CXX) -c $(CFLAGS) $^ -o $@

background-sep.exe: background-sep.o
	$(CXX)  $(LFLAGS) $^ -o $@

