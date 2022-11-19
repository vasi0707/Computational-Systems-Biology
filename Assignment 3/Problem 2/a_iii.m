%updating glucose flux to 0
iSB619.lb(gluc_pos) = 0;
%updating ribose D flux to 100
iSB619.lb(ribd_pos) = -100;
%updating o2 flux to maximum value,i.e..,upper bound(aerobic)
iSB619.lb(o2_pos) = -1*iSB619.ub(o2_pos);
%solving FBA
solution3 = optimizeCbModel(iSB619);
%finding the flux(growth rate)
gr_rate3 = solution3.f;
disp('Maximum growth rate at 100mmolgDW−1h−1 ribose D and aerobic conditions is:');
disp(gr_rate3);