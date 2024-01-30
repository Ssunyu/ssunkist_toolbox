function [o1, o2] = fileparts_ssunkist(filedir,howmany)

switch class(filedir)
    case 'cell'
        dochar = 0;
        docell = 1;
    case {'srting', 'char'}
        if size(filedir) > 1
            disp('Rather put it cell array')
        end
        dochar = 1;
        docell = 0;
    otherwise
        disp('Unknown inputs')
end

fragmnts = split(filedir,'/');

if dochar
    o1 = strjoin(fragmnts(1:end-howmany),'/');
    o2 = strjoin(fragmnts(end-howmany+1:end),'/');
elseif docell
    o1_temp = frgamnts(:,1:end-howmany);
    o2_temp = frgamnts(:,1:end-howmany+1);
    for i = 1:size(o1_temp,1)
        o1{i,:} = strjoin(o1_temp(i,1:end-howmany),'/');
        o2{i,:} = strjoin(o1_temp(i,end-howmany+1:end),'/');
    end
end


end