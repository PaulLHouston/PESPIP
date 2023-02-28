# PESPIP
Mathematica programs for choosing the best basis of permutataionally invariant polynomials for fitting a potential energy surface

ABSTRACT
We wish to describe a potential energy surface by using a basis of permutationally invariant polynomials whose coefficients will be determined by numerical regression so as to smoothly fit a dataset of electronic energies as well as, perhaps, gradients. The polynomials will be powers of transformed internuclear distances, usually either Morse variables, exp(−ri,j/λ), where λ is a constant range hyperparameter, or reciprocals of the distances, 1/ri,j. The question we address is how to create the most efficient basis, including (a) which polynomials to keep or discard, (b) how many polynomials will be needed, (c) how to make sure the polynomials correctly reproduce the zero interaction at a large distance, (d) how to ensure special symmetries, and (e) how to calculate gradients efficiently. This article discusses how these questions can be answered by using a set of programs to choose and manipulate the polynomials as well as to write efficient Fortran programs for the calculation of energies and gradients. A user-friendly interface for access to monomial symmetrization approach results is also described. The software for these programs is now publicly available.

The reference for this work is P. L. Houston, C. Qu, Q. Yu, R. Conte, A. Nandi, J. Li, and J. M. Bowman, Journal of Chemical Physics 158, 044109 (2023), https://doi.org/10.1063/5.0134442.

The general structure of the Mathematical programs includes the following elements:

Inputs/Templates: The inputs to the Mathematica
routines typically include an input filename and an output filename and a number of other required inputs. The
input information is entered in a “template” that provides some instruction on what to enter and also defines
several global variables. In the TemplatesAndExamples
notebook, this template usually has a yellow background,
which is a signal to indicate that user input is required.
Templates first read in and execute individual functions
or libraries of needed functions. One important individual function is a “clean start” program; it erases all previous definitions so as to avoid complications from previously defined global variables. The location of the function files and the location of the other input and output
files will depend on the specific computer installation.

Functions: Once the inputs are entered and the template section is executed, a function is called to do a specific task. Most common functions have a fairly extensive
check of the input from the corresponding template so as
to make sure that the input is correct and to avoid running long sections of the program before finding that it
is not. There are function calls to perform all of the
examples described in the Methods section.

Outputs: Most functions that perform a task will output a Fortran program that is ready to be compiled and
executed. Along the way, the program also writes out
other periodic results, both to inform the user and to
indicate where the program is at any moment in case
problems occur. Under normal circumstances, once the
template is executed there is no need for further user
input during the execution of the program. Sometimes
there are intermediate outputs; for example, Fortran programs might be saved so as to be read at a later stage.
These are stored in the “data directory”, whose location
is one of the template input parameters. Other intermediary files are also sometimes stored in the data directory
so as to speed up the process in case the program needs
to be re-run. Finally, the data directory serves at times
as a scratch disk for temporary storage, usually of small
files, but also as the location for diagnostic files in case
problems occur.

When Problems Occur : Normally, the printed output
is enough to let one know where in the program a problem occurs. In many principal functions there is a variable “diagnose”, normally set to False. When set to True,
files will be written to the data directory or global variables will be defined, and these can be subsequently examined to see what problem occurred. Because many
steps can take a long time, particularly for large basis
sets. the principal programs often have a “count-down”
odometer that indicates when and how fast processes are
moving along. Most problems are due to formatting issues with input files. If a program reads an improperly
formatted input file and does not find what it is looking for, nonsense will result. For this reason, all firstinput files are not files from the MSA output but rather
files created by the DeleteDuplicatesAndProvideDerivativesIfDesired[ ] function. This function is usually called
in order to create a fragmented basis set, but it is also
called, requesting a single fragment (the full molecule),
simply to provide some flexibility of the input (flexible
numbering of atoms, use of Morse or reciprocal transforms, addition of derivatives, etc.) and to ensure that
the starting point for further work has a consistent format.
Figure S2, at the bottom of this document, shows the
steps in accomplishing goals of the programs. One starts
by choosing the permutational symmetry and polynomial
order and then using these to generate, via the MSA software, a file typically called bemsa.....f90, where the dots
indicate other identifiers. For considering the molecule as
a whole, a single bemsa file is all that is needed, whereas
for generating smaller fragments, one needs to specify a
bemsa file for each fragment. One then enters the remaining data into the “Delete Duplicates” template, executes it to set the variables, and then executes the function DeleteDuplicatesAndProvideDerivativesIfDesired[ ].
The output, usually called DeleteDuplicates.....f90, is the
starting point for any remaining steps. One can either proceed to add polynomials, to prune them, or to
purify/compact/group them. In addition, the Purification/Compaction/Grouping step can be followed by further steps adding or pruning polynomials. To produce a
variety of final polynomial numbers, pruning and adding
of polynomials can be done starting with the DuplicatesDeleted file and repeatedly asking for different final polynomial numbers, or it can be done sequentially, using the
output of one run as the input to the next. After pruning or adding (or neither), the usual next step will be to
add derivative functionality to the Fortran output, using
the output Fortran files from adding, pruning or purification as the input files for the addition of derivatives
step. Most often, “normal” derivatives will already have
been added (although, as an option, this may be turned
off by the user). The most useful next step would be
to append reverse derivative functionality to the existing
Fortran output. A final step, also included in many of the
intermediary steps, is to check the output for duplicate
polynomials and permutational invariance. Further tests
for purified basis sets (not shown in the figure) can also be
executed, so as to check the correct polynomial limiting
conditions and to check for the permutational invariance
with respect to exchange of monomer molecules.

The Mathematical software includes all the functions
needed, some instruction as to how to install them, and
a Mathematica notebook file called TemplatesAndExamplesVXX.x.nb notebook, where XX.x is the version number. This notebook provides templates for a variety of
tasks. The current version provides 14 examples, each
with a filled-in template, the printed output, andthe resulting Fortran file. The examples cover all of the methods described above.
1   “Original msa software,” https://www.mcs.anl.gov/research/
projects/msa/ (2019), accessed: 2019-12-20.
2   Z. Xie and J. M. Bowman, J. Chem. Theory Comput. 6, 26 (2010).
3   “Msa software with gradients,” https://github.com/szquchen/
MSA-2.0 (2019), accessed: 2019-01-20.
4   “Qtdesigner,” https://doc.qt.io/qt-5/qtdesigner-manual.
html, accessed: 2022-05-03.
5    P. L. Houston, C. Qu, A. Nandi, R. Conte, Q. Yu, and J. M.
Bowman, J. Chem. Phys. 156, 044120 (2022).
