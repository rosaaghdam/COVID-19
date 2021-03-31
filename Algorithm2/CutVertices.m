function[S]=CutVertices(Cut,M,Threshold)

S=[];
X=find(Cut==1);
Y=find(Cut==0);

Matrix(length(Cut),length(Cut))=0;
for i=1:length(X)
    for j=1:length(Y)
        if M(X(i),Y(j))>Threshold
           Matrix(X(i),Y(j))=M(X(i),Y(j));%1
           Matrix(Y(j),X(i))=M(Y(j),X(i));%1
        end
    end
end

Degree=sum(Matrix);

[I,maxdegree]=MaxDegree(Degree,[1:length(Degree)]);
if maxdegree>0
    S(1)=I;
    if length(intersect(I,X))~=0
        t=0;
    else
        t=1;
    end
end

[UDegree,Matrix]=UpdateDegreeCutVertex(Matrix,Degree,I);
if t==1
   [I,maxdegree]=MaxDegree(UDegree,X);
   t=0;
else
   [I,maxdegree]=MaxDegree(UDegree,Y);
   t=1;
end

while maxdegree>0
    S(length(S)+1)=I;
    [UDegree,Matrix]=UpdateDegreeCutVertex(Matrix,UDegree,I);
    if t==1
       [I,maxdegree]=MaxDegree(UDegree,X);
       t=0;
    else
       [I,maxdegree]=MaxDegree(UDegree,Y);
       t=1;
    end
end



