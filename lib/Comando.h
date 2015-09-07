/*
 ============================================================================
 Name        : Comando.h
 Author      : Opromolla - Petalas - Tapia
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include "Matrix.h"

#ifndef COMANDO_H
#define COMANDO_H

// Códigos de Error
#define ERROR_DE_ARGUMENTOS -1
#define ERROR_AL_ABRIR_ARCHIVO -2
#define MAX_BUFFER_READ 400
#define EXITO 0


int showMenuHelp();
int showMenuVersion();

#endif
