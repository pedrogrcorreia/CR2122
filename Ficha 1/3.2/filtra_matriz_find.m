function [vet] = filtra_matriz_find(mat)
% filtra_matriz devolve um vetor com os números pares 
% obtidos a partir de uma matriz

vet = [];
index = find(mod(mat, 2) == 0);
vet = mat(index);
vet = vet';
end

