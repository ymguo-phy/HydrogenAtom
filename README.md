# HydrogenAtom
MATLAB visual simulation of the Schrödinger equation of Hydrogen Atom
## Introduction
这个程序组目的在于绘制各部分的氢原子模拟方程,包含球谐方程,径向方程,电子云模拟

The purpose of this set of programs is to plot the equations for the various parts of the hydrogen atom simulation, including the Spherical Harmonic, Radial Function and Hydrogen Electron Cloud.

## Program

### Guo_Spherical_harmonic.m
https://github.com/GuoYimingac/HydrogenAtom/blob/main/Guo_Spherical_harmonic.m

This function can be used to obtain an image of the spherical harmonic equation by entering the orbital quantum number, the magnitude quantum number, and optionally rotating and dragging it.

Picture Preview
![Spherical Harmonic Function](https://user-images.githubusercontent.com/77337499/124486197-edae4a00-dddf-11eb-80d7-8fd831465891.png)
### Guo_Radial_function.m
https://github.com/GuoYimingac/HydrogenAtom/blob/main/Guo_Radial_function.m
This function is obtained by entering the principle quantum number and the orbital quantum number.The radial function (the horizontal coordinate is the ratio of the radius to the Bohr Radius)
The second image is that of the probability distribution of the radial distribution obtained by the Monte Carlo method.
Picture Preview
![Radial Probability Function](https://user-images.githubusercontent.com/77337499/124486848-99579a00-dde0-11eb-9f0c-23ab94835a64.png)
![Monte Carlo Plot of Radial Function](https://user-images.githubusercontent.com/77337499/124486794-8c3aab00-dde0-11eb-93c7-27a9187ce2fa.png)

### Peter_Electron_cloud.m
This function plots the isosurface graph with set probabilty of 0.5 by entering three quantum numbers.
Picture Preview
![Electron Cloud](https://user-images.githubusercontent.com/77337499/124487600-809bb400-dde1-11eb-8664-7a4a4ad2f3b1.png)


### Monte Carlo.m
https://github.com/GuoYimingac/HydrogenAtom/blob/main/Peter_Electron_cloud.m
The test program for Monte Carlo method

### LaguerreGen.m
Auxiliary program for solving legendre polynomials

## How to use




