%creating adjacency matrix of graph G
adj_mat = adjacency(G);
%degree centrality
deg_cent = sum(adj_mat);
disp(deg_cent);
%ranking the nodes based on degree centrality
[~,val]=sort(deg_cent,'descend');
rank_deg=1:length(deg_cent);
rank_deg(val)=rank_deg;
%creating matrix to store indexes of top 5 nodes
top_5_ind = zeros(5,1);
%finding top 5 nodes
for i=1:length(rank_deg)
    if rank_deg(i)==1
        top_5_ind(1)=i;
    end
    if rank_deg(i)==2
        top_5_ind(2)=i;
    end
    if rank_deg(i)==3
        top_5_ind(3)=i;
    end
    if rank_deg(i)==4
        top_5_ind(4)=i;
    end
    if rank_deg(i)==5
        top_5_ind(5)=i;
    end
end
%printing top 5 nodes
disp('The top 5 transcription factors based on degree centrality are:');
for j=1:5
    index=top_5_ind(j);
    node_name=nodes(index);
    value=deg_cent(index);
    disp(j);
    disp(node_name);
    disp(value);
    disp('-----');
end    