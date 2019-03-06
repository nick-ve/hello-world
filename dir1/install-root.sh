#!/bin/sh
cd ${HOME}/software/root
source configure  --enable-pythia6 --with-pythia6-libdir=${HOME}/software/pythia6 --enable-gsl-shared --enable-builtin-ftgl --enable-mathmore --enable-fftw3 --enable-fitsio --enable-opengl
#
make -j4
En ook hier een nieuwe regel
C:\nick\test\git\hello-world\dir1\install-root.sh March 6, 2019   15:35
