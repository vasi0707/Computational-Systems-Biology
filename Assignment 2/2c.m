%finding clustering coefficients of given network
cluster_coeff = clustering_coefficients(adj_mat);
%plotting distribution of clustering coefficients
plot(sum(adj_mat),cluster_coeff,'r.');
%labelling axes
xlabel('degree(k)');
ylabel('clustering coefficient-C(k)');
title('clustering coefficient distribution');
%finding average clustering coeffcients C
C = mean(cluster_coeff);
fprintf('average clustering coefficient[C]:%f\n',C);
