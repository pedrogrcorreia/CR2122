function [num, index] = maiores_matriz(mat)
% obtem o numero de valores positivos de uma
% dada matriz

num = 0;
index = 0;
for i = 1:numel(mat)
    if(mat(i) > num)
        num = mat(i);
        index = i;
    end
end
end