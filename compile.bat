mkdir output
xcopy gmsh-4.1.dll output\

set path-eigen=C:\Local\msys64\mingw64\include\eigen3
g++ -O2 source\*.cpp -fopenmp -I %path-eigen% -L include\ -lgmsh -o output\dgalerkin.exe
