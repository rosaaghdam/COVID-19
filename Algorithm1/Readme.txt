A method to find min cut-set of weighted matrix.

Version 1.0
Corresponding author: Mahnaz Habibi (Email: mhabibi@ipm.ir)
==============


There are two programs to disrupt complex network:

1)       PARTITIONING

This is a matlab program (version MATLAB R2007b) that the network vertices are bisected into two partitions.

      

USAGE:

The entry point of the code is the script PARTITIONING.m
To run the program, use the following arguments in matlab command line:

"[G1,G2]=PARTITIONING(Adj_Matrix,bn,vertices);"


options:


Adj_Matrix:  complex network (tab delimited MAT-File with n columns and n row, for n vertices)
             


bn      :    betweenness centrality 

vertices:    the vertices of network we used [1:n].



2)      min_cut_set

This is a matlab program which pick a minimum number of vertices S that,
if removed, would destroy all cut edges between two partitions.

USAGE:

The entry point of the code is the script min_cut_set.m
To run the program, use the following arguments in matlab command line:

"min_cut_set(G1,G2,Adj)"


options:



Adj_Matrix:  complex network (tab delimited MAT-File with n columns and n row, for n vertices)


T0       :    Low temperature for stop algorithm, we used 0.00001.

G1 and G2:    they are calculated by PARTITIONING.m program

Cut_Set  :    The output file will be in MAT-File .
================



In addition, We present a Adj_Matrix,
its vertices and their betweenness centrality values in example.mat file.
We also gathered a representative dataset of protein complexes were released in Munich Information Center for Protein Complexes.
In our work, the complexes with size less than 3 were excluded.

