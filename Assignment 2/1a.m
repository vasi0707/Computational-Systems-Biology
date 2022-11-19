%creating adjacency matrix of graph G
adj_mat = adjacency(G);
%plotting histogram of degree distribution by summing up adjacency matrix
histogram(sum(adj_mat),0:56);
%labelling the axes
xlabel('k');
ylabel('N(k)');
title('Degree Distribution');