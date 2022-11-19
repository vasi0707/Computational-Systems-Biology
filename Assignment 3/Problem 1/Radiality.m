%finding diameter of network
diameter = max(d(d~=Inf));
%creating reverse distance matrix
RD = zeros(size(d,1),size(d,2));
for i=1:size(d,1)
    for j=1:size(d,2)
        RD(i,j)=diameter + 1 - d(i,j);
    end
end
%finding radiality
radiality = zeros(size(d,1),1);
for i=1:size(d,1)
    for j=1:size(d,2)
        if i~=j
            if RD(i,j)>-99
                radiality(i,1) = radiality(i,1) + RD(i,j);
            end
        end
    end
end
radiality=radiality/(size(d,1)-1);
disp(radiality);
%ranking the nodes based on radiality
[~,val3]=sort(radiality,'descend');
rank_rad=1:length(radiality);
rank_rad(val3)=rank_rad;
%creating matrix to store indexes of top 5 nodes
top_5_ind3 = zeros(5,1);
%finding top 5 nodes
for i=1:length(rank_rad)
    if rank_rad(i)==1
        top_5_ind3(1)=i;
    end
    if rank_rad(i)==2
        top_5_ind3(2)=i;
    end
    if rank_rad(i)==3
        top_5_ind3(3)=i;
    end
    if rank_rad(i)==4
        top_5_ind3(4)=i;
    end
    if rank_rad(i)==5
        top_5_ind3(5)=i;
    end
end
%printing top 5 nodes
disp('The top 5 transcription factors based on radiality are:');
for j=1:5
    index=top_5_ind3(j);
    node_name=nodes(index);
    value=radiality(index);
    disp(j);
    disp(node_name);
    disp(value);
    disp('-----');
end