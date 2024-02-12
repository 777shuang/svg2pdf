PREFIX=x86_64-w64-mingw32-
CC=$(PREFIX)gcc
CXX=$(PREFIX)g++
BIN=/mingw64/bin

inkscape.exe: inkscape.o svg2pdf.o
	$(CXX) -s -Ofast $^ `pkg-config --libs librsvg-2.0 cairo-pdf` -o $@

inkscape.o: inkscape.cpp
	$(CXX) -s -Ofast -std=c++20 -c $< -o $@

svg2pdf.o: svg2pdf.cpp libgcc_s_seh-1.dll libgobject-2.0-0.dll librsvg-2-2.dll libstdc++-6.dll libwinpthread-1.dll libffi-8.dll libglib-2.0-0.dll libintl-8.dll libcairo-2.dll libcairo-gobject-2.dll libgdk_pixbuf-2.0-0.dll libpango-1.0-0.dll libgio-2.0-0.dll libpangocairo-1.0-0.dll libxml2-2.dll libiconv-2.dll libpcre2-8-0.dll libfontconfig-1.dll libfreetype-6.dll libpixman-1-0.dll libpng16-16.dll libfribidi-0.dll zlib1.dll libharfbuzz-0.dll libthai-0.dll libgmodule-2.0-0.dll libpangoft2-1.0-0.dll liblzma-5.dll libpangowin32-1.0-0.dll libbz2-1.dll libbrotlidec.dll libgraphite2.dll libdatrie-1.dll libexpat-1.dll libbrotlicommon.dll
	$(CXX) -s -Ofast -c `pkg-config --cflags librsvg-2.0` $< -o $@

libgcc_s_seh-1.dll: $(BIN)/libgcc_s_seh-1.dll
	cp $^ .
libgobject-2.0-0.dll: $(BIN)/libgobject-2.0-0.dll
	cp $^ .
librsvg-2-2.dll: $(BIN)/librsvg-2-2.dll
	cp $^ .
libstdc++-6.dll: $(BIN)/libstdc++-6.dll
	cp $^ .
libwinpthread-1.dll: $(BIN)/libwinpthread-1.dll
	cp $^ .
libffi-8.dll: $(BIN)/libffi-8.dll
	cp $^ .
libglib-2.0-0.dll: $(BIN)/libglib-2.0-0.dll
	cp $^ .
libintl-8.dll: $(BIN)/libintl-8.dll
	cp $^ .
libcairo-gobject-2.dll: $(BIN)/libcairo-gobject-2.dll
	cp $^ .
libgdk_pixbuf-2.0-0.dll: $(BIN)/libgdk_pixbuf-2.0-0.dll
	cp $^ .
libpango-1.0-0.dll: $(BIN)/libpango-1.0-0.dll
	cp $^ .
libgio-2.0-0.dll: $(BIN)/libgio-2.0-0.dll
	cp $^ .
libpangocairo-1.0-0.dll: $(BIN)/libpangocairo-1.0-0.dll
	cp $^ .
libxml2-2.dll: $(BIN)/libxml2-2.dll
	cp $^ .
libiconv-2.dll: $(BIN)/libiconv-2.dll
	cp $^ .
libpcre2-8-0.dll: $(BIN)/libpcre2-8-0.dll
	cp $^ .
libfontconfig-1.dll: $(BIN)/libfontconfig-1.dll
	cp $^ .
libfreetype-6.dll: $(BIN)/libfreetype-6.dll
	cp $^ .
libcairo-2.dll: $(BIN)/libcairo-2.dll
	cp $^ .
libpixman-1-0.dll: $(BIN)/libpixman-1-0.dll
	cp $^ .
libpng16-16.dll: $(BIN)/libpng16-16.dll
	cp $^ .
libfribidi-0.dll: $(BIN)/libfribidi-0.dll
	cp $^ .
zlib1.dll: $(BIN)/zlib1.dll
	cp $^ .
libharfbuzz-0.dll: $(BIN)/libharfbuzz-0.dll
	cp $^ .
libthai-0.dll: $(BIN)/libthai-0.dll
	cp $^ .
libgmodule-2.0-0.dll: $(BIN)/libgmodule-2.0-0.dll
	cp $^ .
libpangoft2-1.0-0.dll: $(BIN)/libpangoft2-1.0-0.dll
	cp $^ .
liblzma-5.dll: $(BIN)/liblzma-5.dll
	cp $^ .
libpangowin32-1.0-0.dll: $(BIN)/libpangowin32-1.0-0.dll
	cp $^ .
libbz2-1.dll: $(BIN)/libbz2-1.dll
	cp $^ .
libbrotlidec.dll: $(BIN)/libbrotlidec.dll
	cp $^ .
libgraphite2.dll: $(BIN)/libgraphite2.dll
	cp $^ .
libdatrie-1.dll: $(BIN)/libdatrie-1.dll
	cp $^ .
libexpat-1.dll: $(BIN)/libexpat-1.dll
	cp $^ .
libbrotlicommon.dll: $(BIN)/libbrotlicommon.dll
	cp $^ .
