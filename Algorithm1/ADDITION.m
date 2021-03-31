function[G1,G2]=ADDITION(G1,G2,Adj,bn,vertices)
length_G1=length(G1);
length_G2=length(G2);

Neighbor_G2=[];
Neighbor_G1=[];
G=union(G1,G2);

if length_G2>0
    for i=1:length_G2
        x=find(Adj(G2(i),:)>0);
        Neighbor_G2=union(x,Neighbor_G2);
    end
end

if length_G1>0
    for i=1:length_G1
        x=find(Adj(G1(i),:)>0);
        Neighbor_G1=union(x,Neighbor_G1);
    end
end

        
if length_G1<=length_G2
    A=setdiff(Neighbor_G2,G);
    if length(A)>0
        bn_A=bn(A);
        [x,y]=min(bn_A);
        vi=A(y(1));
    else
        T=setdiff(vertices,G);
        bn_A=bn(T);
        [x,y]=min(bn_A);
        vi=T(y(1));
    end
G1=union(G1,vi);
else
   B=setdiff(Neighbor_G1,G);
    if length(B)>0
        bn_B=bn(B);
        [x,y]=min(bn_B);
        vi=B(y);
    else
        T=setdiff(vertices,G);
        bn_B=bn(T);
        [x,y]=min(bn_B);
        vi=T(y);
    end 
    G2=union(G2,vi);
end