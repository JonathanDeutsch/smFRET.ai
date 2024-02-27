function [tdps_raw, tdps_ideal] = tdp_pts(eb_sel_trace1,eb_sel_trace1_raw,eb_sel_trace1_ideal)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
a_trace = eb_sel_trace1;
b1 = (find(diff(a_trace) == 1))';
b2 = (find(diff(a_trace) == -1))';
b3 = (find(diff(a_trace) == 2))';
b4 = (find(diff(a_trace) == -2))';
b = horzcat(b1, b2, b3, b4);
% get the before and after points;
tdps_raw = [];
tdps_ideal = [];
counter = 0;
for i = 1:length(b)
    counter = counter + 1;
    ind_b = b(i);
    if ind_b >2
    e_init_raw = eb_sel_trace1_raw(ind_b-1);
    e_init_ideal = eb_sel_trace1_ideal(ind_b-1);
    e_fin_raw = eb_sel_trace1_raw(ind_b+1);
    e_fin_ideal = eb_sel_trace1_ideal(ind_b+1);
    tdps_raw(counter,:) = [e_init_raw e_fin_raw];
    tdps_ideal(counter,:) = [e_init_ideal e_fin_ideal];
    end
end

end


