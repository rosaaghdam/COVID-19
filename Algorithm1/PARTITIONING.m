function [G1,G2]=PARTITIONING(Adj,bn,vertices)
G1=[];
G2=[];
[x,y]=min(bn);
vi=vertices(y(1));
G1=union(G1,vi);
G=union(G1,G2);
length_G=length(G);
length_V=length(vertices);
while length_G<length_V
    [G1,G2]=ADDITION(G1,G2,Adj,bn,vertices);
    G=union(G1,G2);
    length_G=length(G);
end