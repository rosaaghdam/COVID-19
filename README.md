# COVID-19

Descripotion:

This repository contains the data and MATLAB code for the  "Using Informative Features in Machine Learning Based Method for COVID-19 Drug Reporpusing" paper:

Data set:

File "All interaction.xlsx" contains 304,730 interactions between 25,260 proteins in Human cells.

File "Process related to 332 proteins.xlsx" contains 1,374 Informative Biological Processes (IBP) Gene Ontology (GO) terms as high confidence SARS-Cov-2 human protein-protein intraction (PPI).

File "List name proteins.xlsx" contains 25,260 proteins in PPI network.

File "Cluster_features.xlsx"  contains list of the repositioning candidates and their features in #Cluster1,#Cluster2, #Cluster3, #Cluster4 and #Cluster5.



First, we use two effective algorithms [Algorithm1 folder and Algorithm2 folder] to find the candidate set of proteins from biological networks that lead to a major disruption in the network.
To run the Algorithm1 follow the Readme.txt steps in Algorithm1 Folder. See the output of Algorithm1 in "Essential_Proteins_related_to_Covid_19.xlsx" file in sheet name output_Cut1.
To run the Algorithm1 follow the Readme.txt steps in Algorithm2 Folder. See the output of Algorithm2 in "Essential_Proteins_related_to_Covid_19.xlsx" file in sheet name output_Cut2.

Next, we identify proteins in our candidate set that are associated with some underlying diseases related to COVID-19. We select 93 proteins as a final set of essential proteins related to disease pathology. 
To access the 93 proteins see Essential_Protein_related_to_Covid_19_Pathology.xlsx file in sheet name "E".

Finally, we evaluated these proteins with respect to the related pathways with DAVID tools (see "Pathways.xlsx" file).
