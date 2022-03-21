function diabetes()
% Função diabetes treina e testa uma rede neuronal
% com um dataset dado no ficheiro diabetes.csv

clear all
close all

S = readmatrix('diabetes.csv', 'Delimiter', ',', 'DecimalSeparator','.');

p = S(:,1:8)';

t = S(:,9)';

% COMPLETAR: criar RN chamada net
net = feedforwardnet;

% COMPLETAR: ajustar os parametros seguintes

% FUNCAO DE ATIVACAO DA CAMADA DE SAIDA

% net.layers{2}.transferFcn = 'tansig';

% FUNCAO DE TREINO 
% net.trainFcn = 'trainlm';

% NUMERO DE EPOCAS DE TREINO
% net.trainParam.epochs = 1000;

% TODOS OS EXEMPLOS DE INPUT SAO USADOS NO TREINO
% net.divideFcn = '';                 


% TREINAR
[net,tr] = train(net, p, t);
%view(net);
%disp(tr);
% SIMULAR
out = sim(net, p);

%VISUALIZAR DESEMPENHO

%plotconfusion(t, out) % Matriz de confusao

%plotperf(tr)         % Grafico com o desempenho da rede nos 3 conjuntos           

% erro = perform(net, out,t);
% fprintf('Erro na classificação dos 150 exemplos %f\n', erro)
%Calcula e mostra a percentagem de classificacoes corretas no total dos exemplos
r=0;
for i=1:size(out,2)               % Para cada classificacao  
  [a b] = max(out(:,i));          %b guarda a linha onde encontrou valor mais alto da saida obtida
  [c d] = max(t(:,i));  %d guarda a linha onde encontrou valor mais alto da saida desejada
  if b == d                       % se estao na mesma linha, a classificacao foi correta (incrementa 1)
      r = r+1;
  end
end

accuracy = r/size(out,2)*100;
fprintf('Precisao total %f\n', accuracy)


% SIMULAR A REDE APENAS NO CONJUNTO DE TESTE
TInput = p(:, tr.testInd);
TTargets = t(:, tr.testInd);

out = sim(net, TInput);

%erro = perform(net, out,TTargets);
%fprintf('Erro na classificação do conjunto de teste %f\n', erro)

%Calcula e mostra a percentagem de classificacoes corretas no conjunto de teste
r=0;
for i=1:size(tr.testInd,2)               % Para cada classificacao  
  [a b] = max(out(:,i));  %b guarda a linha onde encontrou valor mais alto da saida obtida
  [c d] = max(TTargets(:,i));  %d guarda a linha onde encontrou valor mais alto da saida desejada
  if b == d                       % se estao na mesma linha, a classificacao foi correta (incrementa 1)
      r = r+1;
  end
end
accuracy = r/size(tr.testInd,2)*100;
fprintf('Precisao teste %f\n', accuracy)

end