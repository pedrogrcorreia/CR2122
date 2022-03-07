function [sum] = soma_impares(mat)
% obtem a soma dos valores impares de uma matriz mat

sum = 0;

for i = 1:numel(mat)
    if(mod(mat(i), 2) ~= 0)
        sum = sum + mat(i);
    end
end
end