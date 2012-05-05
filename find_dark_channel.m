function [dark_channel, index] = find_dark_channel(patch)
    [patch r_ndx] = min(patch);
    [patch c_ndx] = min(patch);
    [dark_channel a_ndx] = min(patch);
    index = [r_ndx(1,1,a_ndx) c_ndx(a_ndx)]; 
end