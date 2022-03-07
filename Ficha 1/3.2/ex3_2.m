% a)
mat = gera_matriz(3, 3, 10);
disp(mat);

% b)
vet = filtra_matriz_for(mat);
X =  ['filtra matriz for: ', num2str(vet)];
disp(X);

vet = filtra_matriz_find(mat);
X =  ['filtra matriz find: ', num2str(vet)];
disp(X);

% c)
num = maior_num();
X = ['maior num: ', num2str(num)];
disp(X);

num = maior_num_vet();
X = ['maior num vetor: ', num2str(num)];
disp(X);

% d)
num = soma_impares(mat);
X = ['soma impares for: ', num2str(num)];
disp(X);

num = soma_impares_find(mat);
X = ['soma impares find: ', num2str(num)];
disp(X);

% e)
num = contapositivos_matriz(mat);
X = ['positivos for: ', num2str(num)];
disp(X);

num = contapositivos_matriz_find(mat);
X = ['positivos find: ', num2str(num)];
disp(X);

% f)
[num, index] = maiores_matriz(mat);
X = ['maior for: ', num2str(num), ' index: ', num2str(index)];
disp(X);

[num, index] = maiores_matriz_find(mat);
X = ['maior find: ', num2str(num), ' index: ', num2str(index)];
disp(X);