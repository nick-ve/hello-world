### Set links to the ROOT stuff for processing on my Win10 power shell ###
# aapje
### Set environment variables to run the ROOT package ###
export ROOTSYS=${HOME}/software/root_v5.34.38
export LD_LIBRARY_PATH=${ROOTSYS}/lib:$LD_LIBRARY_PATH
#
### My private ROOT loadable library area
export MYLIBS=${HOME}/software/pythia6
#
### Pointer to the NCFS top directory and the external (data) drive
export NCFS=${HOME}/software/ncfs
if [ $1 ] 
 then
  export NCFS=/mnt/$1/nick/cxx/source/ncfs
fi
### Pointer to the external (data) drive
export EXTDRIVE=${HOME}
if [ $2 ]
 then
export EXTDRIVE=/mnt/$2
fi
#
### Set prompt to ncfs>
export PS1="ncfs>"
#
export PATH=${ROOTSYS}/bin:$PATH
#
echo " ROOTSYS="${ROOTSYS} " NCFS="${NCFS} " EXTDRIVE="${EXTDRIVE}
####
C:\nick\test\git\hello-world\ncfs.sh March 6, 2019  15:34

