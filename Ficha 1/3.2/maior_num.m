function [num] = maior_num()
% obtem o maior valor dos numeros obtidos
% pelo user input em que o 0 termina a sua
% inserção

num = 0;
x = -1;
while x ~= 0
    x = input("New number: \n");
    if x > num
        num = x;
    end
end
end