CC=gcc
CXX=g++

inkscape.exe: inkscape.o svg2pdf.o
	$(CXX) -s -Ofast $^ `pkg-config --libs librsvg-2.0 cairo-pdf` -o $@

inkscape.o: inkscape.cpp
	$(CXX) -s -Ofast -std=c++20 -c $^ -o $@

svg2pdf.o: svg2pdf.cpp
	$(CXX) -s -Ofast -c `pkg-config --cflags librsvg-2.0` $^ -o $@