#include "tp0.h"
#include "Matrix.h"

int main(int argc, char** argv){
	
      int result = parseArguments(argc, argv);
            
      if(result == 0)
	  result = leerEntradaEstandard();
      else if (result == 1)
	  perror("Error al obtener los argumentos.");
            
      return 0;
}
