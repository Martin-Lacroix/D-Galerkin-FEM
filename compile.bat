mkdir build
xcopy gmsh-4.1.dll build\
g++ -O2 source\configParser.cpp source\utils.cpp source\Mesh.cpp source\solver.cpp source\dgalerkin.cpp ^
-fopenmp -I C:\ProgramData\Eigen -L include\ -lgmsh -o build\dgalerkin.exe
