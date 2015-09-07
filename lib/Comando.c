
#include "Comando.h"

int showMenuHelp()
{
	fprintf(stdout, "%s\n", "Usage:");
	fprintf(stdout, "%s\n", "tp0 -h");
	fprintf(stdout, "%s\n", "tp0 -V");
	fprintf(stdout, "%s\n", "tp0 < in_file > out_file");
	fprintf(stdout, "%s\n", "Options:");
	fprintf(stdout, "%s\n", "-V, --version Print version and quit.");
	fprintf(stdout, "%s\n", "-h, --help Print this information and quit.");
	fprintf(stdout, "%s\n", "Examples:");
	fprintf(stdout, "%s\n", "tp0 < in.txt > out.txt");
	fprintf(stdout, "%s\n", "cat in.txt | tp0 > out.txt");
	return EXITO;
}

int showMenuVersion()
{
	fprintf(stdout, "%s\n", "TP 0 - Infraestructura Básica");
	fprintf(stdout, "%s\n", "(66.20) Organización de las Computadoras");
 	fprintf(stdout, "%s\n", "------------------------------------------------");
	fprintf(stdout, "%s\n", "2do Cuatrimestre de 2015");
	fprintf(stdout, "%s\n", "Versión: 1er entrega");
	fprintf(stdout, "%s\n", "Autores:");
	fprintf(stdout, "%s\n", "         Petalás, Alexis - 86742");
	fprintf(stdout, "%s\n", "         Opromolla, Giovanni - ");
	fprintf(stdout, "%s\n", "         Tapia, Jimena Soledad - 88392");
	return EXITO;

}
