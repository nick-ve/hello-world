# hello-world
//*CMZ :  1.00/01 04/07/97  16.43.13  by  Nick van Eijndhoven (UU/CERN)
//*-- Author :    Nick van Eijndhoven (UU/CERN)   04/07/97
 
This RALICE cmz file is an attempt to provide an Object Oriented framework,
consisting of C++ classes, in which event reconstruction of the ALICE
detector data can be performed.
In switching to Object Oriented programming, I myself have started to
perform the WA93 and WA98 data analysis within the ROOT [1] framework.
Having seen the great advantages of this system I have started to make my
C++ classes more general in order to use them as an onset for an ALICE
reconstruction (and physics analysis) framework.
The RALICE package can be compiled on all platforms using the GNU G++
compiler and the various classes can be used in standalone mode.
However, running the programs within the ROOT framework greatly enlarges
the analysis capabilities (e.g. histogramming, fitting, graphics etc...).
In addition the high level of interactivity of the ROOT/CINT system allows
program development without the time consuming compile/link/load/execute cycle,
whereas also the ROOT tree output format provides a completely machine
independent data format providing efficient and easy to use data access
capable to cope with the most complex data analyses programs.
 
Only the (proposed) C++ ANSI standard is used in the source code and as
such is fully compatible with all standard C++ compilers as well as with
the ROOT/CINT interpreting system.
 
The comments in the source code are placed in the locations proposed
in the ROOT manual pages [1] such that the automatic source code
documentation system of ROOT can be used directly from the source code.
This has turned out to be very convenient (time saving) and guarantees
always updated documentation compatible with the current source code.
 
Coding conventions :
--------------------
In order not to clash with the (class) names of the ROOT framework
and (future) packages of other groups, a few rules concerning names
of classes, (member)functions and variables have to be obeyed.
The rules are the following :
 
 1) Only (proposed) ANSI standard C++ is allowed, with an even stricter
    requirement that the code should compile without any warnings
    under the GNU g++, msvc++ and the native C++ compilers of HP
    and DECAlpha machines.
    This will assure the programs to run on all standard ALICE platforms.
 2) Class names start with "Ali" followed by an uppercase character,
    all other characters are lowercase.
    Example : AliCalorimeter
    In this way the RALICE class names will NEVER clash with the ones
    of ROOT whereas the probability of a clash with the class names of
    other group's code (e.g. ATLAS, CDF, PHENIX etc...) is minimised.
    To prevent name clashes within the various (future) ALICE packages,
    please refer to the general note at the end.
 3) Names of detector specific classes should start with "Ali" followed
    by the detector name in uppercase, all other characters are lowercase
    except the first character following the detector name, which has to
    be uppercase..
    Example : AliTPCSegment or AliPPCTiming.
    These detector specific classes should only be introduced when there
    is really a need for it.
    E.g. when a track segment of the TPC and ITS have a lot in common
    it would be better to introduce a general AliTracksegment class
    instead of AliTPCSegment and AliITSSegment classes.
 4) Class headers should be under the control of "#ifndef" and the name
    should consist of "CLASSNAME_H" (i.e. the classname in uppercase).
    Example : #ifndef ALITRACK_H
              #define ALITRACK_H
    In this way also the ifdefs will be unique and prevents the danger
    of having the name of an ifdef being the same as a Classname.
 5) The private area in the class header has to be defined as the last item.
    Macros, like the ROOT ClassDef() statement (if needed) must be put
    appear at the right location, i.e. just before the "};" of the
    class definition.
 6) Names of member functions should start with a capital character
    and should NOT contain underscores (which drop out with HTML).
    From the name it should be clear what the functionality is and
    capital characters should be used to indicate various "words".
    Example : AliTrack::Set3Momentum(float* p)
 7) Names of datamembers of a class should start with a lowercase "f"
    and the next character has to be uppercase.
    Example : float fEnergy
    This will allow directly identification of datamembers in the code.
    The names of all other local variables may be chosen freely by the
    author.
    Note : It is recommended to use only lowercase characters
           for local variables.
 8) Names of global variables should start with "gAli" and the next
    character has to be uppercase.
    Example : gAliRun
    This will allow directly identification of global variables in the
    code and will not clash with the existing ROOT globals like
    for instance gDirectory etc...
    Note : Usage of global variables should be avoided as much as
           possible. Most of the data transfer should go via the classes
           and their member functions (data hiding).
 9) Comments should be placed at the positions as outlined in the ROOT docs.
    This will enable the automatic HTML machinery of ROOT.
10) Each class header should contain a short description of the class
    functionality including some examples.
 
General note :
--------------
Within the ALICE software pool it may happen that e.g. in simulation
applications one wants to define for instance a Track class which
contains as data members some additional information (e.g. which was
the corresponding parent particle) compared to the AliTrack class.
Since objects reconstructed from real data will always contain the
minimal amount of information compared to e.g. objects from simulation,
it is in the above case then necessary to introduce a new class
AliSTrack (simulation track).
Obviously such a newly defined object (AliSTrack) can be derived from
the reconstruction object (AliTrack) and just have some data members
and/or memberfunctions added to it.
In such a way maximum flexibility is provided within every (future)
ALICE project, whereas all produced data can always be analysed using
the RALICE tools.
In view of this it might even be preferred to impose as a convention
for future projects to adopt a unique prefix for their specific classes.
For example the prefixes "AliS" and "AliD" could be used to indicate
the simulation and DAQ specific classes respectively.
 
Installation :
--------------
The RALICE library can be automatically installed using the automatic CMZ
installation procedure.
 
Available installation modes :
------------------------------
cmz -install ralice              --> GNU G++ loadable libralice.a
cmz -install ralice shared       --> GNU G++ loadable shared library ralice.sl
cmz -install ralice root         --> ROOT (G++ based) loadable library ralice.sl
cmz -install ralice   -    msvc  --> MSVC++ loadable library
cmz -install ralice shared msvc  --> MSVC++ loadable shared library ralice.dll
cmz -install ralice root   msvc  --> ROOT (MSVC++ based) loadable library ralice.dll
cmz -install ralice   -    hpcc  --> HP CC loadable library
cmz -install ralice shared hpcc  --> HP CC loadable shared library ralice.sl
cmz -install ralice root   hpcc  --> ROOT (HP CC based) loadable library ralice.sl
 
 
[1] http://root.cern.ch
 
 
 
                                           Nick van Eijndhoven
                                           Subatomic Physics Dept.
                                           Utrecht University/NIKHEF
                                           P.O. Box 80.000
                                           NL-3508 TA Utrecht
                                           The Netherlands
                                           Email: nick@phys.uu.nl
                                           WWW: http://www.phys.uu.nl/~nick



