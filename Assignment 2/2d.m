%for perfect lattice
%no. of edges = no. of nodes*k/2
avg_k = round((size(G.Edges)*2)/(size(G.Nodes)),2);
%creating a table of K and Clatt using the table in given paper
K=[4.46 7.59 10.66 8.94 9.62 2.67 4.22];
Clatt_mat=[0.65 0.69 0.67 0.80 0.55 0.19 0.68];
%initialising CLatt to 0
CLatt= 0;
for i=1:length(K)
if avg_k==K(i)
    CLatt = Clatt_mat(i);
    disp(CLatt);
end
end
disp('average clustering coefficient of a perfect lattice:');
disp(CLatt);

