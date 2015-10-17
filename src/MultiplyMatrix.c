#include "MultiplyMatrix.h"

void multiplyMatrixes(int filasM1, int columnasM1, int filasM2, int columnasM2, float* valoresM1, float* valoresM2, float* valoresMR) {

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
