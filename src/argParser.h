
#ifndef ARGPARSER_H_
#define ARGPARSER_H_

#include <getopt.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#define MAX 2056
#define MAX_PARAMS_IN 255
#define EXITO 0

typedef struct {
	int paramsInCount;
	char** paramsIn;
} T_ProgramSettings;

T_ProgramSettings parseArguments (int argc, char** argv) ;

#endif /* ARGPARSER_H_ */
