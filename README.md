[![Build Status](https://travis-ci.org/joommf/oommf-extension-dmi-cnv.svg?branch=master)](https://travis-ci.org/joommf/oommf-extension-dmi-cnv)

# [OOMMF](https://math.nist.gov/oommf/) extension: Dzyaloshinskii-Moriya interaction (DMI) for crystallographic class Cnv

Authors: David Cortés-Ortuño<sup>1</sup>, Marijan Beg<sup>1,2</sup>, Vanessa Nehruji<sup>3</sup>, Ryan A. Pepper<sup>1</sup>, and Hans Fangohr<sup>1,2</sup>

<sup>1</sup> Faculty of Engineering and the Environment, University of Southampton, Southampton SO17 1BJ, United Kingdom
<sup>2</sup> European XFEL GmbH, Holzkoppel 4, 22869 Schenefeld, Germany
<sup>3</sup> Department of Physics, University of Durham, Durham DH1 3LE, United Kingdom

## Introduction

Different Dzyaloshinskii-Moriya interaction forms can be written as different combinations of Lifshitz invariants depending on the crystallographic class of the magnetic material [1]. The mathematical formalism was also applied to interfacial DMI systems [2]. This module is a modification and extension of the OOMMF extension for the interfacial system [3].

## Energy density

The DMI energy density for crystallographic class Cnv as a sum of Lifshitz invariants [1, 2] is

<a href="https://www.codecogs.com/eqnedit.php?latex=\LARGE&space;w&space;=&space;D&space;\left(&space;\mathcal{L}_{xz}^{(x)}&space;&plus;&space;\mathcal{L}_{yz}^{(y)}&space;\right)=&space;D&space;\left(&space;\mathbf{m}&space;\cdot&space;\bm{\nabla}m_{z}&space;-&space;m_{z}&space;\bm{\nabla}\cdot\mathbf{m}&space;\right)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\LARGE&space;w&space;=&space;D&space;\left(&space;\mathcal{L}_{xz}^{(x)}&space;&plus;&space;\mathcal{L}_{yz}^{(y)}&space;\right)=&space;D&space;\left(&space;\mathbf{m}&space;\cdot&space;\bm{\nabla}m_{z}&space;-&space;m_{z}&space;\bm{\nabla}\cdot\mathbf{m}&space;\right)" title="\LARGE w = D \left( \mathcal{L}_{xz}^{(x)} + \mathcal{L}_{yz}^{(y)} \right)= D \left( \mathbf{m} \cdot \bm{\nabla}m_{z} - m_{z} \bm{\nabla}\cdot\mathbf{m} \right)" /></a>

where <a href="https://www.codecogs.com/eqnedit.php?latex=D&space;[\text{J}/\text{m}^{2}]" target="_blank"><img src="https://latex.codecogs.com/gif.latex?D&space;[\text{J}/\text{m}^{2}]" title="D [\text{J}/\text{m}^{2}]" /></a> is the DMI constant and <a href="https://www.codecogs.com/eqnedit.php?latex=\mathbf{m}&space;=&space;\mathbf{M}/M_\text{s}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbf{m}&space;=&space;\mathbf{M}/M_\text{s}" title="\mathbf{m} = \mathbf{M}/M_\text{s}" /></a> is the normalised magnetisation field.

## Periodic boundary conditions

This OOMMF extension works both with and without periodic boundary conditions (PBC). Therefore, it is possible to use the same class in either kind of mesh (`Oxs_RectangularMesh` or `Oxs_PeriodicRectangularMesh`).

## Installation

To install this extension:
1. Copy `DMI_Cnv.cc` and `DMI_Cnv.h` files from the `src` directory in this repository into the `app/oxs/local` directory in the OOMMF main directory.
2. Recompile OOMMF, usually by running
```
tclsh oommf.tcl pimake distclean && tclsh oommf.tcl pimake upgrade && tclsh oommf.tcl pimake
```

## Examples

Examples are provided in `.mif` files for the stabilisation of an isolated skyrmion in a confined cuboid (no periodic boundary conditions) and for the stabilisation of a skyrmion lattice in a unit cell of an infinite system (with periodic boundary conditions).

## Support

If you require support on installation or usage of this OOMMF extension, you are welcome to raise an issue in our [joommf/help](https://github.com/joommf/help) repository.

## How to cite

If you use this OOMMF extension in your research, please cite it as:

## Acknowledgements

This extension was developed as a part of OpenDreamKit – Horizon 2020 European Research Infrastructure project (676541) and the EPSRC Programme grant on Skyrmionics (EP/N032128/1).

## References

[1] A. Bogdanov and D. Yablonskii. Thermodynamically stable "vortices" in magnetically ordered crystals. The mixed state of magnets. [Zh. Eksp. Teor. Fiz 95, 178 (1989)](http://www.jetp.ac.ru/cgi-bin/e/index/e/68/1/p101?a=list).

[2] A. O. Leonov, T. L. Monchesky, N. Romming, A. Kubetzka, A. N. Bogdanov, and R. Wiesendanger. The properties of isolated chiral skyrmions in thin magnetic films. [New J. of Phys. 18, 065003 (2015)](http://iopscience.iop.org/article/10.1088/1367-2630/18/6/065003/meta).

[3] S. Rohart and A. Thiaville. Skyrmion confinement in ultrathin film nanostructures in the presence of Dzyaloshinskii-Moriya interaction. [Phys. Rev. B 88, 184422 (2013)](http://journals.aps.org/prb/abstract/10.1103/PhysRevB.88.184422).
