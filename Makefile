CXX=g++
CXXFLAGS=-D_WINDOWS -fpermissive -static-libgcc -O2
SOURCES=aft.cpp CAksFileTransfert.cpp CCPCBooster.cpp CDSKFile.cpp CError.cpp COptionParser.cpp optionParser.c

aft: *.cpp *.h *.c
	${CXX} -o aft ${SOURCES} ${CXXFLAGS}
