function [ output] = select_min_v( results,o,i)
mi=min(results(:,100,o,i));
    for j=1:50
        if results(j,100,o,i)==mi
            ham=results(j,:,o,i);
            break;
        end
    end
output=ham;
end

