function[I,maxdegree]=MaxDegree(Degree,X)

DegreeX=Degree(X);
[x,y]=sort(DegreeX);

I=X(y(length(y)));
maxdegree=x(length(x));