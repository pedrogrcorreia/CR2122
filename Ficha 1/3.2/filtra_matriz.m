function [vet] = filtra_matriz_for(mat)
% filtra_matriz devolve um vetor com os números pares 
% obtidos a partir de uma matriz

vet = [];
for i = 1:numel(mat)
    if(mod(mat(i), 2) == 0)
        vet = [vet mat(i)];
    end
end

index = find(mod(m, 2) == 0);
vet = mat(index);
vet = vet';
end