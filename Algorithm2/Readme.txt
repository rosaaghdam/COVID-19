A method to find min cutset of weighted matrix.

Version 2.0
Corresponding author: ..... (Email: ......)
==============


There are two programs to disrupt complex network:

1)       Laplacian

This is a matlab program (version MATLAB R2007b) that a minimum cut set of veritces is found.

      

USAGE:

The entry point of the code is the script =L.m
To run the program, use the following arguments in matlab command line:

"[Cut,S0]=L(ComplexNetwork,ProteinID,All_name_Proteins);"


options:


ComplexNetwork:  complex network (tab delimited MAT-File with n columns and n row, for n vertices).


ProteinID:    the vertices of network (you can use the no. of selected proteins or tab delimited MAT-File with n rows).

All_name_Proteins: The name of Proteins (tab detimited MAT-File with n names of all proteins).

Cut: The name of selected proteins.

S0= The no. of selected proteins.


==============
In addition, We present a ComplexNetwork related to biological process of Sars_Covid-2 and
ProteinIDrelated to its vertices from all proteins in example.mat file.

