%similar to the loglog graph in last code
x_log_1 = (1:1458);
x_log_1(:,:) = log10(x_log_1(:,:));
y_log_1= sum(adj_mat);
y_log_1(:,:) = log10(y_log_1(:,:)).';

%Y=XB    B is slope;
%B=Y/X;
%finding slope
slope = y_log_1/x_log_1;
line_x=x_log_1;
line_y=slope*line_x;
%plotting the loglog plot with linear fit 
plot(x_log_1,y_log_1,'r.');
hold on
plot(line_x,line_y,'b');
%labelling the axes
xlabel('log10(k)');
ylabel('log10(N(k))');
title('log10(N(k)) vs log10(k)');
%finding the goodness fit(R square)
goodness_fit = 1 - (sum((y_log_1-line_y).^2)/sum((y_log_1 - mean(y_log_1)).^2));
fprintf('goodness fit(R_square) is:%f\n',goodness_fit);


