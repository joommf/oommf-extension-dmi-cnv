# OOMMF extension: Dzyaloshinskii-Moriya interaction for crystallographic class C<sub><i>nv</i></sub>

David Cortés-Ortuño<sup>1,2</sup>, Marijan Beg<sup>1,3</sup>, Martin Lang<sup>1</sup>, Vanessa Nehruji<sup>1,4</sup>, Ryan A. Pepper<sup>1</sup>, and Hans Fangohr<sup>1,5,6</sup>

<sup>1</sup> Faculty of Engineering and the Environment, University of Southampton, Southampton SO17 1BJ, United Kingdom  
<sup>2</sup> Department of Earth Sciences, Utrecht University, 3584 CD Utrecht, The Netherlands  
<sup>3</sup> Department of Earth Science and Engineering, Imperial College London, London SW7 2AZ, United Kingdom  
<sup>4</sup> Department of Physics, University of Durham, Durham DH1 3LE, United Kingdom  
<sup>5</sup> Max Planck Institute for the Structure and Dynamics of Matter, Luruper Chaussee 149, 22761 Hamburg, Germany   
<sup>6</sup> Center for Free-Electron Laser Science, Luruper Chaussee 149, 22761 Hamburg, Germany

| Description | Bagde |
| ---         | ---   |
| Tests       | [![workflow](https://github.com/joommf/oommf-extension-dmi-cnv/actions/workflows/workflow.yml/badge.svg)](https://github.com/joommf/oommf-extension-dmi-cnv/actions/workflows/workflow.yml) |
| Licensce    | [![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause) |
| DOI         | [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1196417.svg)](https://doi.org/10.5281/zenodo.1196417) |

## About

Different Dzyaloshinskii-Moriya interaction forms can be written as different combinations of Lifshitz invariants depending on the crystallographic class of the magnetic material [1]. This mathematical formalism can also be applied to interfacial DMI systems [2], where the lack of inversion symmetry in the magnetic system is present due to the interfaces between different materials. It is usually referred to the C<sub>nv</sub> DMI as interfacial DMI.

This module is a modification and extension of the OOMMF extension for interfacial systems [3] and the differences are:

1. Sign of the DMI constant,
2. This OOMMF extension supports periodic boundary conditions.

## Energy density

The DMI energy density for the crystallographic class C<sub>nv</sub> as a sum of Lifshitz invariants [1, 2] is

<a bhref="https://www.codecogs.com/eqnedit.php?latex=\LARGE&space;w_x&space;=&space;D&space;\left(&space;\mathcal{L}_{yx}^{(y)}&space;&plus;&space;\mathcal{L}_{zx}^{(z)}&space;\right)=&space;D&space;\left(&space;\mathbf{m}&space;\cdot&space;\nabla&space;m_{x}&space;-&space;m_{x}&space;\nabla\cdot\mathbf{m}&space;\right)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\LARGE&space;w_x&space;=&space;D&space;\left(&space;\mathcal{L}_{yx}^{(y)}&space;&plus;&space;\mathcal{L}_{zx}^{(z)}&space;\right)=&space;D&space;\left(&space;\mathbf{m}&space;\cdot&space;\nabla&space;m_{x}&space;-&space;m_{x}&space;\nabla\cdot\mathbf{m}&space;\right)" title="\LARGE w_x = D \left( \mathcal{L}_{yx}^{(x)} + \mathcal{L}_{zx}^{(z)} \right)= D \left( \mathbf{m} \cdot \nabla m_{x} - m_{x} \nabla\cdot\mathbf{m} \right)" /></a>
<a bhref="https://www.codecogs.com/eqnedit.php?latex=\LARGE&space;w_y&space;=&space;D&space;\left(&space;\mathcal{L}_{xy}^{(x)}&space;&plus;&space;\mathcal{L}_{zy}^{(z)}&space;\right)=&space;D&space;\left(&space;\mathbf{m}&space;\cdot&space;\nabla&space;m_{y}&space;-&space;m_{y}&space;\nabla\cdot\mathbf{m}&space;\right)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\LARGE&space;w_y&space;=&space;D&space;\left(&space;\mathcal{L}_{xy}^{(x)}&space;&plus;&space;\mathcal{L}_{zy}^{(z)}&space;\right)=&space;D&space;\left(&space;\mathbf{m}&space;\cdot&space;\nabla&space;m_{y}&space;-&space;m_{y}&space;\nabla\cdot\mathbf{m}&space;\right)" title="\LARGE w_y = D \left( \mathcal{L}_{xy}^{(x)} + \mathcal{L}_{zy}^{(z)} \right)= D \left( \mathbf{m} \cdot \nabla m_{y} - m_{y} \nabla\cdot\mathbf{m} \right)" /></a>
<a bhref="https://www.codecogs.com/eqnedit.php?latex=\LARGE&space;w_z&space;=&space;D&space;\left(&space;\mathcal{L}_{xz}^{(x)}&space;&plus;&space;\mathcal{L}_{yz}^{(y)}&space;\right)=&space;D&space;\left(&space;\mathbf{m}&space;\cdot&space;\nabla&space;m_{z}&space;-&space;m_{z}&space;\nabla\cdot\mathbf{m}&space;\right)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\LARGE&space;w_z&space;=&space;D&space;\left(&space;\mathcal{L}_{xz}^{(x)}&space;&plus;&space;\mathcal{L}_{yz}^{(y)}&space;\right)=&space;D&space;\left(&space;\mathbf{m}&space;\cdot&space;\nabla&space;m_{z}&space;-&space;m_{z}&space;\nabla\cdot\mathbf{m}&space;\right)" title="\LARGE w_z = D \left( \mathcal{L}_{xz}^{(x)} + \mathcal{L}_{yz}^{(y)} \right)= D \left( \mathbf{m} \cdot \nabla m_{z} - m_{z} \nabla\cdot\mathbf{m} \right)" /></a>

where <a href="https://www.codecogs.com/eqnedit.php?latex=D&space;[\text{J}/\text{m}^{2}]" target="_blank"><img src="https://latex.codecogs.com/gif.latex?D&space;[\text{J}/\text{m}^{2}]" title="D [\text{J}/\text{m}^{2}]" /></a> is the DMI constant and <a href="https://www.codecogs.com/eqnedit.php?latex=\mathbf{m}&space;=&space;\mathbf{M}/M_\text{s}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbf{m}&space;=&space;\mathbf{M}/M_\text{s}" title="\mathbf{m} = \mathbf{M}/M_\text{s}" /></a> is the normalised magnetisation field.

## Periodic boundary conditions

This OOMMF extension supports periodic boundary conditions. It works with both `Oxs_RectangularMesh` and `Oxs_PeriodicRectangularMesh`.

## Installation

1. Copy `DMI_Cnv_[xyz].cc` and `DMI_Cnv_[xyz].h` files from the `src` directory in this repository into the `app/oxs/local` directory in the OOMMF main directory.
2. Recompile OOMMF, usually by running
```
$ tclsh oommf.tcl pimake distclean && tclsh oommf.tcl pimake upgrade && tclsh oommf.tcl pimake
```

## Examples

We give examples in `.mif` files for the relaxation resulting in an isolated skyrmion state in a confined cuboid (with no periodic boundary conditions) and relaxation resulting in a skyrmion lattice in a unit cell of an infinite system (with periodic boundary conditions). Examples demonstrate the use of all three terms (with appropriately adjusted geometry).

## Other crystallographic classes

DMI extensions for other crystallographic classes are [D<sub><i>2d</i></sub>](https://github.com/joommf/oommf-extension-dmi-d2d) and [T(O)](https://github.com/joommf/oommf-extension-dmi-t).

## Support

If you require support, have questions, want to report a bug or suggest an improvement, please raise an issue in [ubermag/help](https://github.com/ubermag/help) repository.

## Contributions

All contributions are welcome, however small they are. If you would like to contribute, please fork the repository and create a pull request. If you are unsure how to contribute, please contact us by raising an issue in [ubermag/help](https://github.com/ubermag/help) repository, and we will help you get started and assist you on the way.

## How to cite


1. David Cortés-Ortuño et al. Proposal for a micromagnetic standard problem for materials with Dzyaloshinskii–Moriya interaction. [*New J. Phys.* **20**, 113015](https://doi.org/10.1088/1367-2630/aaea1c) (2018).

2. David Cortés-Ortuño, Marijan Beg, Vanessa Nehruji, Ryan A. Pepper, & Hans Fangohr. OOMMF extension: Dzyaloshinskii-Moriya interaction (DMI) for the crystallographic class Cnv (Version v1.0). Zenodo. http://doi.org/10.5281/zenodo.1196417 (12 March 2018).

## License

Licensed under the BSD 3-Clause "New" or "Revised" License. For details, please refer to the [LICENSE](LICENSE) file.

## Acknowledgements

- [OpenDreamKit](http://opendreamkit.org/) – Horizon 2020 European Research Infrastructure project (676541)

- EPSRC Programme Grant on [Skyrmionics](http://www.skyrmions.ac.uk) (EP/N032128/1)

## References

[1] A. Bogdanov and D. Yablonskii. Thermodynamically stable "vortices" in magnetically ordered crystals. The mixed state of magnets. [Zh. Eksp. Teor. Fiz 95, 178](http://www.jetp.ac.ru/cgi-bin/e/index/e/68/1/p101?a=list) (1989).

[2] A. O. Leonov, T. L. Monchesky, N. Romming, A. Kubetzka, A. N. Bogdanov, and R. Wiesendanger. The properties of isolated chiral skyrmions in thin magnetic films. [*New J. of Phys.* **18**, 065003](http://iopscience.iop.org/article/10.1088/1367-2630/18/6/065003/meta) (2015).

[3] S. Rohart and A. Thiaville. Skyrmion confinement in ultrathin film nanostructures in the presence of Dzyaloshinskii-Moriya interaction. [*Phys. Rev. B* **88**, 184422](http://journals.aps.org/prb/abstract/10.1103/PhysRevB.88.184422) (2013).
