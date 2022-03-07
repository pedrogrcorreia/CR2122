function [mat] = gera_matriz(a, b, x)
% gera_matriz cria uma matriz de dimensões a x b com
% números aleatórios entre 0 e x
mat = randi(x, a, b);
end