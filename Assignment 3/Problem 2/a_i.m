%updating glucose flux to 100
iSB619.lb(gluc_pos) = -100;
%updating o2 flux to maximum value,i.e..,upper bound(aerobic)
iSB619.lb(o2_pos) = -1*iSB619.ub(o2_pos);
%solving FBA
solution1 = optimizeCbModel(iSB619);
%finding the flux(growth rate)
gr_rate1 = solution1.f;
disp('Maximum growth rate at 100mmolgDW−1h−1 glucose and aerobic conditions is:');
disp(gr_rate1);