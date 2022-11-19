%loading the model
load('iMM904.mat');
%finding max flux for biomass production
solution1 = optimizeCbModel(iMM904);
gr_rate1 = solution1.f;
%changing the objective function to ethanol
x = find(iMM904.c);
iMM904.c(x) = 0;
iMM904.c(473) = 1;
%finding max flux for ethanol production
solution2 = optimizeCbModel(iMM904);
gr_rate2 = solution2.f;
%creating a flux array using the above found fluxes
fluxes = linspace(gr_rate1,gr_rate2,9);
check = zeros(1,1577);
first = solution1.v;
%changing the objective function back to biomass production
iMM904.c(x) = 1;
iMM904.c(473) = 0;
%finding increase and decrease in flux of all reations
for i = 2:length(fluxes)
    iMM904.lb(473) = fluxes(i);
    sol = optimizeCbModel(iMM904);
    current = sol.v;
    for j = 1:length(first)
        if current(j)>first(j)
            check(j) = check(j) + 1;
        elseif current(j)<first(j)
            check(j) = check(j) - 1;
        end
    end
    first = current;
end
%finding knockout and overexpression reactions
kno = [];
ove = [];
for i = 1:length(check)
    if check(i)>=2
        ove(end+1)=i;
    elseif check(i)<-2
        kno(end+1)=i;
    end
end
%displaying knockout and overexpression reactions
disp("Potential Knockouts");
for i = 1:5
    disp(iMM904.rxnNames(kno(i)));
end
disp("Overexpressions");
for i = 1:5
    disp(iMM904.rxnNames(ove(i)));
end