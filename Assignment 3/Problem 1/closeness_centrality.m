%finding all the shortest paths from ome node to other
d = all_shortest_paths(adj_mat);
%calculating mean geodesic distance
L = zeros(size(d,1),1);
for i = 1:size(d,1)
    for j = 1:size(d,2)
        if d(i,j)<99
            L(i) = L(i) + d(i,j);
        end
    end
end
%calulating closeness centrality
close_cent = zeros(size(d,1),1);
for i = 1:size(L,1)
    close_cent(i) = (size(d,1)-1)/L(i);
end
disp(close_cent);
%ranking the nodes based on closeness centrality
[~,val1]=sort(close_cent,'descend');
rank_cls=1:length(close_cent);
rank_cls(val1)=rank_cls;
%creating matrix to store indexes of top 5 nodes
top_5_ind1 = zeros(5,1);
%finding top 5 nodes
for i=1:length(rank_cls)
    if rank_cls(i)==1
        top_5_ind1(1)=i;
    end
    if rank_cls(i)==2
        top_5_ind1(2)=i;
    end
    if rank_cls(i)==3
        top_5_ind1(3)=i;
    end
    if rank_cls(i)==4
        top_5_ind1(4)=i;
    end
    if rank_cls(i)==5
        top_5_ind1(5)=i;
    end
end
%printing top 5 nodes
disp('The top 5 transcription factors based on closeness centrality are:');
for j=1:5
    index=top_5_ind1(j);
    node_name=nodes(index);
    value=close_cent(index);
    disp(j);
    disp(node_name);
    disp(value);
    disp('-----');
end