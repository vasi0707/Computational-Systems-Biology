%finding integration from reverse distance matrix
Integration = zeros(size(d,1),1);
for i=1:size(d,2)
    for j=1:size(d,1)
        if i~=j
            if RD(i,j)>-99
                Integration(i,1) = Integration(i,1) + RD(j,i);
            end
        end
    end
    Integration(i,1)=Integration(i,1)/(size(d,1)-1);
end
disp(Integration);
%ranking the nodes based on integration
[~,val4]=sort(Integration,'descend');
rank_intg=1:length(Integration);
rank_intg(val4)=rank_intg;
%creating matrix to store indexes of top 5 nodes
top_5_ind4 = zeros(5,1);
%finding top 5 nodes
for i=1:length(rank_intg)
    if rank_intg(i)==1
        top_5_ind4(1)=i;
    end
    if rank_intg(i)==2
        top_5_ind4(2)=i;
    end
    if rank_intg(i)==3
        top_5_ind4(3)=i;
    end
    if rank_intg(i)==4
        top_5_ind4(4)=i;
    end
    if rank_intg(i)==5
        top_5_ind4(5)=i;
    end
end
%printing top 5 nodes
disp('The top 5 transcription factors based on integration are:');
for j=1:5
    index=top_5_ind4(j);
    node_name=nodes(index);
    value=Integration(index);
    disp(j);
    disp(node_name);
    disp(value);
    disp('-----');
end