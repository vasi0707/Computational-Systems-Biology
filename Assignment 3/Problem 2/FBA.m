%importing model of the Staphylococcus aureus
load('iSB619.mat');
%finding exchange reactions
ex_rx = find(findExcRxns(iSB619));
%initialising positions of substrates
gluc_pos = 0;
ribd_pos = 0;
fruc_pos = 0;
o2_pos = 0;
%finding position of substrate reactions
for i=1:length(ex_rx)
    r_name = num2str(cell2mat(iSB619.rxns(ex_rx(i))));
    if strcmp(r_name,'EX_glc__D_e')==1
        gluc_pos = ex_rx(i);
    elseif strcmp(r_name,'EX_rib__D_e')==1
        ribd_pos = ex_rx(i);
    elseif strcmp(r_name,'EX_fru_e')==1
        fruc_pos = ex_rx(i);
    elseif strcmp(r_name,'EX_o2_e')==1
        o2_pos = ex_rx(i);
    end
end