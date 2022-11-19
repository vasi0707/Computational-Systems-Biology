%updating o2 flux to 0(anaerobic) 
iSB619.lb(o2_pos) = 0;
%solving FBA
solution2 = optimizeCbModel(iSB619);
%finding the flux(growth rate)
gr_rate2 = solution2.f;
disp('Maximum growth rate at 100mmolgDW−1h−1 glucose and anaerobic conditions is:');
disp(gr_rate2);