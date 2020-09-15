# DGFEM-Wave

Algorithm developped for the **Multiphysics Integrated Computational Project**. The project consists in the implementation of a discontinuous Galerkin finite element solver for acoustic waves on 3-dimensional complex and unstructured meshes using the Gmsh library.

## Use

First, make sure that the Eigen library is installed and that your GCC supports OpenMP. Then move to the source folder and compile the project by providing the Eigen path to the compiler (write on the same line). The path-to-project is the path to the main folder.
```css
g++ -O2 configParser.cpp utils.cpp Mesh.cpp solver.cpp dgalerkin.cpp -fopenmp
-I path-to-Eigen\Eigen -L path-to-project\include\ -lgmsh -o ..\dgalerkin.exe
```
The executable requires a mesh.msh and a config.conf file containing the simulation parameters such as the initial conditions. The meshes can be generated by Gmsh from 1DSound.geo, 2DSound.geo and 3DSound.geo in the mesh folder. The output dgalerkin.msh can then be opened in your Gmsh application to visualize the solution.
```css
.\dgalerkin.exe path-to-project\mesh\mesh.msh path-to-project\mesh\config.conf
```

## Authors

* Martin Lacroix
* Pierre-Olivier Vanberg
* Tom Servais
