function trainHeart()

S = readmatrix('heart_train.csv', 'Delimiter', ',', 'DecimalSeparator','.');

p = S(:,1:13)';

t = S(:,14)';

% COMPLETAR: criar RN chamada net
net = feedforwardnet([10 10]);

% COMPLETAR: ajustar os parametros seguintes

% FUNCAO DE ATIVACAO DA CAMADA DE SAIDA

net.layers{2}.transferFcn = 'tansig';

% FUNCAO DE TREINO 
net.trainFcn = 'trainlm';

% NUMERO DE EPOCAS DE TREINO
net.trainParam.epochs = 100;

% TODOS OS EXEMPLOS DE INPUT SAO USADOS NO TREINO
net.divideFcn = '';                 

% COMPLETAR: treinar a rede
net = train(net, p, t);

% visualizar a rede
view(net)

% COMPLETAR simular a rede e guardar o resultado na variavel y
y = net(p);

% Mostrar resultado
% y = (y >= 0.5);
i = (y < 0.5);
y(i) = 0;
i = (y >= 0.5);
y(i) = 1;

erro = perform(net, t, y);

fprintf('Saida da RN:');
disp(y);
fprintf('Saida desejada:');
disp(t);
fprintf('Erro: ');
disp(erro);

save('nn_heart1.mat', 'net');

end