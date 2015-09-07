#include <stdio.h>
#include <unistd.h> // para procesar las opciones
#include <stdlib.h>
#include <string.h>
#include <getopt.h>

#include "Matrix.h"
#include "Comando.h"

int procesarComandos(int argc, char* argv[])
{
	int long_index =0;
	int opt = 0;
	int cflag=0, nflag=10;
	char * file="";

	static struct option long_options[] = {
        {"help",				no_argument,		0,  'h' },
        {"version",				no_argument,		0,  'V' },
        {0,	0,	0,  0 }
    };

	while ((opt = getopt_long(argc, argv,"hVc::n::", long_options, &long_index )) != -1)
	{
		switch (opt) {
			case 'h' :
				showMenuHelp();
				return 0;
				break;
			case 'V' :
				showMenuVersion();
				return 0;
				break;
			default:
			    printf("Comando inexistente.\n");
			    showMenuHelp();
				return ERROR_DE_ARGUMENTOS;
        }
    }

    if  (cflag<1 && nflag<1)
    {
    	printf("Argumento inválido.\n");
    	return ERROR_DE_ARGUMENTOS;
    }


    int bytes = cflag;
    int lines = nflag;

    //Caso en que se tiene entrada por stdin
	if( argc > optind)
	{

		int i = argc-  optind;
		while (i > 0)
		{
			file =  argv[argc-i];
			doX(file);
			i--;
		}

	}
	else
	{
		doX(file);
	}


    return 0;
}

int main(int argc, char* argv[]) {

	int retorno = procesarComandos(argc, argv);

	return retorno;
}
