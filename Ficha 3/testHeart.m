function testHeart()
S = readmatrix('heart_test.csv', 'Delimiter', ',', 'DecimalSeparator','.');

p = transpose(S);

t = [1 1 1 0 0 0];

load("nn_heart1.mat");

y = net(p);
% Mostrar resultado
y = (y >= 0.5);
% if (y >= 0.5)
%     y = 1;
% else
%     y = 0;
% end

erro = perform(net, t, y);

fprintf('Saida da RN:');
disp(y);
fprintf('Saida desejada:');
disp(t);
fprintf('Erro: ');
disp(erro);
end