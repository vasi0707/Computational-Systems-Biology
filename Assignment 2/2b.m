%initialising Lr to 0
Lr=0;
%initialising count to 1000 
count=1000;
%creating while loop with reducing count
while count>0
    %creating 1000 Erdos Renyi networks
    A = erdos_reyni(1458,0.74);
    %finding shortest path length to created network
    short_paths = all_shortest_paths(A);
    %finding average shortest length
    avg_short_paths = mean(mean(short_paths));
    %increamenting Lr
    Lr = Lr + avg_short_paths;
    %decreasing count
    count = count-1;
end
%finding average,i.e..,Lr
Lr = Lr/1000;