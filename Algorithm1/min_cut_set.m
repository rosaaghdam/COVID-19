function []= min_cut_set(G1,G2,Adj)
S=[];
Bi_Partition_Adj=Adj(G1,G2);
weight_G1=sum(Bi_Partition_Adj');
weight_G2=sum(Bi_Partition_Adj);
[x,xn]=max(weight_G1);
[y,yn]=max(weight_G2);

if x(1)<=y(1)
   S(1)=G2(yn(1));
   G2=setdiff(G2,G2(yn(1)));
   T1=G1;
   T2=G2;
else
   S(1)=G1(xn(1));
   G1=setdiff(G1,G1(xn(1)));
   T1=G2;
   T2=G1;
   
end
Bi_Partition_Adj=Adj(T2,T1);

weight_T=sum(Bi_Partition_Adj);
while sum(weight_T)>0
    L=length(S);
    [x,xn]=max(weight_T);
    S(L+1)=T1(xn(1));
    M=setdiff(T1,T1(xn(1)));
    T1=T2;
    T2=M;
    Bi_Partition_Adj=Adj(T2,T1);
    weight_T=sum(Bi_Partition_Adj);
end
 Cut_set=S;   
save Cut_set
    
