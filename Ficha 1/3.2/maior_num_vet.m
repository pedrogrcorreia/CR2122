function [num] = maior_num_vet()
% obtem o maior valor dos numeros obtidos
% pelo user input em que o 0 termina a sua
% inserção

num = 0;
x = -1;
vet = [];
while x ~= 0
    x = input("New number: \n");
    vet = [vet x];
end

num = max(vet);
end