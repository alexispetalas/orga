#include "Matrix.h"
#include "MultiplyMatrix.h"
#define BUF_SIZE 255

int leerEntradaEstandard()
{

    char line[BUF_SIZE];
    int num_linea = 0;

    T_Matrix* m1 = NULL;
    T_Matrix* m2 = NULL;
    T_Matrix* m_resultado = NULL;
    /** Lectura de stdin para obtener las matrices linea por linea **/

    while((fgets(line,BUF_SIZE,stdin)) != NULL){

    	if(strlen(line) > 2){
			if (num_linea%2 == 0)		/** Pares **/
			{
				m1 = deserializeMatrix(line, num_linea);
				if (m1 == NULL) {
          /** Algun problema surgio al deserealizar la matriz **/
          fprintf(stderr, "Ocurrio un error al procesar una las lineas. Verique el formato y la cantidad de matrices en el archivo.\n");
  				break;
        }
			}
			else						/** Impares **/
			{
				m2 = deserializeMatrix(line, num_linea);
				if (m2 == NULL){
				  liberarMatriz(m1);
          fprintf(stderr, "Ocurrio un error al procesar una las lineas. Verique el formato y la cantidad de matrices en el archivo.\n");
          break;
        } 	/** Algun problema surgio al deserealizar la matriz **/
				else{
					m_resultado = procesarMatrices(m1, m2);

					if(m_resultado != NULL)
						imprimirMatriz(m_resultado);

					liberarMatriz(m1);
					liberarMatriz(m2);
					liberarMatriz(m_resultado);
				}
			}
			++num_linea;
    	}
	}

    return EXITO;
}

void imprimirMatriz(T_Matrix* matrix){
	int pos;
  printf("%dx%d ", matrix->rows, matrix->columns);
	for (pos=0; pos < (matrix->rows*matrix->columns); pos++)
	{
	    printf("%f ", matrix->values[pos]);
	}
  printf("\n");
}

void liberarMatriz(T_Matrix* matrix){

	free( matrix->values );
	free(matrix);
	matrix = NULL;
}


char* serializeMatrix(T_Matrix* m ){
    char* matrix_str = NULL;

    return matrix_str;
}

int isDigit(char* str){
	int i,res = EXITO, len = strlen(str);

	for(i=0; i < len; ++i)
	{
		if(isalpha(str[i]))
		{
			res = ERROR;
			break;
		}
	}

	return res;
}

T_Matrix* deserializeMatrix(const char* linea, int num_linea){

	int rows = -1;
	int columns = -1;
	int val = sscanf(linea, "%dx%d", &rows, &columns);

	/** Verificar que se hayan podido leer ambos valores **/
	if (val != 2)
	{
		fprintf(stderr, "Error al leer los valores de NxM en la linea %d.\n", num_linea);
		exit(1);
	}
	/** Verificar que ambos valores sean mayores a cero **/
	if((rows < 0) || (columns < 0)){
		fprintf(stderr, "Los valres de NxM deben ser valores positivos. Linea conflictiva: %d.\n", num_linea);
		exit(1);
	}

	/** Creo matriz y aloco su memoria **/
	T_Matrix* matrix = nuevaMatriz(rows, columns);

	/** Obtengo los valores de la matriz **/
    char* valores = strstr (linea," ");;
    char *token;
    token = strtok(valores, " ");

    
    int f=0, c=0;
    while( (token != NULL) && (f < rows ) )
    {
    	if( isDigit(token) == EXITO){
    		matrix->values[(f*columns)+c] = atof(token);
    		token = strtok(NULL, " ");
    		if(f < rows){
    			c++;
    			if(c == columns){
    				f++;
    				c = 0;
    			}
    		}
    	}
    	else{
        	fprintf(stderr, "Valores invalidos en la matriz de %dx%d de la linea %d.\n", matrix->rows, matrix->columns, num_linea );
        	liberarMatriz(matrix);
        	exit(1);
    	}
    }
    
    /** Matriz incompleta **/
    if(f != rows){
    	fprintf(stderr, "Faltan valores en la matriz de %dx%d de la linea %d.\n", matrix->rows, matrix->columns, num_linea );
    	liberarMatriz(matrix);
    	exit(1);
    }

    /** Imprimo la matriz **/
    //imprimirMatriz(matrix);

	return matrix;
}

T_Matrix* nuevaMatriz(int rows, int columns){

	T_Matrix* matrix = (T_Matrix*) malloc(sizeof (T_Matrix) );

	matrix->rows = rows;
	matrix->columns = columns;

	/** Aloco espacio para la matriz **/
	matrix->values = (float*) malloc (sizeof(float)*matrix->rows*matrix->columns);

	return matrix;
}

T_Matrix* procesarMatrices(T_Matrix* m1, T_Matrix* m2){

	T_Matrix* matrix = NULL;

	if(m1->columns == m2->rows) {
		/** Creo matriz y aloco su memoria **/
		matrix = nuevaMatriz(m1->rows, m2->columns);

		multiplyMatrixes(m1->rows, m1->columns, m2->rows, m2->columns, m1->values, m2->values, matrix->values);

	}else{
    	fprintf(stderr, "Las propiedades de multiplicación de matrices no estan satisfechas.\n");
    	exit(1);
	}

	return matrix;

}



