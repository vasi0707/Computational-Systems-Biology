%initialising 5 by 5 matrix 
ken_tab = zeros(5);
%assigning centralities to rows and columns
for i=1:5
    if i==1
        data1 = rank_deg;
    end
    if i==2
        data1 = rank_cls;
    end
    if i==3
        data1 = rank_bet;
    end
    if i==4
        data1 = rank_rad;
    end
    if i==5
        data1 = rank_intg;
    end
    for j=1:5
        if j==1
            data2 = rank_deg;
        end
        if j==2
            data2 = rank_cls;
        end
        if j==3
            data2 = rank_bet;
        end
        if j==4
            data2 = rank_rad;
        end
        if j==5
            data2 = rank_intg;
        end
        %computing kendall coeff using function written
        ken_tab(i,j)=kendall_coeff(data1,data2);
    end
end
disp(ken_tab);