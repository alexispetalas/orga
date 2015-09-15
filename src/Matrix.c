#include "Matrix.h"

#define BUF_SIZE 1024


int leerEntradaEstandard()
{
    char * line = NULL;
    size_t len = 0;
    ssize_t read;

    while ((read = getline(&line, &len, stdin)) != -1) {
	if (parseline(line, read) == ERROR)
	  break;
    }

    if (line)
	free(line);

    return EXITO;
}

char* serializeMatrix(T_Matrix* m ){
    char* matrix_str = NULL;
    
    return matrix_str;
}

T_Matrix* deserializeMatrix(char* m){
  
  T_Matrix* matrix = NULL;
  
  return matrix;
  
}

int parseline(char* linea, int len){
  int result = ERROR;
  if (len > 1) {
    int dimension1 = linea[0] - '0';
    int dimension2 = linea[2] - '0';
    printf("dimensiones: %d x %d \n" ,dimension1,dimension2);
    char* valores = strstr (linea," ");;
    char *token;
    token = strtok(valores, " ");
    printf("matriz\n");
    while( token != NULL )
    {
       printf("%4.8f\n" ,atof(token));
       token = strtok(NULL, " ");
    }
    result = EXITO;
  }
  return result;
}
