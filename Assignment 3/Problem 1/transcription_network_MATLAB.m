%importing data from txt file
dat = dlmread('transcription_network.txt');
%storing edges data to three arrays
x=dat(:,1);
y=dat(:,2);
weight=dat(:,3);
%creating graph G
G = digraph(x,y,weight);
%plotting graph G
plot(G,'Layout','force');
%importing node information
file = ['nodes.txt'];
nodes = importdata(file);