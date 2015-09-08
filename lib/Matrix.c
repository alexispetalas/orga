#include "Matrix.h"

int doX(char *filename)
{
  char * line = NULL;
  size_t len = 0;
  ssize_t read;
  FILE *file;

      if (strlen(filename) >  0)
      {
      	file = fopen(filename, "r");
      	if (file == NULL)
    		{
    			fprintf(stderr, "Error al abrir archivo de entrada %s \n", filename);
    			return ERROR_AL_ABRIR_ARCHIVO;
    		}

        while ((read = getline(&line, &len, file)) != -1) {
            parseline(line, read);
        }

        fclose(file);
        if (line)
            free(line);
      }

	return EXITO;
}

void parseline(char* linea, int len){
  if (len > 0) {
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
  }
}
