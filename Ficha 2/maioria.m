function [w, out_init, out_sim] = maioria()
%  Implementacao de um perceptrao para aprender as funcoes logicas AND, OR, NAND e XOR
%  Vector out_init devolve o resultado da simulacao inicial do perceptrao (aleatorio) 
%  Vector out_sim devolve o resultado da simulacao final do perceptrao (depois do treino)

%inputs e outputs das operacoes logicas
%a variavel 's' contem apenas informacao para criar o grafico

% aqui podem ser colocados mais valores, coloquei so 7 colunas para
% simplificar

in = [0 0 0 1 1 1 0;
      0 0 0 1 0 1 0;
      0 0 1 1 1 1 1;
      0 0 0 1 0 1 1;
      0 1 1 0 0 0 0];
target = [0 0 0 1 0 1 0];
b = 1;

coeff = 1;

S = 0;

nlin = length(in(:,1)); % n de entradas -> retirar uma coluna e contar as linhas
ncol = length(in(1,:)); % n de exemplos -> retirar uma linha e contar as colunas

%Inicializacao dos pesos do perceptrao com valores aleatorios

w = rand(1, nlin+1); % w = [ w0 w1 w2 w3 ... ]


%PARTE 1: Simulacao do perceptrao criado aleatoriamente
fprintf('**********************************\n')
fprintf('A SIMULAR O PERCEPTRAO ALEATORIO\n')
fprintf('**********************************\n\n')

out_init = zeros(1,ncol);
for j=1:ncol
		S = S + w(1) * b; % w0
        for k=2:length(w)
            S = S + w(k) + in(k-1, j); % K-1 PARA OBTER O x1 caso contrário começava em x2
        end
        if S >= 0
            out_init(j) = 1;
        else 
			out_init(j) = 0;
        end    
    
end


%PARTE 2: TREINO
fprintf('**********************************\n')
fprintf('A TREINAR O PERCEPTRAO\n')
fprintf('**********************************\n')

for it=1:100
    fprintf('Iteracao %d\n', it);
    
    out = zeros(1, ncol);				% VECTOR ONDE SERAO COLOCADAS AS SAIDAS PARA OS 4 EXEMPLOS DE TREINO
    delta = zeros(1, ncol);			% VECTOR ONDE SERAO COLOCADOS OS VALORES DO ERRO (DELTA)
   
    for j=1:ncol	% EXEMPLOS GENERALIZADOS

		S = w(1) * b; % w0
        for k=2:length(w)
            S = S + w(k) + in(k-1, j); % K-1 PARA OBTER O x1 caso contrário começava em x2
        end

        if S >= 0
            out(j) = 1;
        else 
			out(j) = 0;
        end    
        
        delta (j) = target(j) - out(j);
       
		%AJUSTAR OS PESOS
        for k=2:length(w)
            w(k) = w(k) + coeff * in(k-1, j) * delta(j);
        end
        w(1) = w(1) + coeff * b * delta(j);

    end
    
	%Plot 
%     x1 = -1:0.1:2;
%     x2 = -w1/w2*x1-w0/w2;    
% 	
% 	figure(1)
% 	plot(in(1,1), in(2,1), s(1,1:2), in(1,2), in(2,2), s(1,3:4), in(1,3), in(2,3), s(1, 5:6), in(1,4), in(2,4), s(1, 7:8));
%     axis([-0.5 1.5 -0.5 1.5]);
%     xlabel('x1')
%     ylabel('x2')
%     
% 	hold on
% 	plot(x1, x2, 'LineWidth', 2)
%     hold off
%     pause(1)

	%Termina o treino se o erro for igual a zero
    if ~any(delta)
        break
    end
    
end

fprintf('********************************************************\n')
fprintf('FIM DO TREINO\n')
fprintf('********************************************************\n\n')

%PARTE 3: TESTE
%Usar os pesos obtidos com o treino
%Fornecer a mesma entrada in
%Guardar os resultados em out_sim
%Se a rede aprendeu correctamente o padrao out_sim = target

fprintf('**********************************\n')
fprintf('A TESTAR O PERCEPTRAO DEPOIS DA APRENDIZAGEM\n')
fprintf('**********************************\n\n')

out_sim = zeros(1,ncol);


    for j=1:ncol
		%COMPLETAR -> SIMULAR A REDE COM OS INPUTS e GUARDAR O RESULTADO DE CADA EXEMPLO EM out_sim
        S = w(1) * b; % w0
        for k=2:length(w)
            S = S + w(k) + in(k-1, j); % K-1 PARA OBTER O x1 caso contrário começava em x2
        end
        if S >= 0
            out_sim(j) = 1;
        else 
			out_sim(j) = 0;
        end    
    end
end

% NO FINAL COMPARAR COM O TARGET


