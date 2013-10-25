CXX=g++
CC=gcc

CFLAGS?=-Wall -g -I/usr/include/opencv2
LFLAGS?= -lopencv_core -lopencv_highgui -lopencv_imgproc -lopencv_legacy -lopencv_contrib -lopencv_calib3d -lopencv_features2d -lopencv_flann -lopencv_ml -lopencv_objdetect -lopencv_video -lncurses
 
 #-lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_features2d


all: background-sep.exe

clean: 
	rm -f *.exe *.o


background-sep.o: background-sep.cpp
	$(CXX) -c $(CFLAGS) $^ -o $@

background-sep.exe: background-sep.o
	$(CXX)  $^ -o $@ $(LFLAGS) 

