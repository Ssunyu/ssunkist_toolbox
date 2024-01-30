function divided = divide_ssunkist(targetNum, ngroups)
% imitation of divide_ycgosu for practice

if targetNum < ngroups
    error('Target number is smaller than group size')
    return;
end 
% common variables 
divided = cell(ngroups,1);
gSize = fix(targetNum/ngroups);

% 2 cases
if mod(targetNum,ngroups) == 0 
    k = 1; 
    for i = 1:numel(divided)
        divided{i} = ((k-1)*gSize)+1 : k*gSize;
        k = k+1;
    end 
else 
    R = mod(targetNum,ngroups);
    k = 1;
    for i = 1:numel(divided)
        if i <= R
            divided{i} = (k-1)*(gSize+1)+1: k*(gSize+1);
            k = k+1;
        else
            divided{i} = (k-1)*gSize+R+1:k*gSize+R;
            k= k+1;
        end


    end
end
