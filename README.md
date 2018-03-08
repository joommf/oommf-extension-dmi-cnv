# [OOMMF](https://math.nist.gov/oommf/) extension: Dzyaloshinskii-Moriya interaction (DMI) of class Cnv

Authors: David Cortés-Ortuño, Marijan Beg, Vanessa Nehruji, Ryan A. Pepper, and Hans Fangohr

## Introduction

Different DMI forms can be written as different combinations of Lifshitz invariants depending on the crystal symmetry of the magnetic material. This was originally defined by Bogdanov and Yablonskii [1]. The mathematical formalism was also applied to interfacial DMI systems [2]. This module is a modification of the OOMMF extension for the interfacial system studied in Ref. 3.

## Energy density

The DMI energy density of class Cnv as a sum of Lifshitz invariants [1, 2] is

<a href="https://www.codecogs.com/eqnedit.php?latex=\Large&space;w_{\text{DMI}}&space;=&space;D&space;\left(&space;\mathcal{L}_{xz}^{(x)}&space;&plus;&space;\mathcal{L}_{yz}^{(y)}&space;\right)=&space;D&space;\left(&space;\mathbf{m}&space;\cdot&space;\bm{\nabla}m_{z}&space;-&space;m_{z}&space;\bm{\nabla}\cdot\mathbf{m}&space;\right)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\Large&space;w_{\text{DMI}}&space;=&space;D&space;\left(&space;\mathcal{L}_{xz}^{(x)}&space;&plus;&space;\mathcal{L}_{yz}^{(y)}&space;\right)=&space;D&space;\left(&space;\mathbf{m}&space;\cdot&space;\bm{\nabla}m_{z}&space;-&space;m_{z}&space;\bm{\nabla}\cdot\mathbf{m}&space;\right)" title="\Large w_{\text{DMI}} = D \left( \mathcal{L}_{xz}^{(x)} + \mathcal{L}_{yz}^{(y)} \right)= D \left( \mathbf{m} \cdot \bm{\nabla}m_{z} - m_{z} \bm{\nabla}\cdot\mathbf{m} \right)" /></a>

where <a href="https://www.codecogs.com/eqnedit.php?latex=D&space;[\text{J}/\text{m}^{2}]" target="_blank"><img src="https://latex.codecogs.com/gif.latex?D&space;[\text{J}/\text{m}^{2}]" title="D [\text{J}/\text{m}^{2}]" /></a> is the DMI constant and <a href="https://www.codecogs.com/eqnedit.php?latex=\mathbf{m}&space;=&space;\mathbf{M}/M_\text{s}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbf{m}&space;=&space;\mathbf{M}/M_\text{s}" title="\mathbf{m} = \mathbf{M}/M_\text{s}" /></a> is the normalised magnetisation vector field.

## Periodic boundary conditions

This OOMMF extension works both with and without periodic boundary conditions (PBC). Therefore, it is possible to use the same class in either kind of mesh (`Oxs_RectangularMesh` or `Oxs_PeriodicRectangularMesh`).

## Examples

Examples are provided in `.mif` files for the stabilisation of an isolated skyrmion in a confined cuboid (no periodic boundary conditions) and for the stabilisation of a skyrmion lattice in a unit cell of an infinite system (with periodic boundary conditions).

## Installation

To install this extension:
1. Copy `DMI_Cnv.cc` and `DMI_Cnv.h` files from the `src` directory in this repository into the `app/oxs/local` directory in the OOMMF main directory.
2. Recompile OOMMF, usually by running
```
tclsh oommf.tcl pimake distclean && tclsh oommf.tcl pimake upgrade && tclsh oommf.tcl pimake
```

## How to cite

If you use this OOMMF extension in your research, please cite it as:


## References

[1] A. Bogdanov and D. Yablonskii. Thermodynamically stable "vortices" in magnetically ordered crystals. The mixed state of magnets. [Zh. Eksp. Teor. Fiz 95, 178 (1989)](http://www.jetp.ac.ru/cgi-bin/e/index/e/68/1/p101?a=list).

[2] A. O. Leonov, T. L. Monchesky, N. Romming, A. Kubetzka, A. N. Bogdanov, and R. Wiesendanger. The properties of isolated chiral skyrmions in thin magnetic films. [New J. of Phys. 18, 065003 (2015)](http://iopscience.iop.org/article/10.1088/1367-2630/18/6/065003/meta).

[3] S. Rohart and A. Thiaville. Skyrmion confinement in ultrathin film nanostructures in the presence of Dzyaloshinskii-Moriya interaction. [Phys. Rev. B 88, 184422 (2013)](http://journals.aps.org/prb/abstract/10.1103/PhysRevB.88.184422).
