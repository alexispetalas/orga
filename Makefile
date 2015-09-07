PROG = ./bin/tp0
CFLAGS = -W -Wall -I../..  -g -O0 $(CFLAGS_EXTRA)
SOURCES = ./lib/*.c 

$(PROG): $(SOURCES)
	$(CC) -o $(PROG) $(SOURCES) $(CFLAGS)

clean:
	rm -rf $(PROG) *.exe *.dSYM *.obj *.exp .*o *.lib
run:
	./bin/tp0
