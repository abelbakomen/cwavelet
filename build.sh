 #!/bin/bash
 #build modules form src dir

 gfortran --free-form -c  ./src/*.f ./src/utils/*.f ./src/tests/*.f  -J./mod
 mv *.o ./obj 


 gfortran --free-form ./obj/test_utilities.o  ./obj/utilities.o    -o test_utilities 
 gfortran --free-form ./obj/test_integrals.o  ./obj/integrals.o  -o test_integrals 
 gfortran --free-form ./obj/test_mother_wavelets.o   ./obj/mother_wavelets.o   -o test_mother_wavelets 
 gfortran --free-form ./obj/test_ondellete.o  ./obj/csv_file.o ./obj/utilities.o ./obj/integrals.o ./obj/mother_wavelets.o ./obj/ondellete.o  -o test_ondellete 

 mv test_utilities test_integrals test_mother_wavelets test_ondellete  ./bin