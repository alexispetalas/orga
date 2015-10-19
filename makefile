DEPS = \
       src/argParser.h \
       src/MultiplyMatrix.h \
       src/Matrix.h \
       src/tp0.h

OBJ = build/obj/argParser.o \
	  build/obj/MultiplyMatrix.o \
      build/obj/Matrix.o \
      build/obj/tp0.o

VIRTUAL = gxemul-6620-20070927

CC=gcc
CP=cp
CFLAGS=-I./src -Wall $(ACFLAGS)

build: prepare tp1

tp1: $(OBJ)
	gcc -o build/$@ $(OBJ) $(CFLAGS)

build/obj/argParser.o: src/argParser.c $(DEPS)
	$(CC) -c -o $@ src/argParser.c $(CFLAGS)

build/obj/MultiplyMatrix.o: src/MultiplyMatrix.S $(DEPS)
	$(CC) -c -o $@ src/MultiplyMatrix.S $(CFLAGS)

build/obj/Matrix.o: src/Matrix.c $(DEPS)
	$(CC) -c -o $@ src/Matrix.c $(CFLAGS)
	
build/obj/tp0.o: src/tp0.c $(DEPS)
	$(CC) -c -o $@ src/tp0.c $(CFLAGS)

prepare:
	-mkdir -p build
	-mkdir -p build/doc
	-mkdir -p build/obj

clean:
	rm -rf build tags

virtual-start:
	sudo ifconfig lo:0 172.20.0.1
	if [ ! -d ./gxemul/$(VIRTUAL) ]; then bzip2 -dc ./gxemul/$(VIRTUAL).tar.bz2 | cpio --sparse -i -v; mv $(VIRTUAL) ./gxemul/ ; fi
	echo "ssh -f -N -R 2222:127.0.0.1:22 $(USER)@172.20.0.1" | xclip -sel clip
	./gxemul/$(VIRTUAL)/gxemul -e 3max -d ./gxemul/$(VIRTUAL)/netbsd-pmax.img

virtual-reset:
	rm -rf ./gxemul/$(VIRTUAL)

virtual-authkey:
	cat ~/.ssh/id_rsa.pub | ssh -p 2222 root@127.0.0.1 "rm -rf .ssh/authorized_keys; mkdir -p ~/.ssh; cat >> ~/.ssh/authorized_keys"

virtual-deploy:
	ssh -p 2222 root@127.0.0.1 "rm -rf ~/deploy; mkdir -p ~/deploy;"
	scp -P 2222 -r makefile src data root@127.0.0.1:/root/deploy

doc: prepare
	pandoc README.md -o build/doc/README.pdf
	pdflatex --output-directory build/doc docs/informe.tex
	pdflatex --output-directory build/doc docs/informe.tex
	pdflatex --output-directory build/doc docs/informe.tex

doc-preview: doc
	evince build/doc/informe.pdf &

doc-spell:
	aspell -t check docs/informe.tex -d es

export: doc
	tar -czvf build/entrega_tp0.tar.gz makefile src data -C build/doc/ informe.pdf README.pdf
