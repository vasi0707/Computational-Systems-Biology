%importing data from txt file
dat = dlmread('bio-yeast.txt','',2);
%storing edges data to two arrays
x=dat(:,1);
y=dat(:,2);
%creating graph G
G = graph(x,y);
%plotting graph G
plot(G,'Layout','force');