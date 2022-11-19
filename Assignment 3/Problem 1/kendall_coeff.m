function kc=kendall_coeff(dat1,dat2)
    %finding total number of pairs
    total_pairs = (length(dat1)*(length(dat1)-1))/2;
    total_conc_pairs = 0;
    %finding total concordant pairs using the condition
    %x1>x2 and y1>y2 or x1<x2 and y1<y2
    for i=1:length(dat1)
        for j=1:length(dat2)
            if i<j
                if dat1(i)>dat1(j) && dat2(i)>dat2(j)
                    total_conc_pairs = total_conc_pairs + 1;
                elseif dat1(i)<dat1(j) && dat2(i)<dat2(j)
                    total_conc_pairs = total_conc_pairs + 1;
                end
            end
        end
    end
    %computing kendall coeff using formula
    kc = ((2*total_conc_pairs)-total_pairs)/total_pairs;
end        