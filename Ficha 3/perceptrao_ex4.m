function perceptrao_ex4( )
%Funcao percepcao_ex2: cria, treina e testa um perceptrao
%usando as funcoes da NNTool

% limpar
clear all;
close all;

% inicializar entrada
p = [0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1;
     0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1;
     0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1;
     0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1
    ];

t = [0 0 0 1 0 1 1 0 0 1 1 0 1 0 0 1];

% COMPLETAR: criar um perceptrao chamado net
net = perceptron;

% COMPLETAR: Numero de epocas de treino: 100
net.trainParam.epochs = 100;


% COMPLETAR: treinar a rede
net = train(net, p, t);

% COMPLETAR: simular a rede e guardar o resultado na variavel y
y = net(p);

% Mostrar resultado
fprintf('Saida do perceptrao para paridade par:');
disp(y);
fprintf('Saida desejada para paridade par:');
disp(t);

% visualizar a arquitetura da rede criada
view(net)

%Plot 
w = net.iw{1,1};
b = net.b{1};
plotpv(p, t)
plotpc(w, b)

end

