#include "argParser.h"

const char* nombre_programa;

int showMenuHelp()
{
	printf("%s\n", "Usage:");
    printf("  %s -h\n", nombre_programa);
    printf("  %s -V\n", nombre_programa);
    printf("  %s  < in_file > out_file\n", nombre_programa);
    printf("%s\n", "Options:");
    printf("  -V, --version\tPrint version and quit.\n");
    printf("  -h, --help\tPrint this information and quit.\n");
    printf("%s\n", "Examples:");
    printf("  %s < in.txt > out.txt\n", nombre_programa);
    printf("  cat in.txt | %s > out.txt\n", nombre_programa);
    return EXITO;
}

int showMenuVersion()
{
	printf("\n\tTP0 - Infraestructura Básica\n");
	printf("  (66.20) Organización de las Computadoras\n");
 	printf("------------------------------------------------\n");
	printf("\t2do Cuatrimestre de 2015\n");
	printf("\t      Versión: 1.0\n");
	printf("\nAutores:\n");
	printf("         Petalás, Alexis - 86742\n");
	printf("         Opromolla, Giovanni - 87761\n");
	printf("         Tapia, Jimena Soledad - 88392\n\n");
	return EXITO;

}


T_ProgramSettings readOptions (int argc, char** argv, const char* op_cortas, const struct option op_largas[]) {

	T_ProgramSettings settings;
	settings.paramsInCount = 0;
	int siguiente_opcion = 0;

	while (1) {
		/* Llamamos a la función getopt */
		siguiente_opcion = getopt_long(argc, argv, op_cortas, op_largas, NULL);

		if (siguiente_opcion == -1) {
			break; /* No hay más opciones. Rompemos el bucle */
		}

		switch (siguiente_opcion) {
			case 'h' : /* -h o --help */
				showMenuHelp();
				exit(EXIT_SUCCESS);

			case 'V' : /* -v o --version */
				showMenuVersion();
				exit(1);

			case '?' : /* opción no valida */
				showMenuHelp(); /* código de salida 1 */
				exit(1);

			case -1 : /* No hay más opciones */
				break;

			default : /* Algo más? No esperado. Abortamos */
				abort();
		}
	}

	if (optind < argc) {
		settings.paramsInCount = argc - optind;
		settings.paramsIn = &argv[optind];
	}

	return settings;
}



T_ProgramSettings parseArguments (int argc, char** argv) {

	if(argc == 1){
		showMenuHelp();
	}
	/* Una cadena que lista las opciones cortas válidas */
	const char* op_cortas = "hV" ;

	/* Una estructura de varios arrays describiendo los valores largos */
	const struct option op_largas[] = {
		{ "help",         0,  NULL,   'h'},
		{ "version",      0,  NULL,   'V'},
		{ NULL,           0,  NULL,   0  }
	};

	nombre_programa = argv[0];

	T_ProgramSettings settings = readOptions(argc, argv, op_cortas, op_largas);

	return settings;
}
