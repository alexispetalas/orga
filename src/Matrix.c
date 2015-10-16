#include "Matrix.h"

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

		multiplicarMatrices(m1->rows, m1->columns, m2->rows, m2->columns, m1->values, m2->values, matrix->values);

	}else{
    	fprintf(stderr, "Las propiedades de multiplicación de matrices no estan satisfechas.\n");
    	exit(1);
	}

	return matrix;

}

void multiplicarMatrices(int filasM1, int columnasM1, int filasM2, int columnasM2, float* valoresM1, float* valoresM2, float* valoresMR) {
	
	int row1, column2,  k;
	float sum;

	for(row1=0; row1<filasM1; ++row1) //filas de la primer matriz
	{
	    for(column2=0; column2<columnasM2; ++column2)  //columnas de la segunda matriz
	    {
	    	sum=0;

	    	for(k=0;k<columnasM1;k++)
	    		sum=sum + valoresM1[(row1*columnasM1) + k] * valoresM2[(k *columnasM2) + column2];
	    	
	    	valoresMR[(row1*columnasM2) + column2]=sum;
	    }
	}
}

