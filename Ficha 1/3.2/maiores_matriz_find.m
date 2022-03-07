function [num, index] = maiores_matriz_find(mat)
% obtem o numero de valores positivos de uma
% dada matriz

num = max(mat, [], "all");
index = find(mat == num, 1);
end