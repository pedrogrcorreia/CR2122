function [num] = contapositivos_matriz(mat)
% obtem o numero de valores positivos de uma
% dada matriz

num = 0;

for i = 1:numel(mat)
    if(mat(i) > 0)
        num = num + 1;
    end
end
end