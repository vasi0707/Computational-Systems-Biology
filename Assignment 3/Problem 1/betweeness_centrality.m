%finding betweeness centrality of nodes
bet_cent = betweenness_centrality(adj_mat);
disp(bet_cent);
%ranking the nodes based on betweeness centrality
[~,val2]=sort(bet_cent,'descend');
rank_bet=1:length(bet_cent);
rank_bet(val2)=rank_bet;
%creating matrix to store indexes of top 5 nodes
top_5_ind2 = zeros(5,1);
%finding top 5 nodes
for i=1:length(rank_bet)
    if rank_bet(i)==1
        top_5_ind2(1)=i;
    end
    if rank_bet(i)==2
        top_5_ind2(2)=i;
    end
    if rank_bet(i)==3
        top_5_ind2(3)=i;
    end
    if rank_bet(i)==4
        top_5_ind2(4)=i;
    end
    if rank_bet(i)==5
        top_5_ind2(5)=i;
    end
end
%printing top 5 nodes
disp('The top 5 transcription factors based on betweeness centrality are:');
for j=1:5
    index=top_5_ind2(j);
    node_name=nodes(index);
    value=bet_cent(index);
    disp(j);
    disp(node_name);
    disp(value);
    disp('-----');
end