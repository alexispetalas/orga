
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <time.h>

#ifndef MATRIX_H
#define MATRIX_H

// Códigos de Error
#define ERROR_DE_ARGUMENTOS -1
#define ERROR_AL_ABRIR_ARCHIVO -2
#define MAX_BUFFER_READ 400
#define EXITO 0
#define ERROR 1

typedef struct {
	int rows;
	int columns;
	float** values;
} T_Matrix;

int doX(char *filename);
int leerEntradaEstandard();
int parseline(char* linea, int len);

#endif
