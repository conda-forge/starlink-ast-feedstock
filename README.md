About starlink-ast-feedstock
============================

Feedstock license: [BSD-3-Clause](https://github.com/conda-forge/starlink-ast-feedstock/blob/main/LICENSE.txt)

Home: http://starlink.eao.hawaii.edu/starlink/AST

Package license: LGPL-2.0-only

Summary: A Library for Handling World Coordinate Systems in Astronomy

Development: https://github.com/Starlink/ast

Documentation: http://starlink.eao.hawaii.edu/devdocs/sun211.htx/sun211.html

The AST library provides a comprehensive range of facilities for attaching world coordinate systems to astronomical data, for retrieving and interpreting that information and for generating graphical output based on it. It's main selling points are:

* Ease of use.
* Facilities for generating plots of generalised non-linear, potentially discontinuous 2-D or 3-D coordinate systems, with detailed control of the appearance of the plot.
* Facilities for converting transparently between different coordinate systems, including a wide range of celestial, spectral and time coordinate systems.
* Facilities for searching a general collection of connected coordinate systems for a coordinate system with any given set of characteristics.
* Allows code for handling WCS information to be written in a general way without regard to the specific nature of the coordinate systems being handled (i.e. whether they represent sky positions, spectral positions, focal plane positions, pixel positions, etc).
* Flexible system for saving and retrieving WCS information, including (but not limited to) a range of different popular FITS descriptions.
* Written in C but has interfaces for C, Fortran, Python, Java (via JNI), Perl, and UNIX shell.
* Extensive documentation.
* LGPL licence.


Current build status
====================


<table>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7282&branchName=main">
            <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/starlink-ast-feedstock?branchName=main">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7282&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/starlink-ast-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_aarch64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7282&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/starlink-ast-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_aarch64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7282&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/starlink-ast-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7282&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/starlink-ast-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_arm64_" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-starlink--ast-green.svg)](https://anaconda.org/conda-forge/starlink-ast) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/starlink-ast.svg)](https://anaconda.org/conda-forge/starlink-ast) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/starlink-ast.svg)](https://anaconda.org/conda-forge/starlink-ast) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/starlink-ast.svg)](https://anaconda.org/conda-forge/starlink-ast) |

Installing starlink-ast
=======================

Installing `starlink-ast` from the `conda-forge` channel can be achieved by adding `conda-forge` to your channels with:

```
conda config --add channels conda-forge
conda config --set channel_priority strict
```

Once the `conda-forge` channel has been enabled, `starlink-ast` can be installed with `conda`:

```
conda install starlink-ast
```

or with `mamba`:

```
mamba install starlink-ast
```

It is possible to list all of the versions of `starlink-ast` available on your platform with `conda`:

```
conda search starlink-ast --channel conda-forge
```

or with `mamba`:

```
mamba search starlink-ast --channel conda-forge
```

Alternatively, `mamba repoquery` may provide more information:

```
# Search all versions available on your platform:
mamba repoquery search starlink-ast --channel conda-forge

# List packages depending on `starlink-ast`:
mamba repoquery whoneeds starlink-ast --channel conda-forge

# List dependencies of `starlink-ast`:
mamba repoquery depends starlink-ast --channel conda-forge
```


About conda-forge
=================

[![Powered by
NumFOCUS](https://img.shields.io/badge/powered%20by-NumFOCUS-orange.svg?style=flat&colorA=E1523D&colorB=007D8A)](https://numfocus.org)

conda-forge is a community-led conda channel of installable packages.
In order to provide high-quality builds, the process has been automated into the
conda-forge GitHub organization. The conda-forge organization contains one repository
for each of the installable packages. Such a repository is known as a *feedstock*.

A feedstock is made up of a conda recipe (the instructions on what and how to build
the package) and the necessary configurations for automatic building using freely
available continuous integration services. Thanks to the awesome service provided by
[Azure](https://azure.microsoft.com/en-us/services/devops/), [GitHub](https://github.com/),
[CircleCI](https://circleci.com/), [AppVeyor](https://www.appveyor.com/),
[Drone](https://cloud.drone.io/welcome), and [TravisCI](https://travis-ci.com/)
it is possible to build and upload installable packages to the
[conda-forge](https://anaconda.org/conda-forge) [anaconda.org](https://anaconda.org/)
channel for Linux, Windows and OSX respectively.

To manage the continuous integration and simplify feedstock maintenance
[conda-smithy](https://github.com/conda-forge/conda-smithy) has been developed.
Using the ``conda-forge.yml`` within this repository, it is possible to re-render all of
this feedstock's supporting files (e.g. the CI configuration files) with ``conda smithy rerender``.

For more information please check the [conda-forge documentation](https://conda-forge.org/docs/).

Terminology
===========

**feedstock** - the conda recipe (raw material), supporting scripts and CI configuration.

**conda-smithy** - the tool which helps orchestrate the feedstock.
                   Its primary use is in the construction of the CI ``.yml`` files
                   and simplify the management of *many* feedstocks.

**conda-forge** - the place where the feedstock and smithy live and work to
                  produce the finished article (built conda distributions)


Updating starlink-ast-feedstock
===============================

If you would like to improve the starlink-ast recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`conda-forge` channel, whereupon the built conda packages will be available for
everybody to install and use from the `conda-forge` channel.
Note that all branches in the conda-forge/starlink-ast-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@brianv0](https://github.com/brianv0/)
* [@timj](https://github.com/timj/)

