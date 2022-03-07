function [num] = contapositivos_matriz_find(mat)
% obtem o numero de valores positivos de uma
% dada matriz

num = 0;
index = find(mat > 0);
num = length(index);

end