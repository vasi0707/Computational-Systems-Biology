%finding all the shortest paths in the graph
paths = all_shortest_paths(adj_mat);
%finding average shortest path length L
L = mean(mean(paths));
fprintf('average shortest path length[L]:%f\n',L);
%plotting distribution of shortest path length
dist = histogram(paths);
%labelling axes
xlabel('shortest path length');
ylabel('frequency');
title('distribution of path length');
