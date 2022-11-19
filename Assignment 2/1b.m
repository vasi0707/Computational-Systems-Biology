%creating log matrix for k
x_log = (1:1458);      %no. of nodes 1458
x_log(:,:) = log10(x_log(:,:));
%creating log matrix for N(k)
y_log = sum(adj_mat);
y_log(:,:) = log10(y_log(:,:)).';
%plotting loglog graph of N(k)vsk
plot(x_log,y_log,'r.');
%labelling axes
xlabel('log10(k)');
ylabel('log10(N(k))');
title('log10(N(k)) vs log10(k)');
%finding Spearman correlation coefficient and p values
[sp_coeff,pval] = corr(adj_mat,'type','Spearman');
fprintf('Spearman correlation coefficient is:%f\n');
disp(sum(mean(sp_coeff)));
fprintf('p value is:%f\n');
disp(sum(mean(pval)));




