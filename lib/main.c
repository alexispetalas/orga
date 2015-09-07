#include <stdio.h>
#include <unistd.h> // para procesar las opciones
#include <stdlib.h>
#include <string.h>
#include <getopt.h>

#include "Matrix.h"

int main(int argc, char* argv[]) {
  char * file="";
  file =  argv[argc-1];
	int retorno = doX(file);

	return retorno;
}
