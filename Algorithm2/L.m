function[Cut,S0]=L(Matrix,Vertices,Name)
Degree=sum(Matrix);
n=length(Degree);
LaplacianMatrix(n,n)=0;
for i=1:n
    LaplacianMatrix(i,i)=Degree(i);
end
LaplacianMatrix=LaplacianMatrix-Matrix;
[vectorL,eigenL]= eig(LaplacianMatrix);
[x,y]=max(max(eigenL));
V=vectorL(:,y)';
[Y1,Y2]=sort(V);
A=Y2(1:floor(n/2));
B=Y2(floor(n/2)+1:n);
Cut=[];
Cut(n)=0;
Cut(A)=1;
S01=CutVertices(Cut,Matrix,3);
S0=Vertices(S01);
Cut=Name(S0);