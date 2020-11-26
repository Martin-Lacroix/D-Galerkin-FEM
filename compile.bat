mkdir output
xcopy gmsh-4.1.dll output\
g++ -O2 source\*.cpp -fopenmp -I C:\ProgramData\Eigen -L include\ -lgmsh -o output\dgalerkin.exe
