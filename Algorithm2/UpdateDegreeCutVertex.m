function[UDegree,Matrix]=UpdateDegreeCutVertex(Matrix,Degree,I)
Matrix(I,:)=[0];
Matrix(:,I)=[0];
UDegree=sum(Matrix);