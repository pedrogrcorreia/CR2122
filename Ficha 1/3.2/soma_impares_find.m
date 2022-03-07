function [res] = soma_impares_find(mat)
% obtem a soma dos valores impares de uma matriz mat

res = 0;
vet = [];
index = find(mod(mat, 2) ~= 0);
vet = mat(index);
vet = vet';
res = sum(vet);
end