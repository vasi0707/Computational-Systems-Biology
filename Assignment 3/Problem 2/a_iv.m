%updating ribose D flux to 0
iSB619.lb(ribd_pos) = 0;
%updating fructose flux to 100
iSB619.lb(fruc_pos) = -100;
%solving FBA
solution4 = optimizeCbModel(iSB619);
%finding the flux(growth rate)
gr_rate4 = solution4.f;
disp('Maximum growth rate at 100mmolgDW−1h−1 fructose and aerobic conditions is:');
disp(gr_rate4);