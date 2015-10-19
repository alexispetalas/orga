#include "argParser.h"

int showMenuHelp()
{
    printf("Usage:\n");
    printf("  ./tp1 -h\n");
    printf("  ./tp1 -V\n");
    printf("  ./tp1  < in_file > out_file\n");
    printf("Options:\n");
    printf("  -V, --version\tPrint version and quit.\n");
    printf("  -h, --help\tPrint this information and quit.\n");
    printf("Examples:\n");
    printf("  ./tp1 < in.txt > out.txt\n");
    printf("  cat in.txt | ./tp1 > out.txt\n");
    return EXITO;
}

int showMenuVersion()
{
	printf("\n\tTP1 - assembly MIPS\n");
	printf("  (66.20) Organización de las Computadoras\n");
 	printf("------------------------------------------------\n");
	printf("\t2do Cuatrimestre de 2015\n");
	printf("\t      Versión: 1.0\n");
	printf("\nAutores:\n");
	printf("         Opromolla, Giovanni - 87761\n");
	printf("         Tapia, Jimena Soledad - 88392\n\n");
	return EXITO;

}


int readOptions (int argc, char** argv, const char* op_cortas, const struct option op_largas[]) {

	int siguiente_opcion = 0;
	int result = ERROR;

	siguiente_opcion = getopt_long(argc, argv, op_cortas, op_largas, NULL);

	switch (siguiente_opcion) {
		case 'h' : /* -h o --help */
			showMenuHelp();
			result = EXITO_HELP;
			break;
		case 'V' : /* -V o --version */
			showMenuVersion();
			result = EXITO_HELP;
			break;
		case '?' : /* opción no valida */
			showMenuHelp();
			result = EXITO_HELP;
			break;
		default : /* Algo más? No esperado. Abortamos */
			result = EXITO;
	}

	return result;
}



int parseArguments (int argc, char** argv) {
  
	int result = ERROR;
		
	/* Una cadena que lista las opciones cortas válidas */
	const char* op_cortas = "hV" ;

	/* Una estructura de varios arrays describiendo los valores largos */
	const struct option op_largas[] = {
		{ "help",         0,  NULL,   'h'},
		{ "version",      0,  NULL,   'V'},
		{ NULL,           0,  NULL,   0  }
	};

	result = readOptions(argc, argv, op_cortas, op_largas);
	
	if(result == ERROR){
	    showMenuHelp();
	}
	
	return result;
}
