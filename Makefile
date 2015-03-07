CC=gcc
CPP=g++
CFLAGS=-O2
CPPFLAGS=-fpermissive -O2
LDFLAGS=-static-libgcc
OBJECTS=aft.o CAksFileTransfert.o CCPCBooster.o CDSKFile.o CError.o COptionParser.o optionParser.o rs232.o

aft: $(OBJECTS)
	$(CPP) -o aft $(OBJECTS) $(LDFLAGS)

%.o : %.c
	$(CC) -c $(CFLAGS) $< -o $@

%.o : %.cpp
	$(CPP) -c $(CPPFLAGS) $< -o $@

clean:
	$(RM) *.o *.exe