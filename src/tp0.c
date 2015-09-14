#include "tp0.h"

int main(int argc, char** argv){

	T_ProgramSettings settings = parseArguments(argc, argv);
	int i = 0;
	for(; i < settings.paramsInCount ; ++i){
		printf("arg: %s\n", settings.paramsIn[i]);
	}

/*
	FILE *fEntrada = fopen(settings.arcin,"r");
	if(fEntrada == NULL){
		return 1;
	}

	imprimirLineas(fEntrada, &settings);

	fclose(fEntrada);
*/

	return 0;
}
