locs_d = [1 150 170 200];
locs_a = [20 149 186 225];

        locs_d_ind = length(locs_d);
        locs_a_ind = length(locs_a);
        counter_blch = 0;
        sel_pt_t = [];
        blch_sel = 0;
for k = locs_d_ind : -1 : 1 
            for j = locs_a_ind : -1 : 1            
                temp_locs_a = locs_a(j)-6:locs_a(j)+6;                               
                if sum(ismember(locs_d(k),temp_locs_a))>= 1
                    counter_blch = counter_blch +1;
                    blch_sel = 1;
                    sel_pt_d(:,counter_blch) = k;
                    sel_pt_a(:,counter_blch) = j;
                    continue
                end
            end            
end

    if blch_sel == 1
       bleachpoint_don = locs_d(sel_pt_d(1,:));
       bleachpoint_accep = locs_a(sel_pt_a(1,:));
    else
       bleachpoint_don = [];
       bleachpoint_accep = [];
       blch_sel = 0;
    end
    
    
    